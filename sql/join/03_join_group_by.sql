-- top 15 kota berdasarkan nett sales
SELECT
    c.kota,
    c.provinsi,
    COUNT(*) AS total_transaksi,
    ROUND(SUM(t.price * (1 - t.discount_percentage)), 2) AS nett_sales,
    ROUND(AVG(t.rating), 2) AS rating_rata_rata
FROM kf_final_transaction t
INNER JOIN kf_kantor_cabang c ON t.branch_id = c.branch_id
GROUP BY c.kota, c.provinsi
ORDER BY nett_sales DESC
LIMIT 15;

-- best selling products based on net sales
SELECT
    p.product_id,
    p.product_name,
    p.product_category,
    COUNT(*) AS total_transaksi,
    ROUND(SUM(t.price * (1 - t.discount_percentage)), 2) AS nett_sales
FROM kf_final_transaction t
INNER JOIN kf_product p ON t.product_id = p.product_id
GROUP BY p.product_id, p.product_name, p.product_category
LIMIT 15;

-- Performance by branch category
SELECT
    c.branch_category,
    COUNT(*) as total_transaksi,
    COUNT(DISTINCT t.branch_id) AS jumlah cabang,
    ROUND(SUM(t.price * (1 - t.discount_percentage)), 2) AS nett_sales,
    ROUND(AVG(t.rating), 2) AS rating_rata_rata
FROM kf_final_transaction t
INNER JOIN kf_kantor_cabang c ON t.branch_id = c.branch_id
GROUP BY c.branch_category
ORDER BY nett_sales DESC;