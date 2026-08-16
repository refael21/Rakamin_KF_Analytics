-- Mengambil data unik dari variabel product_category dari pada tabel kf_product
SELECT DISTINCT product_category
FROM kf_product
ORDER BY product_category;

-- Mengambil data unik dari varibel branh_category dari tabel data kf_kantor_cabang
SELECT DISTINCT branch_category
FROM kf_kantor_cabang
ORDER BY branch_category;

-- Mengambil data unik dari variabel provinsi dari tabel data kf_kantor_cabang
SELECT DISTINCT provinsi
FROM kf_kantor_cabang
ORDER BY provinsi;

-- Mengambil data unik dari variabel kota, dengan pemfilteran
-- kota dari jawa barat, dari tabel data kf_kantor_cabang
SELECT DISTINCT kota
FROM kf_kantor_cabang
WHERE provinsi = 'Jawa Barat'
ORDER BY kota;