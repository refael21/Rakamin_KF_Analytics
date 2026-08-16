-- Mencari tanggal awal dan akhir
SELECT COUNT(*) AS total,
       MIN(date) AS tanggal_awal,
       MAX(date) AS tanggal_akhir
FROM kf_final_transaction;

-- Mencari total transaksi di tahun 2020
SELECT COUNT(*) AS total_transakasi_2020
FROM kf_final_transaction
WHERE date LIKE '%/2020';

-- Mencari total transaksi di tahun 2021
SELECT COUNT(*) AS total_transaksi_2021
FROM kf_final_transaction
WHERE date LIKE '%/2021';

-- Mencari total transaksi di tahun 2022
SELECT COUNT(*) AS total_transaksi_2022
FROM kf_final_transaction
WHERE date LIKE '%/2022';

-- Mencari total transaksi di tahun 2023
SELECT COUNT(*) AS total_transaksi_2023
FROM kf_final_transaction
WHERE date LIKE '%/2023';