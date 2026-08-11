Dalam proses peng importan langkah-langkah yang akan saya jalankan
Buka terminal di folder project, lalu jalankan:
sqlite3 data/db/analysis.db

 Di dalam SQLite shell:
.mode csv
.headers on

.import data/raw/kf_kantor_cabang.csv kf_kantor_cabang
.import data/raw/kf_product.csv kf_product
.import data/raw/kf_inventory.csv kf_inventory
.import data/raw/kf_final_transaction.csv kf_final_transaction

Setelah itu
/* Query di pada 02_import.sql akan menampilkan jumlah baris (total_row) untuk setiap tabel yang telah saya 
buat, sehingga saya bisa memastikan bahwa data sudah berhasil diimpor dengan benar. */

/* Untuk penjelasan lebih detail mengenai query di atas:
1. SELECT : Mengambil data
2. 'kf_kantor_cabang' : Teks statis (nama tabel). Diapit tanda kutip karena ini string.
3. AS table_name : Memberi nama kolom menjadi table_name
4. COUNT(*) : Menghitung jumlah semua baris di tabel tersebut.
5. AS total_row : Memberi nama kolom hasil perhitungan menjadi total_row
6. FROM kf_kantor_cabang : Dari tabel mana data diambil.

UNION ALL digunakan untuk menggabungkan hasil beberapa query menjadi satu hasil.
Perbedaannya dengan UNION biasa:
UNION : menghapus data duplikat (lebih lambat)
UNION ALL : menggabungkan semua termasuk duplikat (lebih cepat)


Karena setiap query mengambil dari tabel berbeda, jadi UNION ALL menurut saya lebih efisien.*/