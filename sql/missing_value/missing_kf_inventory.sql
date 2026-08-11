SELECT
    'kf_inventory' AS tabel,
    COUNT(*) AS jumlah,

    SUM(CASE WHEN Inventory_id IS NULL THEN 1 ELSE 0 END) AS missing_Inventory_id,
    SUM(CASE WHEN branch_id IS NULL THEN 1 ELSE 0 END) AS missing_branch_id,
    SUM(CASE WHEN product_id IS NULL THEN 1 ELSE 0 END) AS missing_product_id,
    SUM(CASE WHEN product_name IS NULL THEN 1 ELSE 0 END) AS missing_product_name,
    SUM(CASE WHEN opname_stock IS NULL THEN 1 ELSE 0 END) AS missing_opname_stock
FROM kf_inventory;