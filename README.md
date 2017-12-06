


### Major Cost Saving Levers

This write-up will focus on:

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



