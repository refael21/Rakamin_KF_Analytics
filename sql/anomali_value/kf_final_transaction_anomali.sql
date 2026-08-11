-- variabel kf_final_transaction
SELECT 'price' AS tabel, COUNT(*) AS jumlah_anomali,
    MIN(price) AS harga_terendah,
    MAX(price) AS harga_tertinggi,
    AVG(price) AS harga_rata_rata
FROM kf_final_transaction
WHERE price <= 0

UNION ALL

SELECT 'discount_percentage', COUNT(*),
    MIN(discount_percentage) AS diskon_terendah,
    MAX(discount_percentage) AS diskon_tertinggi,
    AVG(discount_percentage) AS diskon_rata_rata
FROM kf_final_transaction
WHERE discount_percentage < 0 OR discount_percentage > 60

UNION ALL

SELECT 'rating', COUNT(*),
    MIN(rating) AS rating_terendah,
    MAX(rating) AS rating_tertinggi,
    AVG(rating) AS rating_rata_rata
FROM kf_final_transaction
WHERE rating < 0 OR rating > 5