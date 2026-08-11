SELECT 'kf_kantor_cabang' AS table_name, COUNT(*) AS total_row FROM kf_kantor_cabang
UNION ALL
SELECT 'kf_product' AS table_name, COUNT(*) AS total_row FROM kf_product
UNION ALL
SELECT 'kf_inventory' AS table_name, COUNT(*) AS total_row FROM kf_inventory
UNION ALL
SELECT 'kf_final_transaction' AS table_name, COUNT(*) AS total_row FROM kf_final_transaction;