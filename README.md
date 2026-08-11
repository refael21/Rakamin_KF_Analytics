# Nama : Refael Frances Havergal Sibarani 
# Program : Big Data Analytics Kimia Farma Batch Mei - Final Project
# Deskripsi : Analisis Kinerja Kimia Farma Tahun 2020 - 2023

Tools yang digunakan :
1. SQLite
2. Python Programming
3. Visual Studio Code

Ringkasan sistem pembuatan tabel :
1. Menggunakan star schema sederhana (tabel master + tabel transaksi/inventory).
2. Ada referential integrity melalui Foreign Key.
3. Penggunaan IF NOT EXISTS membuat script aman untuk dijalankan berulang.
4. Kolom price disimpan di tabel transaksi agar historical price tetap terjaga meskipun harga master berubah.

Struktur Proyek :
Rakamin_KF_Analytics
data/
  raw/        : CSV asli
  db/         : SQLite database
  processed/  : data setelah cleaning 

docs/
  data_dictionary.md   : penjelasan setiap kolom di 
  4 tabel
  data_import.md       : Penjelasan setiap query dalam proses melihat baris dalam tabel data
  ERD.png              : diagram relasi antar tabel

sql/
  01_create_tables.sql : Pembuatan struktur database
  02_import.sql        : Proses import atau pengiriman data csv ke dalam SQLite.