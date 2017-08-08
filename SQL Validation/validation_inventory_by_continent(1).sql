SELECT
  'FactInventory' as TableName
  ,ContinentCode
 , format(sum(OnHandQuantity),'N0','en-us') as OnHandQuantity
FROM Contoso_Retail_BI_Project.dbo.FactInventory inv
join  Contoso_Retail_BI_Project.dbo.DimStore sto
on inv.StoreKey = sto.StoreKey
join Contoso_Retail_BI_Project.dbo.DimGeography geo 
on sto.GeographyKey = geo.GeographyKey
GROUP BY ContinentCode