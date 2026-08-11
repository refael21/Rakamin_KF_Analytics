SELECT 'price' AS tabel, COUNT(*) AS jumlah_anomali,
    MIN(price) AS harga_terendah,
    MAX(price) AS harga_tertinggi,
    AVG(price) AS harga_rata_rata
FROM kf_product
WHERE price < 0