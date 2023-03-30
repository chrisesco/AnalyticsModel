SELECT 
SUM("ValueMissed")
FROM (
    select 
    "Opportunity",sum("Value") as "ValueMissed","ID","Name"
    --"Status"
    from
    "V_MCT_OpportunityItems_v2"
    WHERE "Status" = 'Lost'
    GROUP BY "Opportunity","ID","Name"
) AS DataSource