-- variabel kf_inventory
SELECT 'opname_stock' AS tabel, COUNT(*) AS jumlah_anomali,
    MIN(opname_stock) AS opname_terendah,
    MAX(opname_stock) AS opname_tertinggi,
    AVG(opname_stock) AS opname_rata_rata
FROM kf_inventory
WHERE opname_stock < 0