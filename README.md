# Nama : Refael Frances Havergal Sibarani 
# Program : Big Data Analytics Kimia Farma Batch Mei - Final Project
# Deskripsi : Analisis Kinerja Kimia Farma Tahun 2020 - 2023

## 🎈 Background
Program Big Data Analytics Kimia Farma x Rakamin Academy menjadi inspirasi untuk proyek analisis kinerja bisnis. Saya mengolah dan mengintegrasikan data transaksi, produk, cabang, dan inventori menggunakan SQL. Selanjutnya, saya menganalisis metrik bisnis seperti profitabilitas, tren penjualan, dan performa wilayah. Tujuan proyek adalah untuk meningkatkan keterampilan SQL dan kemampuan untuk mengubah data menjadi insight yang membantu pengambilan keputusan.

## ✨ Objective
1. Meningkatkan keterampilan SQL dengan berlatih menulis query untuk mengambil, memfilter  mengurutkan, dan menganalisis data.
2. Melatih mengelola data menggunakan SQL, termasuk menggabungkan tabel, membersihkan data.
3. Mengembangkan kemampuan analisis data dengan mengelola data menjadi informasi yang terstruktur dan bermanfaat sebagai dasar pengambilan keputusan.

## Dataset Rakamin x Kimia Farma
1. kf_final_transaction : Transaksi keseluruhan
2. kf_inventory         : Penyimpanan Produk Obat
3. kf_kantor_cabang     : Apotek di beberapa provinsi
4. kf_product           : Nama Obat dan ketersediaany nya

## Set Up Yang Perlu Dipersiapkan
1. Install extentions SQLite di VS Code
2. Install SQLite via browser dengan link ini https://www.sqlite.org/download.html
3. ektrak file zip yang sudah di download
4. Path nya yang sudah di dwonload dimasukan kedalam environment variable
5. Untuk menjalankan nya, jika sudah menulis SQL di atas terdapat tulisan run on active connection, dan kemudian klik tulisan tersebut

## Proses Import Data Dari CSV ke dalam SQLite
1. 01_create_tables.sql
Proses pembuatan variabel beserta dengan tipe datanya.
2. - Buka terminal pada VSCode, dan pastikan path sudah sesuai      folder project, pada project
   - Buka database SQLite dengan command "sqlite3 database.db"
   - Atur dan tentukan mode CSV dengan ".mode csv
   - import file CSV ke dalam tabel SQLite dengan command ".import --skip 1 kf_final_transaction.csv kf_final_transaction" dan seterusnya ** import nya satu-satu sesuai dengan jumlah csv nya dalam project ini saya ada 4 file csv dan tabel juga saya buat 4 juga, ditulis.diketik satu satu sampai nama file terakhir csv.
   - 
## Penjelasan alur kerja folder
1. Rakamin_KF_Analytics/sql/anomali_value
Pengecekan data ini untuk mengetahui nilai anomali dimulai dari nilai yang tertinggi, terbesar dan rata-rata
1. Rakamin_KF_Analytics/sql/date_filter
untuk memflter data dari tahun 2020 - 2023
1. Rakamin_KF_Analytics/sql/distinct
Mengambil nilai yang unit dari tabel data berdasarkan varibel yang dicari, disini saya mencari product_category, branch_category, provinsi, dan kota dari tabel data kf_product dan kf_kantor_cabang
1. Rakamin_KF_Analytics/sql/filter_order_limit
Proses mencari filter nilai berdasarkan nilai tertentu dengan kondisi ascending (nilai kecil > besar)  descending (nilai besar > kecil).
1. Rakamin_KF_Analytics/sql/filtering_with_where
Proses pemfilteran dengan kondisi lebih besar dan kecil, dengan limit data ynag akan ditampilkan seperti 3, 7 10 dan 5 dan seterusnya
1. Rakamin_KF_Analytics/sql/group_by
proses pengelompokan nilai yang ingin dicari hanya satu variabel saja , pada project ini saya mengelompokan branch_id pada tabel data kf_final_transaction, product_category pada kf_product, dan Inventory_ID pada kf_inventory
1. Rakamin_KF_Analytics/sql/join
Proses join dari beberapa tabel sekaligus dengan tanda inisial, dengan contoh pada project saya ini kf_final_transaction t, saya kasih inisial nya (t) dan kf_kantor_cabang c saya kasih inisial nya (c), dan pencarian nya didasarkan pada variabel patokan atau utama, contoh pada project ini saya mencari t.transaction_id,
    t.date,
    t.price,
    t.discount_percentage,
    c.branch_name,
    c.kota,
    c.provinsi
variabel patokan nya saya pakai branch_id
1. Rakamin_KF_Analytics/sql/missing_value
proses mencari nilai yang hilang dari tabel data berdasarkan variabel yanh ada dalam tabel data tersebut ,contoh pada project saya  mecncari nilai yang hilang pada tabel data kf_final_transaction, maka disini saya menginputkan variabel yang ada pada tabel data kf_final_transaction yaitu transaction_id, date, branch_id, customer_name, product_id, price, discount_percentage, rating.
1. Rakamin_KF_Analytics/sql/order_by
proses pengabilan nilai harga dan data yann bersifat INTEGER atau angka yang berbilangan bulat, dimuali dari ASCENDING (nilai kecil > besar) dan DESCENDING (nilai besar > kecil).
1.  Rakamin_KF_Analytics/sql/query_filtering
pada proses ini saya membuat proses query filtering dengan membuat filtering berdasarkan lmiit yang di ingin kan, limit yang saya berikan pada project saya ini adalah 10 yang dimana saya mengambil data dari tabel data kf_finaL_transaction dan kf_product.
1.  Rakamin_KF_Analytics/sql/simple aggregation
Proses ini mencari proses agregasi dengan beberapa proses, contoh pada proses ini saya mnencar nilai proses jumlah total data dari kf_final_transaction, mencari nilai yang unik dari branch_id, product_id, customer_name, harga terendah dan tertinggi dari variabel price, mencari nilai rata-rata price, discount_percentage dan rating, semua proses yang dilakukan pada folder ini adalah dari tabel kf_final_transaction, begitu pun dengan seterusnya pada folder ini.

# Command SQLite yang dipakai pada project ini
.open database.db	        : Membuka database
.tables	                    : Melihat seluruh tabel
.schema products	        : Melihat struktur tabel
.mode csv	                : Mengatur format CSV
.headers on	                : Menampilkan header
.import file.csv products	: Import CSV
.quit	                    : Keluar dari SQLite

# Copyright Notice
© 2026 Refael Frances Havergal Sibarani. Hak Cipta Dilindungi Undang-Undang.

Proyek ini, termasuk kode sumber, dokumentasi, alur kerja pemrosesan data, dan materi terkait lainnya, merupakan kekayaan intelektual milik Refael Frances Havergal Sibarani.

Izin diberikan untuk melihat dan merujuk proyek ini untuk tujuan pendidikan, penelitian, dan portofolio.

Namun, menyalin, mendistribusikan ulang, memodifikasi, atau menggunakan bagian mana pun dari proyek ini untuk tujuan komersial tanpa persetujuan tertulis sebelumnya dari pemegang hak cipta adalah dilarang.

Pustaka, kerangka kerja (framework), kumpulan data, dan sumber daya eksternal lainnya dari pihak ketiga tetap menjadi milik dari pemiliknya masing-masing dan tunduk pada ketentuan lisensi mereka sendiri.

Untuk permintaan izin atau pertanyaan lebih lanjut, silakan hubungi:
@refaelfhs@gmail.com

Sumber Data : https://app.rakamin.com/virtual-internship-experience/explore 