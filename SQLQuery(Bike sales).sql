WITH ct as(
SELECT* FROM bike_share_yr_0
UNION 
SELECT* FROM bike_share_yr_1
)

SELECT 
dteday,
season,
a.yr,
hr,
weekday,
rider_type,
riders,
price,
COGS,
riders*price as revenue,
(riders*price) -COGS AS profit
FROM ct as a 
LEFT JOIN cost_table as b 
ON a.yr=b.yr
;

