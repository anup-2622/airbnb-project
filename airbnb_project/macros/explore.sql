

SELECT * FROM {{ ref('bronze_hosts') }}

SELECT * FROM {{ ref('silver_listings') }}

SELECT * FROM {{ ref('obt') }}