SELECT
     'kf_final_transaction' AS tabel,
     COUNT(*) AS jumlah,

     SUM(CASE WHEN transaction_id IS NULL THEN 1 ELSE 0 END) AS missing_transaction_id,
     SUM(CASE WHEN date IS NULL THEN 1 ELSE 0 END) AS missing_date,
     SUM(CASE WHEN branch_id IS NULL THEN 1 ELSE 0 END) AS missing_branch_id,
     SUM(CASE WHEN customer_name IS NULL THEN 1 ELSE 0 END) AS missing_customer_name,
     SUM(CASE WHEN product_id IS NULL THEN 1 ELSE 0 END) AS missing_product_id,
     SUM(CASE WHEN price IS NULL THEN 1 ELSE 0 END) AS missing_price,
     SUM(CASE WHEN discount_percentage IS NULL THEN 1 ELSE 0 END) AS missing_discount_percentage,
     SUM(CASE WHEN rating IS NULL THEN 1 ELSE 0 END) AS missing_rating
FROM kf_final_transaction;