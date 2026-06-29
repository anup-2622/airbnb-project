
{# Meta data driven pipeline for OBT #}
{%
    set configs = [
        {
            "table":'AIRBNB_PROJECT.GOLD.OBT',
            "columns":"gold_obt.BOOKING_ID ,  gold_obt.TOTAL_BOOKING_AMOUNT, gold_obt.LISTING_ID ,gold_obt.ACCOMMODATES , gold_obt.BEDROOMS, gold_obt.BATHROOMS, gold_obt.PRICE_PER_NIGHT , gold_obt.HOST_ID, gold_obt.RESPONSE_RATE",
            "alias":"gold_obt"
        },
        {
            "table":'AIRBNB_PROJECT.GOLD.DIM_LISTINGS',
            "columns":"",
            "alias":"dim_listings",
            "join_condition": "gold_obt.listing_id = dim_listings.listing_id"
        }
    ,
        {
            "table":'AIRBNB_PROJECT.GOLD.DIM_HOSTS',
            "columns":"",
            "alias":"dim_hosts",
            "join_condition": "gold_obt.HOST_ID = dim_hosts.HOST_ID"
        }
    ]

%}

SELECT

     {{configs[0]['columns']}} 
FROM 

   {% for config in configs %}
    {% if loop.first %}
        {{ config['table']}} as  {{config['alias']}}
    {% else %}
        LEFT JOIN {{ config['table'] }} AS {{config['alias']}}
         on {{config['join_condition']}} 
    {% endif %}

    {% endfor %}