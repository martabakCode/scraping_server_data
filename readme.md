### Monitor Kinerja Server

Script Bash ini digunakan untuk memantau kinerja server dan menyimpan hasilnya ke dalam file CSV.

#### Penggunaan

```bash
./scraping.sh
```
## Persyaratan

- **top**: Untuk memeriksa penggunaan CPU.
- **free**: Untuk memeriksa penggunaan memori.
- **df**: Untuk memeriksa penggunaan disk.
- **ifstat**: Untuk memeriksa penggunaan jaringan.

## Instruksi

1. Pastikan skrip memiliki izin eksekusi:
    ```bash
    chmod +x scraping.sh
    ```

2. Jalankan skrip:
    ```bash
    ./scraping.sh
    ```

## Output

Skrip ini mengumpulkan data berikut:

- **Tanggal dan Waktu**: Timestamp pengumpulan data.
- **Penggunaan CPU**: Persentase penggunaan CPU.
- **Penggunaan Memori**: Persentase penggunaan memori.
- **Penggunaan Disk**: Persentase penggunaan disk untuk direktori root.
- **Penggunaan Jaringan**: Kecepatan download dan upload.

Data disimpan dalam file CSV bernama `performa_server.csv`.

## Contoh Output
```2024-05-15 12:00:00,10%,50%,30%,Download: 1KB/s Upload: 2KB/s```


## Catatan

- Skrip mengasumsikan file CSV `performa_server.csv` ada di direktori yang sama.
- Untuk hasil yang akurat, pastikan perintah yang diperlukan (`top`, `free`, `df`, `ifstat`) tersedia dan dapat diakses oleh skrip.
- Silakan sesuaikan skrip atau jalur file CSV sesuai kebutuhan Anda.

## Cron Job

Anda dapat menjadwalkan eksekusi skrip ini secara berkala menggunakan cron job. Berikut adalah contoh tab cron untuk menjalankan skrip setiap 5 menit:

```bash
*/5 * * * * /path/to/scraping.sh

Pastikan untuk mengganti /path/to/scraping.sh dengan jalur lengkap ke skrip Anda.