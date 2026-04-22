use phonepe_db;

## Decoding Transaction Dynamics on PhonePe

#  Decoding Transaction Dynamics on PhonePe
select 
	Year,
	SUM(Transaction_amount) as Total_Amount
from aggregated_transaction
group by Year
order by Year;


# Which transaction type is most used?
SELECT 
	Transaction_type, 
    SUM(Transaction_count) AS Total_Count
FROM aggregated_transaction
GROUP BY Transaction_type
ORDER BY Total_Count DESC;

# Which states use PhonePe the most?
SELECT 
	State, 
    SUM(Transaction_amount) AS Total_Amount
FROM aggregated_transaction
GROUP BY State
ORDER BY Total_Amount DESC
LIMIT 10;
