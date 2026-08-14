-- Mengambil variabel transaction_id, date, customer_name, price, dan discount_percentage
-- dari tabel kf_final_transaction dengan kondisi dimana discount_percentage lebih besar dari 13 %
-- dan harga lebih besar dari 100 ribu, dengan pengambilan limit hanya 5 baris data.
SELECT transaction_id, date, customer_name, price, discount_percentage
FROM kf_final_transaction
WHERE discount_percentage > 0.13 AND price > 100000
LIMIT 5;

-- Mengambil variabel transaction_id, date, customer_name, price, dan discount_percentage
-- dari tabel kf_final_transaction dengan kondisi dimana harga lebih besar dari 150 ribu,
-- diurutkan dari harga tertinggi ke harga terendah, dengan pengambilan limit hanya 5 baris data.
SELECT transaction_id, date, customer_name, price, discount_percentage
FROM kf_final_transaction
WHERE price > 150000
ORDER BY price DESC
LIMIT 5;

-- Mengambil variabel product_category dari tabel data kf_product dengan kondisi kategori berdasarkan
-- M01AE
SELECT * FROM kf_product
WHERE product_category = 'M01AE';