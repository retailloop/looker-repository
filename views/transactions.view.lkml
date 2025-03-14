# The name of this view in Looker is "Transactions"
view: transactions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.transactions ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called " ID" in Explore.

  dimension: _id {
    type: string
    sql: ${TABLE}."_id" ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}."amount" ;;
  }

  dimension: authorization_code {
    type: string
    sql: ${TABLE}."authorizationCode" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."createdAt" ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}."currency" ;;
  }

  dimension: customer_email {
    type: string
    sql: ${TABLE}."customerEmail" ;;
  }

  dimension: fee_amount {
    type: number
    sql: ${TABLE}."feeAmount" ;;
  }

  dimension: from_balance_after_available {
    type: number
    sql: ${TABLE}."fromBalanceAfterAvailable" ;;
  }

  dimension: from_balance_after_ledger {
    type: number
    sql: ${TABLE}."fromBalanceAfterLedger" ;;
  }

  dimension: gateway_reference {
    type: string
    sql: ${TABLE}."gatewayReference" ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: is_recurrent {
    type: yesno
    sql: ${TABLE}."isRecurrent" ;;
  }

  dimension: merchant_id {
    type: string
    sql: ${TABLE}."merchantId" ;;
  }

  dimension: narration {
    type: string
    sql: ${TABLE}."narration" ;;
  }

  dimension: payment_code {
    type: string
    sql: ${TABLE}."paymentCode" ;;
  }

  dimension: payment_partner_id {
    type: string
    sql: ${TABLE}."paymentPartnerId" ;;
  }

  dimension: post_process {
    type: string
    sql: ${TABLE}."postProcess" ;;
  }

  dimension: recipient {
    type: string
    sql: ${TABLE}."recipient" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: to_balance_after_available {
    type: number
    sql: ${TABLE}."toBalanceAfterAvailable" ;;
  }

  dimension: to_balance_after_ledger {
    type: number
    sql: ${TABLE}."toBalanceAfterLedger" ;;
  }

  dimension: trans_type {
    type: string
    sql: ${TABLE}."transType" ;;
  }

  dimension: transaction_reference {
    type: string
    sql: ${TABLE}."transactionReference" ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."updatedAt" ;;
  }

  dimension: user_transaction_reference {
    type: string
    sql: ${TABLE}."userTransactionReference" ;;
  }
  measure: count {
    type: count
  }
}
