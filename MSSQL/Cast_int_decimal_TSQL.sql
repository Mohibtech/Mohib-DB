DECLARE @CNTNULL decimal(10,2);
DECLARE @TOTCNT decimal(10,2);
DECLARE @TotPercent decimal(10,2);

select @TOTCNT = count(*)
from [dbo].[HeaderDiscounts];

select @CNTNULL = count(*)
from [dbo].[HeaderDiscounts]
where PromotionID = '' --is null

set @TotPercent = @CNTNULL/@TOTCNT * 100 ;
select @TOTCNT "TotalCount", @CNTNULL "NullCount" , @TotPercent as "Total Percentage"

OR 

DECLARE @CNTNULL int;
DECLARE @TOTCNT int;
DECLARE @TotPercent decimal(10,2);

select @TOTCNT = count(*)
from [dbo].[HeaderDiscounts];

select @CNTNULL = count(*)
from [dbo].[HeaderDiscounts]
where PromotionID = '' --is null

set @TotPercent = cast(@CNTNULL as decimal(10,2))/cast(@TOTCNT as decimal(10,2)) * 100 ;
select @TOTCNT "TotalCount", @CNTNULL "NullCount" , @TotPercent as "Total Percentage"
