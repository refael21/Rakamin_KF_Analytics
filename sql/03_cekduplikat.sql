SELECT 'kf_final_transaction' AS tabel, transaction_id AS id, COUNT(*) AS jumlah
FROM kf_final_transaction
GROUP BY transaction_id
HAVING COUNT(*) > 1

UNION ALL 

SELECT 'kf_inventory', Inventory_id, COUNT(*)
FROM kf_inventory
GROUP BY Inventory_ID
HAVING COUNT(*) > 1

UNION ALL

SELECT 'kf_kantor_cabang', branch_id, COUNT(*)
FROM kf_kantor_cabang
GROUP BY branch_id
HAVING COUNT(*) > 1

UNION ALL

SELECT 'kf_product', product_id, COUNT(*)
FROM kf_product
GROUP BY product_id
HAVING COUNT(*) > 1;