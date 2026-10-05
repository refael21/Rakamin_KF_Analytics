-- City in west java with nett sales > 500 juta
SELECT
    c.kota,
    COUNT(*) AS total_transaksi,
    ROUND(SUM(t.price * (1 - t.discount_percentage)), 2) AS nett_sales
FROM kf_final_transaction t
INNER JOIN kf_kantor_cabang c ON t.branch_id = c.branch_id
WHERE c.provinsi = 'Jawa Barat'
GROUP BY c.kota
HAVING SUM(t.price * (1 - t.discount_percentage)) > 500000000
ORDER BY nett_sales DESC;