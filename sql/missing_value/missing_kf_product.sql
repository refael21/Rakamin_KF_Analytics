SELECT
    'kf_product' AS tabel,
    COUNT(*) AS jumlah,

    SUM(CASE WHEN product_id IS NULL THEN 1 ELSE 0 END) AS missing_product_id,
    SUM(CASE WHEN product_name IS NULL THEN 1 ELSE 0 END) AS missing_product_name,
    SUM(CASE WHEN product_category IS NULL THEN 1 ELSE 0 END) AS missing_product_category,
    SUM(CASE WHEN price IS NULL THEN 1 ELSE 0 END) AS missing_price
FROM kf_product;