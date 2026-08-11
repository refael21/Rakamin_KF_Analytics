Tujuan Query
Query ini digunakan untuk menganalisis missing value (nilai NULL) pada setiap tabel.
Hasilnya akan menunjukkan:

1. Nama tabel
2. Total jumlah baris
3. Jumlah missing value untuk setiap kolom yang disebutkan


Berikut saya akan menjelaskan setiap bagian : 
1. 'kf_final_transaction' AS tabel

'kf_final_transaction' : Teks statis (nama tabel).
AS tabel : Memberi nama kolom hasilnya menjadi tabel.
Fungsi: Supaya hasil query lebih mudah dibaca.

2. COUNT(*) AS jumlah

COUNT(*) : Menghitung total jumlah baris di tabel kf_final_transaction.
AS jumlah : Memberi nama kolom menjadi jumlah.
Menurut saya ini berguna sebagai acuan (denominator) ketika menghitung persentase missing value.

3. Rumus pendeteksi Missing Value

CASE WHEN ... IS NULL : Mengecek apakah nilai di kolom tersebut NULL atau tidak.
Jika NULL : menghasilkan angka 1
Jika tidak NULL : menghasilkan angka 0

SUM(...) : Menjumlahkan semua angka 1 tersebut yang dimana hasilnya adalah total jumlah missing value di kolom itu.
AS missing_nama_kolom : Memberi nama kolom hasil yang jelas.