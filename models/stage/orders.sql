{{ config(
    schema= 'STAGE',
    database= 'RAW' 
)}}

SELECT * 
FROM {{ source('RAW_SOURCE', 'ORDERS') }} as O
INNER JOIN {{ source('RAW_SOURCE', 'CUSTOMER') }} as C
on O.O_CUSTKEY = C.C_CUSTKEY
WHERE C.C_NATIONKEY NOT IN (14)