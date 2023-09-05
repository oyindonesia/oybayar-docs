# SSD (Soal Sering Ditanya)

## API Kirim Uang & Multitransfer

**Apa itu jadwal maintenance bank? apakah partner akan diinformasikan terkait itu?**

Jadwal maintenance bank akan menghentikan semua transaksi ke bank terkait selama periode tertentu. Biasanya, tiap bank punya jadwal maintenance yang sudah dijadwalkan, yang tentunya berbeda antara satu bank dan bank lainnya. Agar transaksi Anda nyaman, kami akan membuat antrean transaksi yang diajukan saat jam pemeliharaan dan akan otomatis dikirimkan setelah maintenance selesai.

**Berapa limit maksimal untuk mengirimkan uang?**

Setiap e-wallet mempunyai limit maksimal masing-masing, berikut penjelasannya:

| E-Wallet | Tipe Akun  | Limit Maksimal |
| ------ | ------------- | -------------- |
| OVO    | OVO Club      | Rp 2.000.000   |
| OVO    | OVO Premier   | Rp 10.000.000  |
| DANA   | DANA Verified | Rp 2.000.000   |
| DANA   | DANA Premium  | Rp 10.000.000  |
| GoPay  | Unverified    | Rp 2.000.000   |
| GoPay  | Verified      | Rp 10.000.000  |

**Berapa limit minimal untuk mengirimkan uang?**

Setiap e-wallet mempunyai limit minimal masing-masing, berikut penjelasannya:


| E-Wallet  | Limit Minimal |
| ------- | -------------- |
| OVO     | Rp 10.000      |
| DANA    | Rp 10.000      |
| GoPay   | Rp 10.000      |
| Linkaja | Rp 10.000      |

**Apakah ada waktu Cut-Off time (COT) ?**

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

Bank apa saja yang didukung untuk produk API VA Aggregator?

Saat ini kami memiliki 11 bank yang tersedia untuk API VA Aggregator. Anda dapat melihat daftar bank [di sini](https://api-docs.oyindonesia.com/#va-aggregator-bank-code).

**Is the amount received in realtime?**

Yes, all the amount received are in realtime and will be immediately available in your OY! balance.

## Payment Link/Invoice

**What are the possible payment methods for users?**
We support payments via bank transfers, credit card, debit card, and QR code from the following:

* Bank Transfer via Virtual Account: BCA, BNI, BRI, CIMB Niaga, Mandiri, Permata Bank.

* Bank Transfer via Unique Code: BCA

* Credit Card/Debit Card: VISA, Mastercard

* E-Wallet: ShopeePay, DANA, LinkAja, OVO

* QR Code: QRIS

**What are closed and open amounts? What happens when the amount paid by the user is different from the declared amount in the created Payment Links?**

A closed amount is a configuration so that the payment link or invoice can only be paid if the actual declared amount is paid. The user will not be able to pay any amount other than the declared amount.

An opened amount is a configuration so that the payment link or invoice can be paid up to the declared amount (or any, if amount is not declared). If the user pays an amount that is different from the declared amount, the payment link will remain active. The payment link will only reflect a completed status when the full amount is paid in total.

**What is the difference between Bank Transfer via Virtual Account and Bank Transfer via Unique Code?**
Bank Transfer via Virtual Account (VA) will generate specific account number destination for each transaction. You can create an open amount or closed amount transaction using VA. Detail explanation of VA can be seen [here](https://docs.oyindonesia.com/#va-aggregator-accepting-payments). You can create VA Transactions via [API Payment Routing](https://docs.oyindonesia.com/#va-aggregator-accepting-payments) or [VA Aggregator](https://docs.oyindonesia.com/#va-aggregator-accepting-payments) 

Bank Transfer via Unique Code generates unique code for each transaction but the account number destination will always be the same. The total amount paid is subtracted by the unique code. For example, your end user wants to paid a transaction of Rp 100.000 and get Rp 100 as the unique code. The payment uses subtraction approach, so your end user will pay a total of Rp 99.900 to complete the payments. Unique Code also have limitations compared to VA, where you can only create unique code transaction during the operational hours (3 AM - 8.30 PM GMT+7).


## Payment Routing
**What are the possible payment methods for users?**
We support payments via bank transfers, e-wallet , credit card/debit card, and QR code from the following:

* Bank Transfer via Virtual Account: BCA, BNI, BRI, CIMB Niaga, Mandiri, Permata Bank.

* Bank Transfer via Unique Code: BCA

* Credit Card/Debit Card: VISA, Mastercard

* E-Wallet - One Time: ShopeePay, DANA, LinkAja, OVO

* E-Wallet - Direct Payment: ShopeePay

* QR Code: QRIS

**What is the difference between Bank Transfer via Virtual Account and Bank Transfer via Unique Code?**
Bank Transfer via Virtual Account (VA) will generate specific account number destination for each transaction. You can create an open amount or closed amount transaction using VA. Detail explanation of VA can be seen [here](https://docs.oyindonesia.com/#va-aggregator-accepting-payments). You can create VA Transactions via [API Payment Routing](https://docs.oyindonesia.com/#va-aggregator-accepting-payments) or [VA Aggregator](https://docs.oyindonesia.com/#va-aggregator-accepting-payments) 

Bank Transfer via Unique Code generates unique code for each transaction but the account number destination will always be the same. The total amount paid is subtracted by the unique code. For example, your end user wants to paid a transaction of Rp 100.000 and get Rp 100 as the unique code. The payment uses subtraction approach, so your end user will pay a total of Rp 99.900 to complete the payments. Unique Code also have limitations compared to VA, where you can only create unique code transaction during the operational hours (3 AM - 8.30 PM GMT+7). You can create Unique Code Transaction via [API Payment Routing](https://docs.oyindonesia.com/#va-aggregator-accepting-payments) or [Payment Link](https://docs.oyindonesia.com/#payment-links-invoice-accepting-payments)

**What are the differences between E-Wallet One Time Payment and E-Wallet Direct Payment?**
E-Wallet One Time creates a payment URL that can be paid by any guest users. Once payment URL is opened, your end user's is redirected to the E-Wallet app and completes the payment inside the E-Wallet's app.

E-Wallet Direct creates a payment URL dedicated to a particular user. The end user needs to link their E-Wallet account first by doing [Account Linking](https://docs.oyindonesia.com/#feature-account-linking-accepting-payments). Once the end user has linked their account to your app, you can initiate a Direct payment. OY will return an authorization URL for the end users to input the E-Wallet PIN and complete the payment. Using Direct payment, your end users will complete the transaction inside your app. Therefore, it will bring a better experinence for your end users.

|     | One Time | Direct |
| --- | -------- | ------ |
| Supported  E-Wallets | ShopeePay, LinkAja, DANA, OVO | ShopeePay |
| Need to do Account Linking first? | No | Yes |
| Can be created via.. | API Payment Routing <br> Payment Link <br> API E-Wallet Aggregator | API Payment Routing  |
| Send phone number in API Create Request | Optional | Mandatory |
| Who can complete the transaction? | Any Users/Guest | Dedicated User. <br> Only the user whose phone number listed in the API request |
| Payment Completion Journey | Inside E-Wallet App | Your app |