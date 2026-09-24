-- Sales summary by branch
SELECT
    branch_id,
    COUNT(*) AS total_transaksi,
    ROUND(AVG(price), 2) AS rata_rata_harga,
    ROUND(AVG(discount_percentage), 4) AS rata_rata_diskon,
    ROUND(AVG(rating), 2) AS rata_rata_rating,
    MIN(price) AS harga_terendah,
    MAX(price) AS harga_tertinggi
FROM kf_final_transaction
GROUP BY branch_id
ORDER BY total_transaksi DESC
LIMIT 15;

-- Category summary by product category
SELECT
    product_category,
    COUNT(*) AS total_transaksi,
    ROUND(AVG(price), 2) AS rata_rata_harga,
    MIN(price) AS harga_minimal,
    MAX(price) AS harga_maksimal
FROM kf_product
GROUP BY product_category
ORDER BY rata_rata_harga DESC;