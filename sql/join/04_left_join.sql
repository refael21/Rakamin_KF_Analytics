-- Products that never appear in transactions
SELECT
    p.product_id,
    p.product_name,
    p.product_category,
    p.price
FROM kf_product p
LEFT JOIN kf_final_transaction t ON p.product_id = t.product_id
WHERE t.product_id IS NULL;

-- Branch with no transactions
SELECT
    c.branch_id,
    c.branch_name,
    c.kota,
    c.provinsi
FROM kf_kantor_cabang c
LEFT JOIN kf_final_transaction t ON c.branch_id = t.branch_id
WHERE t.branch_id IS NULL;