SELECT
    'kf_kantor_cabang' AS tabel,
    COUNT(*) AS jumlah,

    SUM(CASE WHEN branch_id IS NULL THEN 1 ELSE 0 END) AS missing_branch_id,
    SUM(CASE WHEN branch_category IS NULL THEN 1 ELSE 0 END) AS missing_branch_category,
    SUM(CASE WHEN branch_name IS NULL THEN 1 ELSE 0 END) AS missing_branch_name,
    SUM(CASE WHEN kota IS NULL THEN 1 ELSE 0 END) AS missing_kota,
    SUM(CASE WHEN provinsi IS NULL THEN 1 ELSE 0 END) AS missing_provinsi,
    SUM(CASE WHEN rating IS NULL THEN 1 ELSE 0 END) AS missing_rating
FROM kf_kantor_cabang;