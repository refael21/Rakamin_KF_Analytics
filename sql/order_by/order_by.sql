-- Mengambil variabel transaction_id, date, price, rating dari tabel data kf_final_transaction,
-- dengan pengambilan data tertinggi ke terendah dengan pengambilan data hanya sebanyak lima baris data saja
SELECT transaction_id, date, price, rating
FROM kf_final_transaction
ORDER BY price DESC
LIMIT 5;

-- Mengambil variabel product_id, product_name, product_category, price dari tabel data kf_product,
-- yang diambil berdasarkan harga terendah dengan limit hanya lima baris data.
SELECT product_id, product_name, product_category, price
FROM kf_product
ORDER BY price ASC
LIMIT 5;

-- Mengambil variabel product_id, product_name, product_category, price dari tabel data kf_product,
-- yang diambil berdasarkan harga tertinggi dengan limit hanya lima baris data.

SELECT product_id, product_name, product_category, price
FROM kf_product
ORDER BY price DESC
LIMIT 5;

-- Mengambil variabel, transaction_id, date, price, rating dari tabel data kf_final_transaction,
-- yang diambil berdasarkan harga terendah dengan limit hanya lima baris data.
SELECT transaction_id, date, price, rating
FROM kf_final_transaction
ORDER BY price ASC
LIMIT 5;

-- Mengambil variabel branch_id, branch_name, kota, provinsi, rating dari tabel data kf_kantor_cabang,
-- yang diambil berdasarkan rating terendah dengan limit hanya lima baris data
SELECT branch_id, branch_name, kota, provinsi, rating
FROM kf_kantor_cabang
ORDER BY rating ASC
LIMIT 5;

-- Mengambil variabel branch_id, branch_name, kota, provinsi, rating dari tabel data kf_kantor_cabang,
-- yang diambil berdasarkan rating tertinggi dengan limit hanya lima baris data.
SELECT branch_id, branch_name, kota, provinsi, rating
FROM kf_kantor_cabang
ORDER BY rating DESC
LIMIT 5;

-- Mengambil variabel branch_id, branch_name, kota, provinsi, rating dari tabel data kf_kantor_cabang,
-- yang diambil berdasarkan rating terendah dengan limit hanya lima baris data. 
SELECT branch_id, branch_name, kota, provinsi, rating
FROM kf_kantor_cabang
ORDER BY rating ASC
LIMIT 5;