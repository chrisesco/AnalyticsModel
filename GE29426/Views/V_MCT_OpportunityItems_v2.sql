SELECT
  "MCT_OpportunityItems_0"."ItemID",
  "MCT_OpportunityItems_0"."Opportunity",
  "MCT_OpportunityItems_0"."Quantity",
  "MCT_OpportunityItems_0"."Value",
  "MCT_OpportunityItems_0"."Unit",
  "MCT_OpportunityItems_0"."Currency",
  "MCT_OpportunityItems_0"."FactAttr",
  "MCT_OpportunityItems_0"."FactAttrLabel",
  "MCT_OpportunityItems_0"."ItemStatus",
  "MCT_OpportunityItems_0"."ControllingArea",
  "MCT_OpportunityItems_0"."SendingCostCenter",
  "MCT_OpportunityItems_0"."ReceivingCostCenter",
  "OpportunityHDR_2"."SalesOrg",
  "OpportunityHDR_2"."ExpectedClosingDate",
  "OpportunityHDR_2"."Status",
  "OpportunityHDR_2"."Responsible",
  "OpportunityHDR_2"."Customer",
  "MCT_Employees_3"."FirstName",
  "MCT_Employees_3"."MiddleName",
  "MCT_Employees_3"."LastName",
  "MCT_Employees_3"."FullName",
  "MCT_Employees_3"."Gender",
  "MCTProducts_1"."ID",
  "MCT_Employees_3"."Manager",
  "MCTProducts_1"."Name",
  "MCTProducts_1"."ProductCategory",
  "MCTProducts_1"."ProductGroup",
  "MCTProducts_1"."ProductManager"
FROM (("MCT_OpportunityItems" AS "MCT_OpportunityItems_0" 
  LEFT MANY TO ONE JOIN "MCT_Products" AS "MCTProducts_1" 
  ON "MCT_OpportunityItems_0"."Product" = "MCTProducts_1"."ID") 
LEFT MANY TO ONE JOIN ("MCT_Opportunities" AS "OpportunityHDR_2" 
  LEFT MANY TO ONE JOIN "MCT_Employees" AS "MCT_Employees_3" 
  ON "OpportunityHDR_2"."Responsible" = "MCT_Employees_3"."ID") 
ON "MCT_OpportunityItems_0"."Opportunity" = "OpportunityHDR_2"."OpportunityID");