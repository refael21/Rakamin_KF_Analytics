-- 20 transaksi rating 5 dengan harga tertinggi
SELECT transaction_id, date, customer_name, product_id, price, discount_percentage, rating
FROM kf_final_transaction
WHERE rating = 5
ORDER BY price DESC
LIMIT 20;

-- Transaksi tanpa diskon (diskon = 0) dengan harga di atas 700.000
SELECT transaction_id, customer_name, product_id, price, discount_percentage
FROM kf_final_transaction
WHERE discount_percentage = 0 AND price > 700.000
ORDER BY price DESC
LIMIT 20;

-- Transaksi di cabang bali
SELECT branch_id, branch_category, branch_name, kota, provinsi, rating
FROM kf_kantor_cabang
WHERE provinsi = 'Bali' AND rating < 4 AND rating > 3
LIMIT 20;

-- Transaksi dengan nama produk Psycholeptics drugs, Anxiolytic drugs dengan stok_opname terbanyak
SELECT Inventory_ID, branch_id, product_id, product_name, opname_stock
FROM kf_inventory
WHERE product_name = 'Psycholeptics drugs, Anxiolytic drugs'
ORDER BY opname_stock DESC
LIMIT 20;