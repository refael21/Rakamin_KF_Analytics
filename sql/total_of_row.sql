SELECT 'kf_kantor_cabang' AS tabel, COUNT(*) AS total_row FROM kf_kantor_cabang
UNION ALL
SELECT 'kf_product', COUNT(*)FROM kf_product
UNION ALL
SELECT 'kf_inventory', COUNT(*) FROM kf_inventory
UNION ALL
SELECT 'kf_final_transaction', COUNT(*) FROM kf_final_transaction;