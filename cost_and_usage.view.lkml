view: cost_and_usage {
  sql_table_name: aws_optimizer.cost_and_usage_raw ;;
  suggestions: no

  dimension: bill_billing_entity {
    type: string
    hidden: yes
    sql: ${TABLE}.bill_billingentity ;;
  }

  dimension: bill_billingperiodenddate {
    type: string
    sql: ${TABLE}.bill_billingperiodenddate ;;
  }

  dimension: bill_billingperiodstartdate {
    type: string
    sql: ${TABLE}.bill_billingperiodstartdate ;;
  }

  dimension: billtype {
    label: "Type"
    view_label: "Billing Info"
    type: string
    sql: ${TABLE}.bill_billtype ;;
  }

  dimension: bill_invoiceid {
    type: string
    hidden: yes
    sql: ${TABLE}.bill_invoiceid ;;
  }

  dimension: bill_payeraccountid {
    type: string
    hidden: yes
    sql: ${TABLE}.bill_payeraccountid ;;
  }

  dimension: identity_lineitemid {
    type: string
    hidden: yes
    sql: ${TABLE}.identity_lineitemid ;;
  }

  dimension: identity_timeinterval {
    type: string
    hidden: yes
    sql: ${TABLE}.identity_timeinterval ;;
  }

  dimension: lineitem_availabilityzone {
    type: string
    hidden: yes
    sql: ${TABLE}.lineitem_availabilityzone ;;
  }

  dimension: lineitem_blendedcost {
    hidden: yes
    type: number
    sql: ${TABLE}.lineitem_blendedcost ;;
  }

  dimension: blended_rate {
    view_label: "Line Items (Individual Charges)"
    description: "The rate applied to this line item for a consolidated billing account in an organization."
    type: number
    sql: ${TABLE}.lineitem_blendedrate ;;
  }

  dimension: lineitem_currencycode {
    label: "Currency Code"
    view_label: "Line Items (Individual Charges)"
    type: string
    sql: ${TABLE}.lineitem_currencycode ;;
  }

  dimension: description {
    view_label: "Line Items (Individual Charges)"
    description: "A description of the pricing tier covered by this line item"
    type: string
    sql: ${TABLE}.lineitem_lineitemdescription ;;
  }

  dimension: type {
    view_label: "Line Items (Individual Charges)"
    description: "The type of charge covered by this line item. Fee is one-time RI expense. RI Fee is recurring RI expense"
    type: string
    sql: ${TABLE}.lineitem_lineitemtype ;;
  }

  dimension: normalization_factor {
    view_label: "Line Items (Individual Charges)"
    description: "Degree of instance size flexibility provided by RIs"
    type: number
    sql: ${TABLE}.lineitem_normalizationfactor ;;
  }

  dimension: lineitem_normalizedusageamount {
    type: number
    sql: ${TABLE}.lineitem_normalizedusageamount ;;
  }

  dimension: line_item_operation {
    label: "Operation"
    view_label: "Line Items (Individual Charges)"
    type: string
    sql: ${TABLE}.lineitem_operation ;;
  }

  dimension: product_code {
    description: "The AWS product/service being used"
    view_label: "Product Info"
    type: string
    sql: ${TABLE}.lineitem_productcode ;;
  }

  dimension: lineitem_resourceid {
    type: string
    hidden: yes
    sql: ${TABLE}.lineitem_resourceid ;;
  }

  dimension: lineitem_taxtype {
    label: "Tax Type"
    view_label: "Line Items (Individual Charges)"
    type: string
    sql: ${TABLE}.lineitem_taxtype ;;
  }

  dimension: lineitem_unblendedcost {
    type: number
    hidden: yes
    sql: ${TABLE}.lineitem_unblendedcost ;;
  }

  dimension: unblended_rate {
    view_label: "Line Items (Individual Charges)"
    description: "The rate that this line item would have been charged for an unconsolidated account."
    type: number
    sql: ${TABLE}.lineitem_unblendedrate ;;
  }

  dimension: lineitem_usageaccountid {
    type: string
    hidden: yes
    sql: ${TABLE}.lineitem_usageaccountid ;;
  }

  dimension: lineitem_usageamount {
    type: number
    hidden: yes
    sql: ${TABLE}.lineitem_usageamount ;;
  }

  dimension: lineitem_usageenddate {
    type: string
    sql: ${TABLE}.lineitem_usageenddate ;;
  }

  dimension: lineitem_usagestartdate {
    type: string
    sql: ${TABLE}.lineitem_usagestartdate ;;
  }

  dimension: lineitem_usagetype {
    label: "Type"
    view_label: "Line Items (Individual Charges)"
    description: "The type of usage covered by this line item. If you paid for a Reserved Instance, the report has one line that shows the monthly committed cost, and multiple lines that show a charge of 0."
    type: string
    sql: ${TABLE}.lineitem_usagetype ;;
  }

  dimension: product_accountassistance {
    label: "Account Assistance"
    view_label: "Product Info"
    type: string
    sql: ${TABLE}.product_accountassistance ;;
  }

  dimension: product_architecturalreview {
    label: "Architecture Review"
    view_label: "Product Info"
    type: string
    sql: ${TABLE}.product_architecturalreview ;;
  }

  dimension: product_architecturesupport {
    label: "Architecture Support"
    view_label: "Product Info"
    type: string
    sql: ${TABLE}.product_architecturesupport ;;
  }

  dimension: product_availability {
    label: "Availability"
    view_label: "Product Info"
    type: string
    sql: ${TABLE}.product_availability ;;
  }

  dimension: product_bestpractices {
    type: string
    sql: ${TABLE}.product_bestpractices ;;
  }

  dimension: product_cacheengine {
    type: string
    sql: ${TABLE}.product_cacheengine ;;
  }

  dimension: product_caseseverityresponsetimes {
    type: string
    sql: ${TABLE}.product_caseseverityresponsetimes ;;
  }

  dimension: product_clockspeed {
    type: string
    sql: ${TABLE}.product_clockspeed ;;
  }

  dimension: product_currentgeneration {
    type: string
    sql: ${TABLE}.product_currentgeneration ;;
  }

  dimension: product_customerserviceandcommunities {
    type: string
    sql: ${TABLE}.product_customerserviceandcommunities ;;
  }

  dimension: product_databaseedition {
    label: "Database Edition"
    view_label: "Product Info"
    type: string
    sql: ${TABLE}.product_databaseedition ;;
  }

  dimension: product_databaseengine {
    label: "Database Engine"
    view_label: "Product Info"
    type: string
    sql: ${TABLE}.product_databaseengine ;;
  }

  dimension: product_dedicatedebsthroughput {
    label: "Dedicated EBS Throughput"
    view_label: "Product Info"
    type: string
    sql: ${TABLE}.product_dedicatedebsthroughput ;;
  }

  dimension: product_deploymentoption {
    view_label: "Product Info"
    type: string
    sql: ${TABLE}.product_deploymentoption ;;
  }

  dimension: product_description {
    label: "Description"
    view_label: "Product Info"
    type: string
    sql: ${TABLE}.product_description ;;
  }

  dimension: product_durability {
    label: "Durability"
    view_label: "Product Info"
    type: string
    sql: ${TABLE}.product_durability ;;
  }

  dimension: product_ebsoptimized {
    type: string
    sql: ${TABLE}.product_ebsoptimized ;;
  }

  dimension: product_ecu {
    type: string
    sql: ${TABLE}.product_ecu ;;
  }

  dimension: product_endpointtype {
    type: string
    sql: ${TABLE}.product_endpointtype ;;
  }

  dimension: product_enginecode {
    type: string
    sql: ${TABLE}.product_enginecode ;;
  }

  dimension: product_enhancednetworkingsupported {
    type: string
    sql: ${TABLE}.product_enhancednetworkingsupported ;;
  }

  dimension: product_executionfrequency {
    type: string
    sql: ${TABLE}.product_executionfrequency ;;
  }

  dimension: product_executionlocation {
    type: string
    sql: ${TABLE}.product_executionlocation ;;
  }

  dimension: product_feecode {
    type: string
    sql: ${TABLE}.product_feecode ;;
  }

  dimension: product_feedescription {
    type: string
    sql: ${TABLE}.product_feedescription ;;
  }

  dimension: product_freequerytypes {
    type: string
    sql: ${TABLE}.product_freequerytypes ;;
  }

  dimension: product_freetrial {
    type: string
    sql: ${TABLE}.product_freetrial ;;
  }

  dimension: product_frequencymode {
    type: string
    sql: ${TABLE}.product_frequencymode ;;
  }

  dimension: product_fromlocation {
    type: string
    sql: ${TABLE}.product_fromlocation ;;
  }

  dimension: product_fromlocationtype {
    type: string
    sql: ${TABLE}.product_fromlocationtype ;;
  }

  dimension: product_group {
    type: string
    sql: ${TABLE}.product_group ;;
  }

  dimension: product_groupdescription {
    type: string
    sql: ${TABLE}.product_groupdescription ;;
  }

  dimension: product_includedservices {
    type: string
    sql: ${TABLE}.product_includedservices ;;
  }

  dimension: product_instancefamily {
    type: string
    sql: ${TABLE}.product_instancefamily ;;
  }

  dimension: product_instancetype {
    type: string
    sql: ${TABLE}.product_instancetype ;;
  }

  dimension: product_io {
    type: string
    sql: ${TABLE}.product_io ;;
  }

  dimension: product_launchsupport {
    type: string
    sql: ${TABLE}.product_launchsupport ;;
  }

  dimension: product_licensemodel {
    type: string
    sql: ${TABLE}.product_licensemodel ;;
  }

  dimension: product_location {
    type: string
    sql: ${TABLE}.product_location ;;
  }

  dimension: product_locationtype {
    type: string
    sql: ${TABLE}.product_locationtype ;;
  }

  dimension: product_maximumstoragevolume {
    type: string
    sql: ${TABLE}.product_maximumstoragevolume ;;
  }

  dimension: product_maxiopsburstperformance {
    type: string
    sql: ${TABLE}.product_maxiopsburstperformance ;;
  }

  dimension: product_maxiopsvolume {
    type: string
    sql: ${TABLE}.product_maxiopsvolume ;;
  }

  dimension: product_maxthroughputvolume {
    type: string
    sql: ${TABLE}.product_maxthroughputvolume ;;
  }

  dimension: product_maxvolumesize {
    type: string
    sql: ${TABLE}.product_maxvolumesize ;;
  }

  dimension: product_memory {
    type: string
    sql: ${TABLE}.product_memory ;;
  }

  dimension: product_messagedeliveryfrequency {
    type: string
    sql: ${TABLE}.product_messagedeliveryfrequency ;;
  }

  dimension: product_messagedeliveryorder {
    type: string
    sql: ${TABLE}.product_messagedeliveryorder ;;
  }

  dimension: product_minimumstoragevolume {
    type: string
    sql: ${TABLE}.product_minimumstoragevolume ;;
  }

  dimension: product_minvolumesize {
    type: string
    sql: ${TABLE}.product_minvolumesize ;;
  }

  dimension: product_networkperformance {
    type: string
    sql: ${TABLE}.product_networkperformance ;;
  }

  dimension: product_operatingsystem {
    type: string
    sql: ${TABLE}.product_operatingsystem ;;
  }

  dimension: product_operation {
    label: "Operation"
    view_label: "Product Info"
    type: string
    sql: ${TABLE}.product_operation ;;
  }

  dimension: product_operationssupport {
    type: string
    sql: ${TABLE}.product_operationssupport ;;
  }

  dimension: product_physicalprocessor {
    type: string
    sql: ${TABLE}.product_physicalprocessor ;;
  }

  dimension: product_preinstalledsw {
    type: string
    sql: ${TABLE}.product_preinstalledsw ;;
  }

  dimension: product_proactiveguidance {
    type: string
    sql: ${TABLE}.product_proactiveguidance ;;
  }

  dimension: product_processorarchitecture {
    type: string
    sql: ${TABLE}.product_processorarchitecture ;;
  }

  dimension: product_processorfeatures {
    type: string
    sql: ${TABLE}.product_processorfeatures ;;
  }

  dimension: productfamily {
    label: "Family"
    view_label: "Product Info"
    type: string
    sql: ${TABLE}.product_productfamily ;;
  }

  dimension: product_productname {
    type: string
    sql: ${TABLE}.product_productname ;;
  }

  dimension: product_programmaticcasemanagement {
    type: string
    sql: ${TABLE}.product_programmaticcasemanagement ;;
  }

  dimension: product_provisioned {
    type: string
    sql: ${TABLE}.product_provisioned ;;
  }

  dimension: product_queuetype {
    type: string
    sql: ${TABLE}.product_queuetype ;;
  }

  dimension: product_requestdescription {
    type: string
    sql: ${TABLE}.product_requestdescription ;;
  }

  dimension: product_requesttype {
    type: string
    sql: ${TABLE}.product_requesttype ;;
  }

  dimension: product_routingtarget {
    type: string
    sql: ${TABLE}.product_routingtarget ;;
  }

  dimension: product_routingtype {
    type: string
    sql: ${TABLE}.product_routingtype ;;
  }

  dimension: product_servicecode {
    type: string
    sql: ${TABLE}.product_servicecode ;;
  }

  dimension: product_sku {
    type: string
    sql: ${TABLE}.product_sku ;;
  }

  dimension: product_softwaretype {
    type: string
    sql: ${TABLE}.product_softwaretype ;;
  }

  dimension: product_storage {
    type: string
    sql: ${TABLE}.product_storage ;;
  }

  dimension: product_storageclass {
    type: string
    sql: ${TABLE}.product_storageclass ;;
  }

  dimension: product_storagemedia {
    type: string
    sql: ${TABLE}.product_storagemedia ;;
  }

  dimension: product_technicalsupport {
    type: string
    sql: ${TABLE}.product_technicalsupport ;;
  }

  dimension: product_tenancy {
    type: string
    sql: ${TABLE}.product_tenancy ;;
  }

  dimension: product_thirdpartysoftwaresupport {
    type: string
    sql: ${TABLE}.product_thirdpartysoftwaresupport ;;
  }

  dimension: product_tolocation {
    type: string
    sql: ${TABLE}.product_tolocation ;;
  }

  dimension: product_tolocationtype {
    type: string
    sql: ${TABLE}.product_tolocationtype ;;
  }

  dimension: product_training {
    type: string
    sql: ${TABLE}.product_training ;;
  }

  dimension: product_transfertype {
    type: string
    sql: ${TABLE}.product_transfertype ;;
  }

  dimension: product_usagefamily {
    type: string
    sql: ${TABLE}.product_usagefamily ;;
  }

  dimension: product_usagetype {
    type: string
    sql: ${TABLE}.product_usagetype ;;
  }

  dimension: product_vcpu {
    type: string
    sql: ${TABLE}.product_vcpu ;;
  }

  dimension: product_version {
    type: string
    sql: ${TABLE}.product_version ;;
  }

  dimension: product_volumetype {
    type: string
    sql: ${TABLE}.product_volumetype ;;
  }

  dimension: product_whocanopencases {
    type: string
    sql: ${TABLE}.product_whocanopencases ;;
  }

  dimension: pricing_leasecontractlength {
    type: string
    sql: ${TABLE}.pricing_leasecontractlength ;;
  }

  dimension: pricing_offeringclass {
    type: string
    sql: ${TABLE}.product_storageclass ;;
  }

  dimension: pricing_purchaseoption {
    type: string
    sql: ${TABLE}.pricing_purchaseoption ;;
  }

  dimension: pricing_publicondemandcost {
    type: string
    sql: ${TABLE}.pricing_publicondemandcost ;;
  }

  dimension: pricing_publicondemandrate {
    type: string
    sql: ${TABLE}.pricing_publicondemandrate ;;
  }

  dimension: pricing_term {
    type: string
    sql: ${TABLE}.pricing_term ;;
  }

  dimension: pricing_unit {
    type: string
    sql: ${TABLE}.pricing_unit ;;
  }

  dimension: reservation_availabilityzone {
    type: string
    sql: ${TABLE}.reservation_availabilityzone ;;
  }

  dimension: reservation_unitsperreservation {
    type: string
    hidden: yes
    sql: ${TABLE}.reservation_normalizedunitsperreservation ;;
  }

  dimension: reservation_numberofreservations {
    type: number
    hidden: yes
    sql: ${TABLE}.reservation_numberofreservations ;;
  }

  dimension: reservation_arn {
    view_label: "Reserved Units"
    description: "When an RI benefit discount is applied to a matching line item of usage, the ARN value in the reservation/ReservationARN column for the initial upfront fees and recurring monthly charges matches the ARN value in the discounted usage line items."
    type: string
    sql: ${TABLE}.reservation_reservationarn ;;
  }

  dimension: reservation_totalreservednormalizedunits {
    hidden: yes
    type: string
    sql: ${TABLE}.reservation_totalreservednormalizedunits ;;
  }

### SHOULD WORK, NO VALUES COMING THROUGH IN THE EXPORT
  dimension: reservation_totalreservedunits {
    description: "The total number of total number of hours across all reserved instances in the subscription."
    type: number
    hidden: yes
    sql: ${TABLE}.reservation_totalreservedunits ;;
  }

### FIX SO WE'RE NOT AGGREGATING OVER MEASURES
#   dimension: reservation_totalreservedunits {
#     description: "The total number of total number of hours across all reserved instances in the subscription."
#     type: number
#     hidden: yes
#     sql:(1.0 * ${reservation_numberofreservations}) * (1.0 * ${reservation_unitsperreservation}) ;;
#   }

  dimension: resourcetags_username {
    type: string
    sql: ${TABLE}.resourcetags_username ;;
  }

  dimension: resourcetags_usercostcategory {
    type: string
    sql: ${TABLE}.resourcetags_usercostcategory ;;
  }

  measure: count {
    type: count
    drill_fields: [product_productname]
  }



  ### LINE ITEM AGGREGATIONS ###

  measure: total_unblended_cost {
    view_label: "Line Items (Individual Charges)"
    description: "The cost of all aggregated line items after tiered pricing and discounted usage have been processed."
    type: sum
    sql: ${lineitem_unblendedcost} ;;
  }

  measure: average_unblended_rate {
    view_label: "Line Items (Individual Charges)"
    description: "The average cost of all aggregated line items after tiered pricing and discounted usage have been processed."
    type: average
    sql: ${unblended_rate} ;;
  }

  measure: total_blended_cost {
    view_label: "Line Items (Individual Charges)"
    description: "How much all aggregated line items are charged to a consolidated billing account in an organization"
    type: sum
    sql: ${lineitem_blendedcost} ;;
  }

  measure: average_blended_rate {
    view_label: "Line Items (Individual Charges)"
    description: "The average rate applied to all aggregated line items for a consolidated billing account in an organization."
    type: average
    sql: ${blended_rate} ;;
  }

  measure: total_usage_amount {
    view_label: "Line Items (Individual Charges)"
    description: "The amount of usage incurred by the customer. For all reserved units, use the Total Reserved Units column instead."
    type: sum
    sql: ${lineitem_usageamount} ;;
  }


  ### PRODUCT SPECIFIC COST MEASURES ###

  measure: EC2_usage_amount {
    label: "EC2 Usage Amount"
    view_label: "Product Info"
    type: sum
    sql: ${lineitem_usageamount} ;;
    filters: {
      field: product_code
      value: "AmazonEC2"
    }
  }

  measure: cloudfront_usage_amount {
    view_label: "Product Info"
    type: sum
    sql: ${lineitem_usageamount} ;;
    filters: {
      field: product_code
      value: "AmazonCloudFront"
    }
  }

  measure: cloudtrail_usage_amount {
    view_label: "Product Info"
    type: sum
    sql: ${lineitem_usageamount} ;;
    filters: {
      field: product_code
      value: "AWSCloudTrail"
    }
  }
  measure: S3_usage_amount {
    view_label: "Product Info"
    type: sum
    sql: ${lineitem_usageamount} ;;
    filters: {
      field: product_code
      value: "AmazonS3"
    }
  }

  measure: redshift_usage_amount {
    view_label: "Product Info"
    type: sum
    sql: ${lineitem_usageamount} ;;
    filters: {
      field: product_code
      value: "AmazonRedshift"
    }
  }

  measure: rds_usage_amount {
    label: "RDS Usage Amount"
    view_label: "Product Info"
    type: sum
    sql: ${lineitem_usageamount} ;;
    filters: {
      field: product_code
      value: "AmazonRDS"
    }
  }


  ### RESERVED UNIT AGGREGATIONS ###

  measure: number_of_reservations {
    view_label: "Reserved Units"
    description: "The number of reservations covered by this subscription. For example, one Reserved Instance (RI) subscription may have four associated RI reservations."
    type: sum
    sql: ${reservation_numberofreservations} ;;
  }


### SHOULD WORK, NO VALUES COMING THROUGH IN THE EXPORT
#   measure: total_reserved_units_usage {
#     label: "Total Reserved Unit Usage (Hours Used)"
#     view_label: "Reserved Units"
#     description: "The total number of hours across all reserved instances in the subscription."
#     type: sum
#     sql: ${reservation_totalreservedunits} ;;
#   }

### UNTIL DISCREPENCY IS RESOLVED, USING A MANUAL CALCULATION
  measure: total_reserved_units_usage {
    label: "Total Reserved Unit Usage (Hours Used)"
    view_label: "Reserved Units"
    description: "The total number of hours across all reserved instances in the subscription."
    type: number
    sql: COALESCE(SUM(cost_and_usage_raw.reservation_numberofreservations),0) * COALESCE(SUM(cost_and_usage_raw.reservation_normalizedunitsperreservation),0 ) ;;
  }

  measure: total_normalized_reserved_units {
    view_label: "Reserved Units"
    description: "The value for Usage Amount multiplied by the value for Normalization Factor"
    type: sum
    sql: ${reservation_totalreservednormalizedunits} ;;
  }

  measure: units_per_reservation {
    label: "Units per Reservation (Hours Reserved)"
    view_label: "Reserved Units"
    description: "The number of usage units reserved by a single reservation in a given subscription, such as how many hours a single Amazon EC2 RI has reserved."
    type: sum
    sql: ${reservation_unitsperreservation} ;;
  }








}
