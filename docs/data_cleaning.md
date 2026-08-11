Tujuan Query 03_cleaning.sql digunakan untuk mendeteksi data duplikat berdasarkan kolom ID di masing-masing tabel.
Secara spesifik, query ini akan menampilkan:

Nama tabel
ID yang duplikat
Berapa kali ID tersebut muncul (jumlah duplikat)

Berikut Penjelasannya:

1. Hanya ID yang muncul lebih dari 1 kali yang akan ditampilkan.
2. Mengambil data dari tabel kf_final_transaction
3. Mengelompokkan data berdasarkan transaction_id
4. Menghitung berapa kali setiap transaction_id muncul (COUNT(*))
5. Hanya menampilkan transaction_id yang muncul lebih dari 1 kali (HAVING COUNT(*) > 1)
6. Kolom output: tabel, id, jumlah

Klausa Fungsi Keterangan :
1. AS tabel : "Memberi nama kolom menjadi ""tabel""" String statis nama tabel
2. AS id : Memberi nama kolom hasil ID atau Nama kolom ID yang dicek
3. COUNT(*) : Menghitung jumlah baris dalam setiap kelompok dan Inti dari deteksi duplikat
4. GROUP BY : Mengelompokkan data berdasarkan kolom ID Wajib agar COUNT(*) bisa bekerja per ID
5. HAVING : Menyaring kelompok yang memenuhi syarat (COUNT(*) > 1)
6. UNION ALL : Menggabungkan hasil ke-4 query menjadi satu hasil yang dimana menurut saya lebih cepat daripada UNION