SELECT 'rating' AS tabel, COUNT(*) AS jumlah_anomali,
    MIN(rating) AS rating_terendah,
    MAX(rating) AS rating_tertinggi,
    AVG(rating) AS rating_rata_rata
FROM kf_kantor_cabang
WHERE rating < 0 OR rating> 5