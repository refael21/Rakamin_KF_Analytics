-- Jumlah transaksi per cabang
SELECT branch_id, COUNT(*) AS total_transaksi
FROM kf_final_transaction
GROUP BY branch_id
ORDER BY total_transaksi DESC
LIMIT 10;

-- Jumlah produk per kategori
SELECT product_category, COUNT(*) AS total_produk
FROM kf_product
GROUP BY product_category
ORDER BY total_produk DESC;

-- Jumlah transaksi pada gudang atau inventory tertentu
SELECT Inventory_ID, COUNT(*) AS total_transaksi_inventory
FROM kf_inventory
GROUP BY Inventory_ID
ORDER BY total_transaksi_inventory DESC;