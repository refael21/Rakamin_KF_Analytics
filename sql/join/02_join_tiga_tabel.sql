-- Complete Transaction: cabang + produk
SELECT
    t.transaction_id,
    t.date,
    c.branch_name,
    c.kota,
    c.provinsi,
    p.product_name,
    p.product_category,
    t.price,
    t.discount_percentage,
    ROUND(t.price * (1 - t.discount_percentage), 2) AS nett_price,
    t.rating
FROM kf_final_transaction t
INNER JOIN kf_kantor_cabang c ON t.branch_id = c.branch_id
INNER JOIN kf_product p ON t.product_id = p.product_id
LIMIT 20;