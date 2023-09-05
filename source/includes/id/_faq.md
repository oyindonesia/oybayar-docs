# FAQs

## API Kirim Uang & Multitransfer

**Apa itu jadwal maintenance bank? apakah partner akan diinformasikan terkait itu?**

Jadwal maintenance bank akan menghentikan semua transaksi ke bank terkait selama periode tertentu. Biasanya, tiap bank punya jadwal maintenance yang sudah dijadwalkan, yang tentunya berbeda antara satu bank dan bank lainnya. Agar transaksi Anda nyaman, kami akan membuat antrean transaksi yang diajukan saat jam pemeliharaan dan akan otomatis dikirimkan setelah maintenance selesai.

**Berapa limit maksimal untuk mengirimkan uang?**

_e-wallet:_ Setiap e-wallet mempunyai limit maksimal masing-masing, berikut penjelasannya:

|E-Wallet| Tipe Akun     | Limit Maksimal |
| ------ | ------------- | -------------- |
| OVO    | OVO Club      | Rp 2.000.000   |
| OVO    | OVO Premier   | Rp 10.000.000  |
| DANA   | DANA Verified | Rp 2.000.000   |
| DANA   | DANA Premium  | Rp 10.000.000  |
| GoPay  | Unverified    | Rp 2.000.000   |
| GoPay  | Verified      | Rp 10.000.000  |

**Berapa limit minimal untuk mengirimkan uang?**

_e-wallet:_ Setiap e-wallet mempunyai limit minimal masing-masing, berikut penjelasannya:

| E-Wallet| Limit Minimal  |
| ------- | -------------- |
| OVO     | Rp 10.000      |
| DANA    | Rp 10.000      |
| GoPay   | Rp 10.000      |
| Linkaja | Rp 10.000      |

**Apakah ada waktu Cut-Off time (COT)?**

Tidak ada. Kami beroperasi 24 jam, termasuk pada hari libur. 

**Apakah ada batasan volume transaksi dan nominal transaksi dalam sehari?** 

Tidak ada batasan harian untuk berapa banyak transaksi Multitransfer yang Anda buat. Tidak ada batasan juga untuk nominal transaksi transaksi Multitransfer.

**Berapa banyak alamat email yang dapat saya kirimkan untuk notifikasi transaksi?**

Anda dapat mengirimkan hingga 5 email per transaksi dengan batas maksimal 255 karakter. 

**Apakah saya bisa mengirimkan "catatan" yang ada di dalam mutasi rekening penerima?**

Ya. Namun, kami hanya mendukung catatan untuk 7 bank ini: BCA, BNI, BRI, CIMB, DBS, Mandiri, dan Permata. Namun, harap diperhatikan bahwa jika terdapat gangguan saat kami menghubungkan ke bank yang disebutkan di atas, sistem kami tidak dapat mendukung agar catatan tersebut muncul dalam mutasi rekening bankpenerima.

**Apakah saldo yang diterima dari API VA Aggregator dan produk Link Pembayaran serta Invoice dapat langsung digunakan untuk produk Kirim Uang?**

Ya. Dana yang diterima dari API VA Aggregator dan produk Link Pembayaran serta Invoice akan secara otomatis masuk ke dalam saldo OY! Anda secara real-time, memungkinkan Anda untuk langsung menggunakan saldo tersebut untuk mengirimkan uang.

**[Khusus Multitransfer] Bagaimana jika nama penerima di dokumen unduhan xlsx atau CSV berbeda dengan nama di rekening bank? Untuk apa nama & nomor telepon pelanggan digunakan?**

Selama nomor rekening bank valid dan aktif, transaksi akan tetap dikirimkan.

Nama dan nomor telepon hanya terlihat oleh partner dan digunakan untuk dokumentasi partner sendiri. Nama dan nomor telepon yang tercantum tidak akan digunakan oleh OY!

**[Khusus API Kirim Uang] Apakah pengiriman uang dilakukan secara real-time?**

Ya. Pencairan yang dilakukan melalui API Kirim Uang semuanya dilakukan secara real-time.



## API VA Aggregator

**Bank apa saja yang didukung untuk produk API VA Aggregator?**

Saat ini kami memiliki 11 bank yang tersedia untuk API VA Aggregator. Anda dapat melihat daftar bank di sini.

**Apakah saldo yang saya terima langsung masuk secara real-time?**

Ya, semua saldo yang Anda terima bersifat real-time dan akan segera tersedia masuk ke saldo OY! Anda.


## Link Pembayaran/Invoice

**Apa saja metode pembayaran yang tersedia untuk pelanggan saya?**

Kami menyediakan berbagai metode pembayaran melalui transfer bank, e-wallet, kartu kredit/debit, dan kode QR dengan detail sebagai berikut:

* Transfer bank melalui Virtual Account: BCA, BNI, BRI, CIMB Niaga, Mandiri, dan Permata Bank.

* Transfer dengan kode unik: BCA

* Kartu kredit/debit: VISA, Mastercard

* E-Wallet: ShopeePay, DANA, LinkAja, OVO

<<<<<<< Updated upstream:source/includes/_faq.md
* QR Code: QRIS

**What are closed and open amounts? What happens when the amount paid by the user is different from the declared amount in the created Payment Links?**

A closed amount is a configuration so that the payment link or invoice can only be paid if the actual declared amount is paid. The user will not be able to pay any amount other than the declared amount.

An opened amount is a configuration so that the payment link or invoice can be paid up to the declared amount (or any, if amount is not declared). If the user pays an amount that is different from the declared amount, the payment link will remain active. The payment link will only reflect a completed status when the full amount is paid in total.


## Payment Routing
**What is the difference between Bank Transfer via Virtual Account and Bank Transfer via Unique Code?**
Bank Transfer via Virtual Account (VA) will generate specific account number destination for each transaction. You can create an open amount or closed amount transaction using VA. Detail explanation of VA can be seen [here](https://docs.oyindonesia.com/#va-aggregator-accepting-payments). You can create VA Transactions via [API Payment Routing](https://docs.oyindonesia.com/#va-aggregator-accepting-payments) or [VA Aggregator](https://docs.oyindonesia.com/#va-aggregator-accepting-payments) 

Bank Transfer via Unique Code generates unique code for each transaction but the account number destination will always be the same. The total amount paid is subtracted by the unique code. For example, your end user wants to paid a transaction of Rp 100.000 and get Rp 100 as the unique code. The payment uses subtraction approach, so your end user will pay a total of Rp 99.900 to complete the payments. Unique Code also have limitations compared to VA, where you can only create unique code transaction during the operational hours (3 AM - 8.30 PM GMT+7). You can create  Unique Code Transaction only via [API Payment Routing](https://docs.oyindonesia.com/#va-aggregator-accepting-payments)
=======
* Kode QR: QRIS


**Apa yang dimaksud dengan VA closed dan open amount? Apa yang terjadi jika nominal yang dibayarkan oleh pelanggan berbeda dari nominal yang tertera di Link Pembayaran yang saya buat?**

Closed Amount adalah jenis Virtual Account yang hanya menerima pembayaran dengan nominal yang ditentukan. Pengguna tidak akan dapat membayar nominal selain dari nominal yang tertera.

Open Amount adalah jenis Virtual Account VA yang dapat menerima pembayaran dengan nominal berapa pun. Jika pelanggan membayar nominal lebih dari yang tertera, link pembayaran akan tetap aktif. Link pembayaran akan berubah status menjadi SELESAI hanya ketika mencapai nominal TOTAL yang ditentukan.

**Apa perbedaan antara transfer bank melalui Virtual Account dan transfer bank melalui kode unik?**

Transfer bank melalui Virtual Account (VA) akan menghasilkan nomor rekening tujuan transfer yang khusus untuk setiap transaksi. Anda dapat membuat transaksi dengan jenis open amount atau closed menggunakan VA. Penjelasan rinci tentang VA dapat dilihat [di sini](https://docs.oyindonesia.com/#va-aggregator-accepting-payments). Anda dapat membuat transaksi VA melalui [API Payment Routing](https://docs.oyindonesia.com/#va-aggregator-accepting-payments) atau [VA Aggregator](https://docs.oyindonesia.com/#va-aggregator-accepting-payments).

Berbeda dari sebelumnya, transfer bank melalui kode unik menghasilkan kode unik untuk setiap transaksi, tetapi nomor rekening tujuan akan tetap sama. Total nominal yang dibayarkan akan dikurangi dengan nilai kode unik tersebut. Sebagai contoh, pelanggan Anda ingin membayar transaksi sebesar Rp100.000 dan mendapatkan Rp100 sebagai kode unik. Jadi, pelanggan Anda akan membayar total Rp 99.900 untuk menyelesaikan pembayaran. Kode Unik juga memiliki keterbatasan dibandingkan dengan VA, di mana Anda hanya dapat membuat transaksi kode unik selama jam operasional (03.00 pagi - 08.30 malam GMT+7).



## Routing Pembayaran
**Apa saja metode pembayaran yang tersedia untuk pelanggan saya?**

Kami menyediakan berbagai metode pembayaran melalui transfer bank, e-wallet, kartu kredit/debit, dan kode QR dengan detail sebagai berikut:

* Transfer bank melalui Virtual Account: BCA, BNI, BRI, CIMB Niaga, Mandiri, dan Permata Bank.

* Transfer dengan kode unik: BCA

* Kartu kredit/debit: VISA, Mastercard

* E-Wallet: ShopeePay, DANA, LinkAja, OVO

* Kode QR: QRIS

**Apa perbedaan antara transfer bank melalui Virtual Account dan transfer bank melalui kode unik?**

Transfer bank melalui Virtual Account (VA) akan menghasilkan nomor rekening tujuan transfer yang khusus untuk setiap transaksi. Anda dapat membuat transaksi dengan jenis open amount atau closed menggunakan VA. Penjelasan rinci tentang VA dapat dilihat [di sini](https://docs.oyindonesia.com/#va-aggregator-accepting-payments). Anda dapat membuat transaksi VA melalui [API Payment Routing](https://docs.oyindonesia.com/#va-aggregator-accepting-payments) atau [VA Aggregator](https://docs.oyindonesia.com/#va-aggregator-accepting-payments).

Berbeda dari sebelumnya, transfer bank melalui kode unik menghasilkan kode unik untuk setiap transaksi, tetapi nomor rekening tujuan akan tetap sama. Total nominal yang dibayarkan akan dikurangi dengan nilai kode unik tersebut. Sebagai contoh, pelanggan Anda ingin membayar transaksi sebesar Rp100.000 dan mendapatkan Rp100 sebagai kode unik. Jadi, pelanggan Anda akan membayar total Rp 99.900 untuk menyelesaikan pembayaran. Kode Unik juga memiliki keterbatasan dibandingkan dengan VA, di mana Anda hanya dapat membuat transaksi kode unik selama jam operasional (03.00 pagi - 08.30 malam GMT+7). Anda dapat membuat transaksi kode unik melalui API Routing Pembayaran atau Link Pembayaran.


**Apa perbedaan antara E-Wallet Sekali Pakai dan E-Wallet Direct Payment?**

Pembayaran E-wallet sekali pakai dapat membuat URL pembayaran yang bisa dibayar oleh siapa pun. Begitu URL pembayaran dibuka, pelanggan Anda akan diarahkan ke aplikasi E-wallet dan menyelesaikan pembayaran di dalam aplikasi E-wallet.

Sementara, E-wallet direct payment dapat membuat URL pembayaran yang diperuntukkan untuk pengguna tertentu. Pelanggan Anda perlu menghubungkan akun E-wallet mereka terlebih dahulu dengan melakukan [Account Linking](https://docs.oyindonesia.com/#feature-account-linking-accepting-payments). Setelah pelanggan menghubungkan akun mereka dengan aplikasi Anda, maka otomatis pembayaran akan dapat dilakukan. OY! akan mengembalikan otentikasi kepada pelanggan untuk memasukkan PIN E-wallet dan menyelesaikan pembayaran. Dengan menggunakan direct payment, pelanggan Anda akan menyelesaikan transaksi di dalam aplikasi Anda sendiri. Berikut adalah detail pembayaran masing-masing E-wallet:



|     | Sekali Pakai | Direct |
| --- | ------------ | ------ |
| E-Wallet yang didukung| ShopeePay, LinkAja, DANA, OVO | ShopeePay |
| Harus menghubungkan akun terlebih dahulu? | Tidak | Ya |
| Dapat dibuat melalui.. | API Payment Routing <br> Payment Link <br> API E-Wallet Aggregator | API Payment Routing  |
| Mengirimkan nomor HP saat permintaan pembuatan API. | Opsional | Wajib |
| Siapa yang dapat melakukan pembayaran? | Semua Users/Guest | User tertentu. <br> Only the user whose phone number listed in the API request |
| Pembayaran dilakukan di | Di aplikasi E-wallet | Di aplikasi Anda sendiri|
>>>>>>> Stashed changes:source/includes/id/_faq.md
