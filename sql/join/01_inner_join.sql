-- Transaksi + nama cabang + kota
SELECT
    t.transaction_id,
    t.date,
    t.price,
    t.discount_percentage,
    c.branch_name,
    c.kota,
    c.provinsi
FROM kf_final_transaction t
INNER JOIN kf_kantor_cabang c
    ON t.branch_id = c.branch_id
LIMIT 20;

-- Transaksi + nama produk + kategori
SELECT
    t.transaction_id,
    t.date,
    t.price,
    p.product_name,
    p.product_category
FROM kf_final_transaction t
INNER JOIN kf_product p
    ON t.product_id = p.product_id
LIMIT 20;