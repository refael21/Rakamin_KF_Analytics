/* Disini saya akan memberikan penjelasan setiap syntax query yang telah saya buat dibawah ini:

1. Tabel kf_kantor_cabang
CREATE TABLE IF NOT EXISTS : Membuat tabel jika belum ada (aman dijalankan berulang).
branch_id INT PRIMARY KEY : Kolom ID cabang, tipe integer, menjadi primary key (unik dan tidak boleh null atau kosong).
branch_category VARCHAR(50) NOT NULL : Kategori cabang (misalnya: "Pusat", "Cabang Besar", dll), wajib diisi.
branch_name VARCHAR(150) NOT NULL : Nama cabang.
kota & provinsi : Lokasi cabang.
rating DECIMAL(3,1) NOT NULL : Rating cabang (contoh: 4.5), tipe desimal dengan 1 angka di belakang koma.

Tabel ini berfungsi sebagai master data cabang.

2. Tabel kf_product
product_id VARCHAR(20) PRIMARY KEY : Kode produk (string, max 20 karakter), menjadi primary key.
product_name VARCHAR(150) NOT NULL : Nama produk, wajib diisi.
product_category VARCHAR(50) : Kategori produk (bisa null).
price DECIMAL(25, 2) NOT NULL : Harga produk, mendukung angka sangat besar dengan 2 desimal (menurut saya cocok untuk harga dalam Rupiah).

Tabel ini adalah master data produk.

3. Tabel kf_inverntory
inventory_id VARCHAR(20) PRIMARY KEY : ID unik untuk setiap record inventory.
branch_id INT NOT NULL : ID cabang (harus ada di tabel kf_kantor_cabang).
product_id VARCHAR(20) NOT NULL : ID produk (harus ada di tabel kf_product).
product_name VARCHAR(150) NOT NULL : Nama produk (redundan untuk kemudahan query, meski sebenarnya bisa diambil dari tabel product).
opname_stock INT NOT NULL DEFAULT 0 : Stok opname (stok fisik), defaultnya 0 jika tidak diisi.
FOREIGN KEY : Membuat relasi (referential integrity) ke tabel cabang dan produk.

Tabel ini menyimpan data stok barang per cabang.

4. Tabel kf_final_transaction
transaction_id VARCHAR(20) PRIMARY KEY : Nomor transaksi unik.
date DATE NOT NULL : Tanggal transaksi.
branch_id INT NOT NULL : Cabang tempat transaksi dilakukan.
customer_name VARCHAR(150) NOT NULL : Nama pelanggan.
product_id VARCHAR(20) NOT NULL : Produk yang dibeli.
price DECIMAL(25, 2) NOT NULL : Harga jual saat transaksi (bisa berbeda dari harga master jika ada perubahan).
discount_percen DECIMAL(5, 2) DEFAULT 0.00 NOT NULL : Persentase diskon (contoh: 10.00 untuk 10%).
rating DECIMAL(3,1) NULL : Rating yang diberikan pelanggan (bisa kosong).
FOREIGN KEY : Relasi ke tabel cabang dan produk.

Tabel ini adalah tabel fakta transaksi (paling penting untuk analisis).