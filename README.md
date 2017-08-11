*Please note this README provides an overview of the analysis included in this Block, as well as set-up instructions at the bottom for anyone who wants to utilize this Block using an S3 + Athena + Looker pipeline. Athena isn't necessary though, the LookML logic and analysis provided will work for any database or querying engine.*



### Major Cost Saving Levers

Now that we have our data pipeline configured, we can dive into the most popular use-cases for cost savings. In this blog, we’ll focus on:

* Purchasing of Reserved vs On-Demand instances
* Data Transfer costs
* Allocating costs over Users or other Attributes (denoted with resource tags)


#### On-Demand, Spot, and Reserved Instances

Purchasing Reserved Instances vs On-Demand instances is arguably going to be the biggest cost lever for heavy AWS users (Reserved Instances run up to 75% cheaper!). AWS offers three options for purchasing instances, including On-Demand, Spot (variable cost), and Reserved Instances. On-Demand instances allows you to simply pay as you use, Spot instances allow you to bid on spare Amazon EC2 computing capacity, while Reserved Instances allows you to pay for an Instance for a specific, allotted period of time. When purchasing a Reserved Instance, you can also choose to pay all-upfront, partial-upfront, or monthly. The more you pay upfront, the greater the discount.

If your company has been using AWS for some time now, you should have a good sense of your overall instance usage on a per-month or per-day basis. Rather than paying for these instances On-Demand, you should try to forecast the number of instances you’ll need, and reserve them with upfront payments. The total amount of usage with Reserved Instances versus overall usage with all instances is called your coverage ratio. It’s important not to confuse your coverage ratio with your Reserved Instance utilization. Utilization represents the amount of reserved hours that we’re actually used. Don’t worry about exceeding capacity, you can still set-up auto-scaling preferences so that more instances get added whenever your coverage or utilization crosses a certain threshold (we often see a target of 80% for both coverage and utilization among savvy customers).

It’s an iterative process to understand the appropriate number of Reserved Instances to meet your business needs. Once you’ve properly integrated Reserved Instances into your purchasing patterns, the savings can be significant. If your coverage is consistently below 70%, you should seriously consider adjusting your purchase types and opt for more Reserved instances.


#### Data Transfer Costs

One of the great things about AWS data storage, is that it’s incredibly cheap. Most charges often come from moving and processing that data. There are several different prices for transferring data, broken out largely by transfers between regions and availability zones. Transfers between regions are the most costly, followed by transfers between Availability Zones. Transfers within the same region and same availability zone are free unless using elastic or public IP addresses, in which case there is a cost. You can find more detailed information in the AWS Pricing Docs. With this in mind, there are several simple strategies for helping reduce costs here.

First, since costs increase when transferring data between regions, it’s wise to ensure that as many services as possible reside within the same region. The more you can localize services to one specific region, the lower your costs will be. Second, you should maximize the data you’re routing directly within AWS services and IPs. Transfers out to the open Internet are the most costly and least performant mechanisms of data transfers, so it’s best to keep transfers within AWS services. Lastly, data transferred between private IP addresses are cheaper than elastic or public IPs, so utilizing private IPs as much as possible is the most cost-effective strategy.



#### Analysis by Tags

AWS provides the option to apply custom tags to individual resources, so you can allocate costs over whatever customized segment makes the most sense for your business. For a SaaS company that hosts software for customers on AWS, maybe you’d want to tag the size of each customer. The below query uses custom tags to display the reserved, data transfer, and total cost for each AWS service, broken out by tag categories, over the last 30 days. You’ll want to substitute the text highlighted in red with the name of your customer field.


### Setting up Cost and Usage Reports + Athena


#### 1. Setting up S3 and Cost and Usage Reports

First, you’ll want to create a new S3 bucket. Then, you’ll need to enable the Cost and Usage report (AWS provides clear instructions on [how to create this report](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-reports-gettingstarted-turnonreports.html)). Check the boxes to “Include ResourceID” and receive “Hourly” reports. All options are prompted in the report-creation window. The Cost and Usage report dumps CSV files into the specified bucket. As with any AWS service, make sure that you’ve [granted appropriate permissions](http://docs.aws.amazon.com/athena/latest/ug/setting-up.html) for Athena to that bucket. Please note that it can take up to 24 hours for the first file to be delivered to S3 after enabling the report.






#### 2. Configuring the S3 bucket for Athena querying

In addition to the CSV, AWS also creates a JSON manifest file for each report. Athena requires that all of the files in the S3 bucket are in the same format, so we need to get rid of all these manifest files. If you’re looking to get started with Athena quickly, you can simply go into your S3 bucket and delete the manifest file manually, skip the automation described below, and move on to step 3.

If you want to automate the process of removing the manifest file each time a new report is dumped into S3 (recommended, especially as you scale), there are a few additional steps. The folks at Concurrency labs wrote a great overview and set of scripts for this, which you can find in their [Github repo](https://github.com/ConcurrenyLabs/aws-cost-analysis).

These scripts take the data from an input bucket, remove anything unnecessary, and dump it into a new output bucket. We can utilize AWS Lambda to trigger this process whenever new data is dropped into S3, or on a nightly basis, or whatever makes most sense for your use-case, depending on how often you’re querying the data. Please note that enabling the “hourly” report means that data is reported at the hour-level of granularity, not that a new file is generated every hour.

Following these scripts, you’ll notice that we’re adding a date partition field, which isn’t necessary but improves query performance. In addition converting data from CSV to a columnar format like ORC or Parquet improves performance. We can also automate this process using Lambda whenever new data is dropped in our S3 bucket. Amazon Web Services discusses columnar conversion at length, and provides walkthrough examples, in their documentation.

As a long-term solution, best practice is to use compression, partitioning, and conversion.


#### 3. Set up an AWS Athena querying engine

In your AWS console, navigate to the Athena service, and click “Get Started”. Follow the tutorial and set up a new database (we’ve called ours “AWS Optimizer” in this example). Don’t worry about configuring your initial table, per the tutorial instructions. We’ll be creating a new table for cost and usage analysis. Once you walked through the tutorial steps, you’ll be able to access the Athena interface, and can begin running Hive DDL statements to create new tables.

One thing that’s important to note, is that the Cost and Usage CSVs also contain the column headers in their first row, meaning that the column headers would be included in the dataset and any queries. For testing and quick set-up, you can remove this line manually from your first few CSV files. Long-term, you’ll want to use a script to programmatically remove this row each time a new file is dropped in S3 (every few hours typically). We’ve drafted up a sample script for ease of reference, which we run on Lambda. We utilize Lambda’s native ability to invoke the script whenever a new object is dropped in S3.

For Cost and Usage, we recommend using the [DDL statement here](https://github.com/DillonMorrison/aws_cost_and_usage/blob/master/Hive_DDL). Since our data is in CSV format, we don’t need to use a SerDe, we can simply specify the “separatorChar, quoteChar, and escapeChar”, and the structure of the files (“TEXTFILE”). Note that AWS does have an OpenCSV SerDe as well, if you prefer to use that.

Once you’ve successfully executed the command, you should see a new table named “cost_and_usage” with the below properties. Now we’re ready to start executing queries and running analysis!
