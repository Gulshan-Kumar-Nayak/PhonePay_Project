use phonepe_db;

# Transaction Analysis across States and Disctricts.


# Checking, which state used or has more transaction activity of Phon-Pe
SELECT 
	State, 
    SUM(Transaction_amount) AS Total_Amount
FROM aggregated_transaction
GROUP BY State
ORDER BY Total_Amount DESC
LIMIT 10;


# Checking, which District used or has more transaction activity of Phone-Pe
SELECT 
	District, 
    SUM(Amount) AS Total_Amount
FROM map_transaction
GROUP BY District
ORDER BY Total_Amount DESC
LIMIT 10;








