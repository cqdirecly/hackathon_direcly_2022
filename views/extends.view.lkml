view: extends {
  extension: required

# ------------Filter-----------

  filter: previous_period_filter {
    view_label: "@{comparison_previous_period}"
    type: date
    label: "Filter for previous periods"
    description: "Use this filter for pre-analysis"
  }

  dimension: previous_period {
    label: "Period"
    view_label: "@{comparison_previous_period}"
    description: "The reporting period as selected by the previous period filter"
    type: string
    sql:
         case
            when {% date_start previous_period_filter %} is not null and {% date_end previous_period_filter %} is not null
             then
               case
                 when cast(${date_date} as TIMESTAMP) >= {% date_start previous_period_filter %}
                  and cast(${date_date} as TIMESTAMP) <= timestamp_add({% date_end previous_period_filter %}, INTERVAL -1 YEAR)
                      then "This Period"

      when cast(${date_date} as TIMESTAMP) >=
      TIMESTAMP_ADD(TIMESTAMP_ADD({% date_start previous_period_filter %}, INTERVAL -1 DAY),
      INTERVAL -1*date_diff(DATE({% date_end previous_period_filter %}), DATE({% date_start previous_period_filter %}),DAY) + 1 YEAR)
      and
      cast(${date_date} as TIMESTAMP) <= timestamp_add({% date_start previous_period_filter %}, INTERVAL -1 DAY)
      then "Previous Period"
      end
      end
      ;;
  }

}
