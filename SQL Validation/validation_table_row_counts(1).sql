/* Tables counts for DW */

use Contoso_Retail_BI_Project
go
SELECT
       db_name() as db
     , OBJECT_NAME(OBJECT_ID) as TableName
     , format(st.row_count, 'N0', 'en-us')  as TableRows
FROM sys.dm_db_partition_stats st
WHERE index_id < 2
--and   st.row_count > 0
and   OBJECT_NAME(OBJECT_ID) not like 'sys%'
ORDER BY OBJECT_NAME(OBJECT_ID)
GO 
