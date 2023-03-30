SELECT
"Opportunity","Responsible","FirstName", "ExpectedClosingDate",SUM("Value") AS Value
FROM
"V_MCT_OpportunityItems_v2"
GROUP BY
"Opportunity","Responsible","FirstName", "ExpectedClosingDate"