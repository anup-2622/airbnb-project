{{
  config(
    materialized = 'view',
    )
}}

SELECT * FROM AIRBNB_PROJECT.STAGING.LISTINGS