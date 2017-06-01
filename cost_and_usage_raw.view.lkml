view: cost_and_usage_raw {
  sql_table_name: aws_optimizer.cost_and_usage_raw ;;
  suggestions: no

  dimension: bill_billingentity {
    type: string
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

  dimension: bill_billtype {
    type: string
    sql: ${TABLE}.bill_billtype ;;
  }

  dimension: bill_invoiceid {
    type: string
    sql: ${TABLE}.bill_invoiceid ;;
  }

  dimension: bill_payeraccountid {
    type: string
    sql: ${TABLE}.bill_payeraccountid ;;
  }

  dimension: identity_lineitemid {
    type: string
    sql: ${TABLE}.identity_lineitemid ;;
  }

  dimension: identity_timeinterval {
    type: string
    sql: ${TABLE}.identity_timeinterval ;;
  }

  dimension: lineitem_availabilityzone {
    type: string
    sql: ${TABLE}.lineitem_availabilityzone ;;
  }

  dimension: lineitem_blendedcost {
    type: number
    sql: ${TABLE}.lineitem_blendedcost ;;
  }

  dimension: lineitem_blendedrate {
    type: number
    sql: ${TABLE}.lineitem_blendedrate ;;
  }

  dimension: lineitem_currencycode {
    type: string
    sql: ${TABLE}.lineitem_currencycode ;;
  }

  dimension: lineitem_lineitemdescription {
    type: string
    sql: ${TABLE}.lineitem_lineitemdescription ;;
  }

  dimension: lineitem_lineitemtype {
    type: string
    sql: ${TABLE}.lineitem_lineitemtype ;;
  }

  dimension: lineitem_normalizationfactor {
    type: number
    sql: ${TABLE}.lineitem_normalizationfactor ;;
  }

  dimension: lineitem_normalizedusageamount {
    type: number
    sql: ${TABLE}.lineitem_normalizedusageamount ;;
  }

  dimension: lineitem_operation {
    type: string
    sql: ${TABLE}.lineitem_operation ;;
  }

  dimension: lineitem_productcode {
    type: string
    sql: ${TABLE}.lineitem_productcode ;;
  }

  dimension: lineitem_resourceid {
    type: string
    sql: ${TABLE}.lineitem_resourceid ;;
  }

  dimension: lineitem_taxtype {
    type: string
    sql: ${TABLE}.lineitem_taxtype ;;
  }

  dimension: lineitem_unblendedcost {
    type: number
    sql: ${TABLE}.lineitem_unblendedcost ;;
  }

  dimension: lineitem_unblendedrate {
    type: number
    sql: ${TABLE}.lineitem_unblendedrate ;;
  }

  dimension: lineitem_usageaccountid {
    type: string
    sql: ${TABLE}.lineitem_usageaccountid ;;
  }

  dimension: lineitem_usageamount {
    type: number
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
    type: string
    sql: ${TABLE}.lineitem_usagetype ;;
  }

  dimension: product_accountassistance {
    type: string
    sql: ${TABLE}.product_accountassistance ;;
  }

  dimension: product_architecturalreview {
    type: string
    sql: ${TABLE}.product_architecturalreview ;;
  }

  dimension: product_architecturesupport {
    type: string
    sql: ${TABLE}.product_architecturesupport ;;
  }

  dimension: product_availability {
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
    type: string
    sql: ${TABLE}.product_databaseedition ;;
  }

  dimension: product_databaseengine {
    type: string
    sql: ${TABLE}.product_databaseengine ;;
  }

  dimension: product_dedicatedebsthroughput {
    type: string
    sql: ${TABLE}.product_dedicatedebsthroughput ;;
  }

  dimension: product_deploymentoption {
    type: string
    sql: ${TABLE}.product_deploymentoption ;;
  }

  dimension: product_description {
    type: string
    sql: ${TABLE}.product_description ;;
  }

  dimension: product_durability {
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

  dimension: product_productfamily {
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

  dimension: reservation_numberofreservations {
    type: number
    sql: ${TABLE}.reservation_numberofreservations ;;
  }

  measure: number_of_reservations {
    type: sum
    sql: ${reservation_numberofreservations} ;;
  }


  measure: count {
    type: count
    drill_fields: [product_productname]
  }

  ### PRODUCT SPECIFIC COST MEASURES ###







}
