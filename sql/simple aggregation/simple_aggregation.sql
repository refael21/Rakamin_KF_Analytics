-- Ringkasan transaksi dari tabel data kf_final_transaction
SELECT
    COUNT(*) AS total_transaksi,
    COUNT(DISTINCT branch_id) AS jumlah_cabang,
    COUNT(DISTINCT product_id) AS jumlah_produk,
    COUNT(DISTINCT customer_name) AS jumlah_customer,
    MIN(price) AS harga_terendah,
    MAX(price) AS harga_tertinggi,
    ROUND(AVG(price), 2) AS harga_rata_rata,
    ROUND(AVG(discount_percentage), 4) AS rata_rata_diskon,
    ROUND(AVG(rating), 2) AS rata_rata_rating
FROM kf_final_transaction;

-- Ringkasan produk dari tabel data kf_product
SELECT
    COUNT(*) AS total_produk,
    COUNT(DISTINCT product_category) AS jumlah_kategori_produk,
    MIN(price) AS harga_terendah,
    MAX(price) AS harga_tertinggi,
    ROUND(AVG(price), 2) AS harga_rata_rata
FROM kf_product;

-- Ringkasan inventory dari tabel data kf_inventory
SELECT 
    COUNT(*) AS total_inventory,
    COUNT(DISTINCT product_id) AS jumlah_produk,
    COUNT(DISTINCT product_name) AS jumlah_nama_produk,
    MIN(opname_stock) AS stok_terendah,
    MAX(opname_stock) AS stok_tertinggi,
    ROUND(AVG(opname_stock), 2) AS stok_rata_rata
FROM kf_inventory;

-- Ringkasan kantor cabang dari tabel data kf_kantor_cabang
SELECT
    COUNT(*) AS total_kantor_cabang,
    COUNT(DISTINCT branch_category) AS total_kategori_cabang,
    COUNT(DISTINCT branch_name) AS total_nama_cabang,
    COUNT(DISTINCT kota) AS total_kota,
    COUNT(DISTINCT provinsi) AS total_provinsi,
    MIN(rating) AS rating_terendah,
    MAX(rating) AS rating_tertinggi,
    ROUND(AVG(rating), 2) AS rata_rata_rating
FROM kf_kantor_cabang;