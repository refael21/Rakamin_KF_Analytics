-- Only include transaction with a rating of 4 or higher, then summarize by branch
SELECT
    branch_id,
    COUNT(*) AS total_transaksi_rating_tinggi,
    ROUND(AVG(price), 2) AS rata_rata_harga_rating_tinggi,
    ROUND(AVG(rating), 2) AS rating_rata__rata
FROM kf_final_transaction
WHERE rating >= 4
GROUP BY branch_id
HAVING COUNT(*) >= 100
ORDER BY total_transaksi_rating_tinggi DESC
LIMIT 20;

SELECT
    product_id,
    COUNT(*) AS jumlah_transaksi_diskon,
    ROUND(AVG(discount_percentage), 4) AS rata_rata_diskon,
    ROUND(SUM(price * (1 - discount_percentage)), 2) AS nett_sales
FROM kf_final_transaction
WHERE discount_percentage > 0
GROUP BY product_id
HAVING COUNT(*) >= 100
ORDER BY jumlah_transaksi_diskon DESC
LIMIT 20;