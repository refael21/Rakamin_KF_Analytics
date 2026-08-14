-- Mengambil 10 baris data dari tabel kf_final_transaction 
SELECT * FROM kf_final_transaction
LIMIT 10;

-- Mengambil 10 baris kf_product dari variabel product_id, product_name, dan product_category
SELECT product_id, product_name, product_category
FROM kf_product
LIMIT 10;