-- branches with more than 200 transactions
SELECT
    branch_id,
    COUNT(*) AS total_transaksi
FROM kf_final_transaction
GROUP BY branch_id
HAVING COUNT(*) > 200
ORDER BY total_transaksi DESC;

-- branches with nett sales exceeding 1 billion
SELECT
    branch_id,
    COUNT(*) AS total_Transaksi,
    ROUND(SUM(price * (1 - discount_percentage)), 2) AS nett_sales
FROM kf_final_transaction
GROUP BY branch_id
HAVING SUM(price * (1 - discount_percentage)) > 1000000000
ORDER BY nett_sales DESC;

-- Product categories with an average price above 500.000
SELECT
    product_category,
    COUNT(*) AS jumlah_produk,
    ROUND(AVG(price), 2) AS rata_rata_harga
FROM kf_product
GROUP BY product_category
HAVING AVG(price) > 500000
ORDER BY rata_rata_harga DESC;