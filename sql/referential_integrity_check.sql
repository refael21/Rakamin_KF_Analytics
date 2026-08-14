-- branch_id di transaksi yang tidak ada di master cabang
SELECT COUNT(*) AS orphan_branch_di_transaksi
FROM kf_final_transaction t
LEFT JOIN kf_kantor_cabang c ON t.branch_id = c.branch_id
WHERE c.branch_id IS NULL;

-- product_id di transaksi yang tidak ada di master produk
SELECT COUNT(*) AS orphan_product_di_transaksi 
FROM kf_final_transaction t
LEFT JOIN kf_product p ON t.product_id = p.product_id
WHERE p.product_id IS NULL;

-- branch_id di inventory yang tidak ada di master cabang
SELECT COUNT(*) AS orphan_branch_di_inventory
FROM kf_inventory i
LEFT JOIN kf_kantor_cabang c ON i.branch_id = c.branch_id
WHERE c.branch_id IS NULL;

-- product_id di inventory yang tidak ada di master produk
SELECT COUNT(*) AS orphan_product_di_inventory
FROM kf_inventory i
LEFT JOIN kf_product p ON i.product_id = p.product_id
WHERE p.product_id IS NULL;