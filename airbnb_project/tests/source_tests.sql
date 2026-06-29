{{
  config(
    severity='warn',
    )
}}

SELECT
1

FROM
{{ source('staging', 'bookings') }}
where BOOKING_AMOUNT < 200