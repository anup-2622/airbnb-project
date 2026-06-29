

{% set nights_booked = 1 %}
{% set flag =  10 %}

SELECT * FROM  {{ ref('bronze_bookings') }}
{% if flag == 1 %}
WHERE nights_booked > {{nights_booked}}
{% else %}
WHERE nights_booked =1
{%  endif %} 