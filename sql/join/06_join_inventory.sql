-- total stock by province
SELECT
    c.provinsi,
    COUNT(*) AS jumlah_record_stock,
    SUM(i.opname_stock) AS total_stok,
    ROUND(AVG(i.opname_stock), 2) AS rata_stok
FROM kf_inventory i
INNER JOIN kf_kantor_cabang c ON i.branch_id = c.branch_id
GROUP BY c.provinsi
ORDER BY total_stok DESC;

-- Top 10 product with highest stock (aggregate of all branches)
SELECT
    p.product_id,
    p.product_name,
    p.product_category,
    SUM(i.opname_stock) AS total_stok
FROM kf_inventory i
INNER JOIN kf_product p ON i.product_id = p.product_id
GROUP BY p.product_id, p.product_name, p.product_category
ORDER BY total_stok DESC
LIMIT 10;