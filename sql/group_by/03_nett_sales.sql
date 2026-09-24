-- Nett sales estimation by branch
-- nett = price * (1 - discount_percentage)
SELECT
    branch_id,
    COUNT(*) AS total_transaksi,
    ROUND(AVG(price * (1 - discount_percentage)), 2) AS nett_sales,
    ROUND(AVG(discount_percentage), 4) AS rata_rata_diskon
FROM kf_final_transaction
GROUP BY branch_id
ORDER BY nett_sales DESC
LIMIT 15;