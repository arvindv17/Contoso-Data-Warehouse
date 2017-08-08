SELECT
'FactSales' as TableName
,ContinentCode
 --,DateSK
 --,ChannelKey
 --,StoreKey
 --,ProductKey
 --,PromotionKey
 --,CurrencyKey
-- ,GeographyKey
,format(COUNT(*),'N0','en-us') as Rows
, format(sum(SalesQuantity),'N0','en-us') as SalesQuantity
,format(sum(ReturnQuantity),'N0','en-us') as ReturnQuantity
 ,format(sum(ReturnAmount),'C0','en-us') as ReturnAmount
  ,format(sum(DiscountAmount),'C0','en-us') as DiscountAmount
   , format(sum(TotalCost),'C0','en-us') as TotalCost
    , format(sum(SalesAmount),'C0','en-us') as SalesAmount
FROM Contoso_Retail_BI_Project.dbo.FactSales sales
join Contoso_Retail_BI_Project.dbo.DimGeography geo 
on sales.GeographyKey = geo.GeographyKey
GROUP BY ContinentCode
union
SELECT
'FactOnlineSales' as TableName
,ContinentCode
 --,DateSK
 --,ChannelKey
 --,StoreKey
 --,ProductKey
 --,PromotionKey
 --,CurrencyKey
-- ,GeographyKey
,format(COUNT(*),'N0','en-us') as Rows
, format(sum(SalesQuantity),'N0','en-us') as SalesQuantity
,format(sum(ReturnQuantity),'N0','en-us') as ReturnQuantity
 ,format(sum(ReturnAmount),'C0','en-us') as ReturnAmount
  ,format(sum(DiscountAmount),'C0','en-us') as DiscountAmount
   , format(sum(TotalCost),'C0','en-us') as TotalCost
    , format(sum(SalesAmount),'C0','en-us') as SalesAmount
FROM Contoso_Retail_BI_Project.dbo.FactOnlineSales sales
join Contoso_Retail_BI_Project.dbo.DimGeography geo 
on sales.GeographyKey = geo.GeographyKey
GROUP BY ContinentCode