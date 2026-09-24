-- Number of branches per province + branch category
SELECT
    provinsi,
    branch_category,
    COUNT(*) AS jumlah_cabang,
    ROUND(AVG(rating), 2) AS rating_rata_rata
FROM kf_kantor_cabang
GROUP BY provinsi, branch_category
ORDER BY provinsi, jumlah_cabang DESC;

--  (time analysis preparation) Number of transactions per year from the date string columns
SELECT
    SUBSTR(date, -4) AS tahun,
    COUNT(*) AS total_transaksi,
    ROUND(SUM(price * (1 - discount_percentage)), 2) AS nett_sales
FROM kf_final_transaction
GROUP BY SUBSTR(date, -4)
ORDER BY tahun;