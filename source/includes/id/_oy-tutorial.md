# OY! Dashboard Tutorial

## Masuk ke Dashboard

Untuk masuk ke dashboard OY!, lakukan langkah berikut;

1. Akses halaman login di https://desktop-business.oyindonesia.com/login. 
2. Masukkan username dan password Anda. 


![Login page](images/desktop_login.png)

3. Anda akan diarahkan untuk memasukkan kode OTP. Silakan cek inbox email yang terdaftar untuk mendapatkan kode OTP, lalu masukkan di kolom yang tersedia.

![Login OTP](images/desktop_login_otp.png)

![Email OTP](images/email_otp.png)

Jika Anda mencentang opsi “Ingat perangkat ini”, Anda tidak perlu memasukkan OTP saat Anda masuk kembali. Oleh karena itu, langkah ketiga hanya diperlukan saat Anda masuk untuk pertama kali setelah Anda membuat akun.

## Analitik Transaksi

Fitur analitik pada dashboard OY! memberikan Anda informasi tentang transaksi pendapatan dan pengeluaran yang terjadi di OY!. Dengan fitur ini, Anda bisa tahu berapa banyak uang yang sudah Anda keluarkan dan berapa yang sudah Anda dapatkan dalam jangka waktu tertentu. Anda bisa melihat rincian transaksi Anda secara harian, mingguan, atau bulanan. Anda juga bebas memilih periode waktu yang Anda inginkan. Dari sini, Anda akan mendapatkan gambaran tentang bagaimana tren transaksi bisnis Anda bergerak. Dengan demikian, fitur ini dapat membantu Anda dalam mengambil keputusan bisnis baru guna mengembangkan bisnis Anda.


![Dashboard Analytics Image](images/desktop_analytics_spend_earn.png)

* Anda bisa pilih seberapa rinci dan dalam periode waktu berapa Anda ingin melihat informasi transaksi Anda.
* Indikator kenaikan dan penurunan akan membandingkan bagaimana transaksi Anda pada periode yang Anda pilih dengan periode sebelumnya.
* Jika Anda arahkan kursor ke suatu titik garis, jumlah volume transaksi akan muncul.

Bagi Anda yang menggunakan produk Virtual Account, Link Pembayaran, dan E-wallet, Anda bisa melihat perbandingan antar metode pembayaran yang digunakan oleh pelanggan Anda. Informasi ini bisa memberikan wawasan penting bagi Anda agar tahu metode pembayaran mana yang paling banyak digunakan oleh pelanggan Anda.


![Dashboard Analytics Payment Method](images/desktop_analytics_paymethod.png)

## Manajemen Akun

Jika Anda memiliki peran Super Admin, Anda dapat menambahkan akun untuk anggota tim Anda dan menentukan peran untuk mereka.

Berikut adalah langkah-langkah berikut untuk menambahkan pengguna baru;

1. Masuk ke dashboard OY!
2. Klik menu Akun, kemudian klik “Manajemen Pengguna”
3. Klik tombol “Tambah Pengguna” di sebelah kanan atas


![User Management 1](images/user_management_1.png)

4.  Isi nama lengkap, username, email, nomor telepon (opsional), dan kata sandi

![User Management 2](images/user_management_2.png)

5.  Pilih peran yang ingin Anda berikan kepada anggota tim Anda. Anda dapat memilih antara Administrator, Approver, dan Maker 

Selain menambahkan pengguna baru, Super Admin juga dapat mengubah informaasi dan menghapus pengguna yang sudah ada dengan mengklik tombol ubah/hapus pada tabel Daftar Pengguna.

Berikut adalah daftar kontrol akses di dashboard OY! berdasarkan peran;

| Akses | Superadmin | Admin | Approver | Maker
|-------|-------|-------|-------|-------|
|Verifikasi Akun| Bisa mengajukan | Bisa mengajukan | - | - |
|Analitik| Bisa melihat | Bisa melihat | Bisa melihat | Bisa melihat |
|Laporan Transaksi| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh|
|Laporan Penyelesaian| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh|
|Isi Saldo| Bisa mengisi saldo | Bisa mengisi saldo | Bisa mengisi saldo | Bisa mengisi saldo |
|Tarik Saldo| Bisa menarik saldo | Bisa menarik saldo | Bisa menarik saldo | Bisa menarik saldo |
|Tambah Pengguna| Bisa menambahkan | Bisa menambahkan | - | - |
|Profil Pengguna| Bisa melihat and edit | Bisa melihat and edit | Bisa melihat and edit | Bisa melihat and edit |
|Profil Bisnis| Bisa melihat and edit | Bisa melihat and edit | Bisa melihat and edit | Bisa melihat and edit |
|Authenticator OTP| Punya akses | Punya akses | Punya akses | Punya akses |
|Tambah Metode Pembayaran| Bisa menambahkan | Bisa menambahkan | - | - |
|Laporan Otomatis | Bisa mengatur | Bisa mengatur | - | - |
|Tarik Saldo Otomatis| Bisa mengatur | Bisa mengatur | - | - |
|Multi Approval| Bisa mengatur | Bisa mengatur | - | - |
|Pengaturan Notifikasi| Bisa mengatur | Bisa mengatur | - | - |
|Opsi Developer| Bisa mengatur | Bisa mengatur | - | - |
|Tambah Kategori Transaksi| Bisa menambahkan | Bisa menambahkan | - | - |
|Pengaturan Bukti Transaksi | Bisa mengatur | Bisa mengatur | Bisa mengatur | Bisa mengatur |

Multi account Management

| Akses | Superadmin | Admin | Approver | Maker
|-------|-------|-------|-------|-------|
<<<<<<< Updated upstream:source/includes/_oy-tutorial.md
|Create Child| Can create| Can create | - | - |
|Top up Child via Dashboard| Can top up| Can top up | - | - |
|Disconenct child| Can disconnect | Can disconnect | -| -|
=======
|Membuat Sub-entity| Bisa membuat| Bisa membuat | - | - |
|Isi ulang saldo Sub-entity| Bisa mengisi saldo| Bisa mengisi saldo | - | - |
|Memutus Sub-entity| Bisa memutus | Bisa memutus | -| -|
>>>>>>> Stashed changes:source/includes/id/_oy-tutorial.md



|Akses| Superadmin | Admin | Approver | Maker
|-------|-------|-------|-------|-------|
|Buat transaksi | Bisa membuat| Bisa membuat | - | Bisa membuat |
|Menyetujui transaksi| Bisa menyetujui| Bisa menyetujui | Bisa menyetujui | - |
|Melihat dan mengunduh laporan transaksi| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh|

Claim Fund Product

| Task | Superadmin | Admin | Approver | Maker
|-------|-------|-------|-------|-------|
|Create Claim Fund | Bisa membuat| Bisa membuat | - | Bisa membuat |
|Approve Claim Fund| Bisa menyetujui| Bisa menyetujui | Bisa menyetujui | - |
|View dan mengunduhClaim Fund Report| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh|

Produk Pengembalian Dana

| Akses| Superadmin | Admin | Approver | Maker
|-------|-------|-------|-------|-------|
|Buat pengembalian dana| Bisa membuat| Bisa membuat | - | Bisa membuat |
|Menyetujui pengembalian dana | Bisa menyetujui | Bisa menyetujui | Bisa menyetujui | - |
|Melihat dan mengunduh laporan transaksi| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh|

Produk Link Pembayaran

| Akses | Superadmin | Admin | Approver | Maker
|-------|-------|-------|-------|-------|
|Membuat Link Pembayaran| Bisa membuat| Bisa membuat | Bisa membuat | Bisa membuat |
|Melihat dan mengunduh laporan link pembayaran| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh|

Produk Virtual Account

| Akses | Superadmin | Admin | Approver | Maker
|-------|-------|-------|-------|-------|
|Create VA via Dashboard| Bisa membuat| Bisa membuat | Bisa membuat | Bisa membuat |
|Melihat dan mengunduh laporan link pembayaran| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh|

E-Wallet Aggregator

| Akses | Superadmin | Admin | Approver | Maker
|-------|-------|-------|-------|-------|
|Melihat dan mengunduh laporan E-Wallet| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh|

Produk Invoice Penjualan

| Akses | Superadmin | Admin | Approver | Maker
|-------|-------|-------|-------|-------|
|Buat invoice | Bisa membuat| Bisa membuat | Bisa membuat | Bisa membuat |
|Melihat dan mengunduh laporan invoice| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh|

API Inquiry

| Akses | Superadmin | Admin | Approver | Maker
|-------|-------|-------|-------|-------|
|Melihat dan mengunduh laporan Inquiry API | Bisa melihat dan mengunduh| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh|

API Transaction Data

| Akses | Superadmin | Admin | Approver | Maker
|-------|-------|-------|-------|-------|
|Melihat dan mengunduh laporan API Transaksi Data| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh| Bisa melihat dan mengunduh|


## 2-Factor Authentication

Untuk meningkatkan keamanan akun Anda, Anda bisa mengaktifkan 2-Factor Authentication. Saat ini, OY menyediakan metode keamanan ini melalui aplikasi authenticator. 

Berikut adalah langkah-langkahnya;

1. Masuk ke dashboard OY!
2. Pilih menu Akun -> Authenticator OTP
3. Unduh aplikasi authenticator di handphone Anda (dari Play Store/App Store) atau PC (Anda bisa unduh ekstensi untuk brower Anda). Contoh aplikasi Authenticator: Google Authenticator, Microsoft Authenticator, Authy
4. Scan QR code yang terlihat di dahsboard dengan aplikasi Authenticator Anda atau masukkan kunci pengaturan yang ada di sampingnya ke Aplikasi Authenticator Anda
5. Ketik 6 digit kode yang muncul di aplikasi Authenticator Anda ke dalam kolom “Authenticator OTP”


## Mengisi Saldo OY!
Berikut adalah langkah-langkah untuk mengisi ulang saldo OY! Anda melalui dashboard;

1. Masuk ke dashboard OY!
2. Pergi ke menu “Laporan Transaksi” lalu pilih “Laporan Transaksi Rekening”
3. Klik tombol “Bagaimana Cara Isi Ulang”. Ada 2 cara untuk menambah saldo akun OY! Anda;


### Isi Ulang via Virtual Account
  Anda bisa melihat nomor VA di tab 'Virtual Account' setelah Anda mengklik tombol 'Bagaimana Cara Isi Ulang'. Jumlah saldo yang Anda isi akan otomatis masuk ke akun Anda secara real-time tanpa perlu mengirim konfirmasi manual ke OY. 

![VA Topup](images/desktop_topup.png)

### Isi Ulang Manual via Transfer Bank
Selain menggunakan Virtual Account, Anda juga dapat mentransfer ke rekening giro OY. Jika Anda memilih untuk isi ulang saldo melalui metode ini, Anda perlu melakukan konfirmasi manual agar uang Anda dapat diteruskan ke akun Anda.

Setelah Anda menyelesaikan transfer dana ke OY! Indonesia, Anda perlu melakukan langkah-langkah berikut;

1. Klik tab “Transfer Bank Manual” pada menu Isi Ulang Saldo


![Manual Topup](images/manual_topup.png)

2. Isi kolom informasi berikut;

| Nama Kolom            | Desckripsi         |
| --------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|Jumlah                |      |
| Bank Penerima    |         |
| Tanda Terima Transfer    |        |
| Tipe Tanda Terima Transfer |  |

3. Klik “Kirim Sekarang”
4. Anda akan menerima email menyatakan bahwa isi ulang saldo Anda sedang diproses.

![Topup Confirmation Dashboard](images/topup_confirmation_dashboard.png)

![Topup Confirmation Email](images/topup_confirmation_email.png)

5. Terakhir, Anda akan menerima email konfirmasi yang menyatakan bahwa isi ulang saldo Anda telah berhasil atau gagal.

![Success Failed Confirmation](images/success_failed_confirmation.png)

### Isi Ulang via Transfer Instan BCA

Sekarang, kami memberi kemudahan metode isi ulang untuk para nasabah BCA. Transfer instan BCA memungkinkan Anda untuk mengisi ulang saldo secara instan tanpa perlu mengonfirmasi bukti transfer secara manual. Sistem kami akan otomatis menambahkan saldo Anda saat Anda mengisi ulang. 

Untuk melakukan isi ulang via transfer instan BCA, silakan ikuti langkah-langkah berikut;

1. Klik tab “Transfer Instan BCA” pada menu Isi Ulang Saldo.
2. Masukkan nominal saldo yang ingin Anda isi, dengan pengisian minimal Rp10.000.


![BCA Unique Code Input Amount](images/desktop_bcauniquecode_input_amount.png)

3. OY! akan menampilkan jumlah yang harus Anda transfer, ditambah tiga digit kode unik di belakang nominal transfer. Pastikan Anda transfer sesuai dengan jumlah yang tertera.

![BCA Unique Code Transfer](images/desktop_bcauniquecode_transfer.png)

4. Setelah transaksi berhasil, saldo yang tertera pada Subtotal akan masuk ke akun OY! Anda. 
Catatan: Jam operasional untuk metode ini adalah setiap hari, mulai dari pukul 03.01 pagi hingga pukul 08.30 malam. Di luar jam tersebut, Anda tidak bisa menggunakan metode ini.

![BCA Unique Code Transfer](images/desktop_bcauniquecode_success.png)

## Tarik Saldo ke Rekening

Anda dapat menarik saldo OY! ke rekening Anda dengan mengikuti langkah-langkah berikut:

1. Masuk ke dashboard OY!
2. Pergi ke menu “Laporan Transaksi” lalu pilih “Laporan Transaksi Rekening”
3. Klik “Tarik Dana”
4. Masukkan jumlah yang ingin Anda tarik

![Withdrawal Top Up](images/withdrawal_topup.png)

4.  Pilih jenis penarikan Anda. Anda dapat memilih salah satu dari opsi berikut;

  - Instan dengan biaya admin -> Penarikan Anda akan diproses dan tiba di bank penerima Anda secara real-time, tetapi Anda akan dikenakan biaya admin. Jika jumlah yang akan ditarik <= Rp 50 juta dan bank penerima adalah BCA, BRI, BNI, Mandiri, Permata, DBS, dan CIMB Niaga.

  - Manual -> Penarikan Anda akan diproses dalam waktu hingga 2 hari kerja. Jika jumlah yang akan ditarik > Rp 50 juta ATAU bank penerima bukanlah BCA, BRI, BNI, Mandiri, Permata, DBS, atau CIMB Niaga, Anda harus memilih opsi ini. Anda TIDAK akan dikenakan biaya admin jika Anda memilih opsi ini.


### Setting Up Auto Withdrawal Process

If you want to set up an **Auto Withdrawal** periodically, go to Settings -> Auto Withdrawal.

![Auto Withdrawal](images/auto_withdrawal.png)

Here's how you Bisa mengaturure the auto withdrawal settings;

| Field Name               | Description                                                                                                                                                                                                                                                                                                                                                       |
| ------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Auto Withdrawal Schedule | The schedule of your auto withdrawal. Options available: Daily, Weekly, Bi-Weekly, Monthly                                                                                                                                                                                                                                                                        |
| Start Date               | Start date of your auto withdrawal schedule                                                                                                                                                                                                                                                                                                                       |
| Ends                     | Options available: Never -> if the auto withdrawal will go on for an indefinite time, By Date -> if the auto withdrawal will end on a specific date. If you choose this option, you need to fill in the date on which you plan to end the auto withdrawal process                                                                                                 |
| Amount                   | Amount to be automatically withdrawn. Options available: Maximum amount -> Withdraw the maximum available balance, Specified Amount -> custom specified amount. Note: Maximum Amount is recommended for Auto Withdrawal transactions as withdrawals will not be processed if the specified amount is greater than the OY balance when the withdraw scheduler runs |
| Withdrawal Type          | Options available: 1) Instant, or 2) Manual.                                                                                                                                                                                                                                                                                                                      |
| Email                    | An email we will send the notification to. Use (;) between email to differentiate them (Max. 5 emails can be inputted)                                                                                                                                                                                                                                            |

## Laporan Transaksi - Laporan Penyelesaian

Laporan Penyelesaian adalah daftar transaksi yang menggunakan metode pembayaran dengan waktu proses non real-time atau tidak langsung. Misalnya, untuk metode pembayaran "VA BCA" butuh waktu 2 hari kerja sejak transaksi dilakukan agar uangnya masuk. Maka setiap kali pelanggan Anda melakukan transaksi dengan VA BCA, transaksi tersebut akan tercatat dalam Laporan Penyelesaian.

Untuk mengakses laporan penyelesaian, ikuti langkah-langkah berikut:

1. Masuk ke dashboard OY!
2. Pilih menu Laporan Transaksi, lalu klik Laporan Penyelesaian


![Settlement Report](images/settlement_report.png)

Laporan Penyelesaian berisi informasi sebagai berikut;

  - Total nominal untuk diselesaikan hari ini: Jumlah total yang dijadwalkan untuk diselesaikan ke saldo akun Anda hari ini.

  - Total nominal penyelesaian tertunda: Jumlah total yang belum diselesaikan ke saldo akun Anda. (status penyelesaian masih belum SUKSES)

  - Berikut adalah informasi di dalam tabel Daftar Transaksi Penyelesaian: 


| Field Name             | Description                                                                                                                                                                                                                        | Example                              |
| ---------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------ |
| Transaction Date       | The date on which your customer performs the transaction                                                                                                                                                                           | 11 May 2021                          |
| Transaction Time       | The time at which your customer performs the transaction                                                                                                                                                                           | 17:44:09                             |
| Transaction ID         | A unique transaction ID given by OY                                                                                                                                                                                                | d4b26687-34b9-43d3-9d08-af440bcbaca7 |
| Partner Transaction ID | A unique transaction ID that is assigned by you for a given transaction                                                                                                                                                            | TXID_001                             |
| Product                | The product associated with a given transaction. This will be filled with VIRTUAL_ACCOUNT if the transaction comes from Virtual Account Aggregator product, or PAYMENT_CHECKOUT if the transaction comes from Payment Link product | VIRTUAL_ACCOUNT                      |
| Payment Method         | The payment method associated with a given transaction. Possible values: VA [Bank Name], CARDS, QRIS, EWALLET SHOPEEPAY                                                                                                            | VA BCA                               |
| Transfer Amount        | The transaction amount (before getting deducted with admin fee                                                                                                                                                                     | +Rp 10.000                           |
| Admin Fee              | The admin fee associated with a given transaction                                                                                                                                                                                  | -Rp 1.000                            |
| Total Amount           | The transaction amount that has been deducted with admin fee                                                                                                                                                                       | +9,000                               |
| Settlement Date        | The scheduled settlement date for a given transaction                                                                                                                                                                              | 12 May 2021                          |
| Settlement Time        | The scheduled settlement timestamp for a given transaction                                                                                                                                                                         | 15:00:00                             |
| Settlement Status      | The settlement status for a given transaction. Possible values: WAITING (if the amount is not yet settled to your account statement balance), SUCCESS (if the amount has been settled to your account statement balance).          | SUCCESS                              |

Jika status penyelesaian suatu transaksi masih MENUNGGU, transaksi tersebut belum muncul di tabel laporan rekening Anda, dan jumlahnya juga belum akan ditambahkan dalam saldo Anda.

Jika status penyelesaian suatu transaksi sudah SUKSES, transaksi tersebut akan muncul di dalam tabel laporan rekening Anda, dan jumlahnya akan ditambahkan dalam saldo Anda.


### Callback untuk Transaksi Tertunda
Jika Anda mempunyai transaksi dengan metode pembayaran yang diselesaikan H+>0, Anda akan menerima dua callback dengan rincian sebagai berikut;

1. Callback Pertama -> Akan dikirim setelah pelanggan Anda berhasil melakukan transaksi. Misalnya, jika pelanggan Anda melakukan transaksi pada 11 Mei 2021 pukul 14.00, saat itu juga kami akan mengirimkan callback pertama kepada Anda. Dalam callback pertama, status penyelesaian akan menjadi MENUNGGU (karena belum masuk ke saldo Anda).

2. Callback Kedua -> Akan dikirim setelah status penyelesaian berubah dari MENUNGGU menjadi SUKSES. Misalnya, jika status penyelesaian berubah menjadi SUKSES pada 12 Mei 2021 pukul 15.00, saat itu juga kami akan mengirimkan callback kedua kepada Anda. Dalam callback kedua, status penyelesaian akan menjadi SUKSES.


### Unduh dan Filter Laporan Penyelesaian
Tombol Ekspor: Anda dapat mengunduh laporan penyelesaian dalam format CSV, PDF, dan XLSX. 

Filter: Anda dapat mem-filter laporan penyelesaian berdasarkan rentang tanggal transaksi, produk, metode pembayaran, rentang tanggal penyelesaian, dan status penyelesaian.


## Notifikasi
Anda dapat mengaktifkan atau menonaktifkan pengaturan notifikasi saat saldo Anda mencapai limit, notifikasi untuk produk kirim uang, dan notifikasi untuk produk terima uang jika Anda memiliki peran super admin atau admin, berikut caranya:

1. Masuk ke dashboard melalui https://business.oyindonesia.com/ 
2. Pergi ke menu Pengaturan -> Notifikasi
   ![Notif Disbursement - 1  Initial](https://user-images.githubusercontent.com/79620482/126457509-ca20c24b-9277-4be4-943e-801b79806e65.png)
3. Jika Anda ingin mendapatkan pemberitahuan melalui email jika saldo Anda mencapai limit, atur di tab "Saldo Rendah". Masukkan limit jumlah saldo dan alamat email yang ingin dikirimkan notifikasi.
4. Pilih apakah Anda ingin mengaktifkan atau menonaktifkan pemberitahuan untuk Multitransfer atau API Kirim Uang. 
  a. Aktifkan Pemberitahuan: Pemberitahuan melalui email akan dikirimkan untuk transaksi tertunda, gagal, dan berhasil. 
  b. Nonaktifkan Pemberitahuan yang Berhasil: Pemberitahuan melalui email hanya akan dikirimkan untuk transaksi tertunda dan gagal.
5. Pilih apakah Anda ingin mengaktifkan atau menonaktifkan pemberitahuan untuk Link Pembayaran atau VA:  
  a. Aktifkan Pemberitahuan: Pemberitahuan melalui email akan dikirimkan untuk transaksi yang sukses. 
  b. Nonaktifkan Pemberitahuan Berhasil: Tidak akan ada pemberitahuan melalui email.
6. Kolom Email: Memungkinkan pengguna untuk menambahkan, menghapus, dan mengedit email penerima notifikasi dalam kolom ini, Anda dapat memasukkan hingga 3 alamat email 
7. Klik 'Simpan Perubahan'


## Multi Account Management

<<<<<<< Updated upstream:source/includes/_oy-tutorial.md
Multi Account Management (Children) is a feature that can help you handle complex relations between entities in your business in the Oy! Dashboard. Please contact our Sales or Account Management if you’re interested to use this feature.  
With this feature you will be able to :

1. Have a detailed report on transactions performed by all of children account
2. Distribute balance between the parent account to children account.
3. Use child account balance to disburse funds.
4. Receive money using Payment Link on behalf of child's username.
5. Free admin fee to disburse between related user.
=======
Mengelola banyak akun rekening bisnis untuk perusahaan yang memiliki franchise, toko cabang, hingga anak perusahaan dapat membuat sebagian besar pengusaha dan pemilik bisnis kehabisan tenaga. Terkadang proses pembukuan menjadi lebih rumit karena banyak data transaksi dan arus kas yang harus dikelola. 

Sebagai bentuk solusi, OY! Indonesia melalui OY! Business menghadirkan fitur Multi Entity yang memudahkan para pemilik bisnis untuk memantau arus kas bisnis, memeriksa transaksi, serta menerima dan mengirim uang. 
>>>>>>> Stashed changes:source/includes/id/_oy-tutorial.md

Multi Entity dari OY! Business memungkinkan pemilik bisnis untuk memiliki lebih dari 1 akun sekunder OY! Business. Akun sekunder ini disebut sebagai Sub-entity Account yang berada di dalam 1 akun utama yang bernama Main Entity untuk dikelola dan dikendalikan.

Dengan fitur ini, Anda akan dapat;

<<<<<<< Updated upstream:source/includes/_oy-tutorial.md
- Register an account on the [OY! dashboard](https://business.oyindonesia.com/register?)
- Activate your account through the activation link sent via email
- Upgrade your account
- Upgrade request is approved
- Contact our sales or account manager representatives to enable the feature
=======
1. Memiliki laporan terperinci tentang transaksi yang dilakukan oleh semua Sub-entity.
2. Mentransfer saldo antara akun Main-entity ke akun Sub-entity.
3. Menggunakan saldo Sub-entity anak untuk mengirimkan dana.
4. Menerima uang menggunakan Link Pembayaran atas nama Sub-entity.
5. Tidak dikenakan biaya admin untuk mentransfer saldo antar entity.
>>>>>>> Stashed changes:source/includes/id/_oy-tutorial.md


<<<<<<< Updated upstream:source/includes/_oy-tutorial.md
To properly used Multi Account Management, we required several accounts to be linked together. Each account can be used independently, and each account needs to pass the KYB to be used fully.

**A. Link to Child Account**

1. **For Parent Account**

To add a new child as a parent account please 1) Log in to Dashboard with parent credential 2) Go to Child → List of Children
=======
### **Cara Mendaftar dan Mengaktifkan Fitur**

1. Buat Akun OY! Indonesia
2. Aktifkan akun Anda melalui link aktivasi yang dikirim melalui email.
3. Verifikasi bisnis Anda.
4. Tunggu hingga bisnis Anda terverifikasi oleh tim kami.
5. Hubungi perwakilan tim kami untuk mengaktifkan fitur Multi Entity


### **Cara menggunakan Fitur Multi Entity Management**

Untuk menggunakan Multi Entity Management, Anda perlu menghubungkan beberapa akun. Setiap akun dapat digunakan secara independen, dan ada beberapa persyaratan yang harus Anda penuhi untuk menggunakan fitur ini. Silakan hubungi tim kami untuk informasi lebih lanjut.


**Menghubungkan Antar Akun**

1. **Jika Anda adalah Main-Entity**

Untuk menambahkan sub-entity, lakukan langkah berikut;
  1. Masuk ke dashboard dengan akun utama 
  2. Pergi ke menu Multi Entity lalu klik tombol “Tambah Sub-Entity”

>>>>>>> Stashed changes:source/includes/id/_oy-tutorial.md

![As Parent - Subs - 1. Initial.png](../images/As_Parent_Subs_1_Initial(2).png)

<<<<<<< Updated upstream:source/includes/_oy-tutorial.md
1. Click the “+ Add Child”
2. Fill in the username for the child you wished to connect. You can find your username from the menu Accounts → User Profile in the Username section
3. Click Add and then if the account is found in the system you can confirm by clicking Connect in the confirmation window

![Image: As Parent - Subs - 6. Add Child - Type Username](../images/As_Parent_Subs_6_Add_Subsidiary_Type_Username.png) ![Image: As Parent - Subs - 7a. Existing Username - Not Connected with any parent](../images/As_Parent_Subs_Existing_Username_Not_Connected_with_any_parent.png)
After confirming, the request will be sent to the respective account to be accepted

1. **For Child Account**

To receive a request from a parent company, please 1) Log in to dashboard with child credential 2) Go to Transaction Report → Account Statement
![Image: As Child - AccState - 2b. Waiting approval](../images/As_Child_AccState_2b_Waiting_approval.png)

1. Click the “Check All request” button that can be found near the top right corner of the page
2. You will see the incoming request to be the parent account for your account, then you can choose which account is the correct account for the parent by click Accept in the respective account and confirmation window

![Image: As Child - AccState - 4b. 2 Requests to connect.png](../images/As_Child_AccState_4b_2_Requests_to_connect.png)![Image: As Child - AccState - 4e. Confirmation to connect](../images/As_Child_AccState_4e_Confirmation_to_connect.png)

3. After successfully received the parent request to connect, you will find your parent information near the top right corner of your page, and you are now connected as a parent-child account

![Image: As Child - AccState - 4h. Success add new head company](../images/As_Child_AccState_4h_Success_add_new_head_company.png)

**B. Topup money to a child account**

After having a working parent-child account, you can transfer money to the child account by accessing the menu Children → List of Children
1. Find the account that you wished to top-up
2. Click the “+ Top Up” button
3. Fill in the amount you wish to top-up
4. Click the “Top Up Now” button to proceed
5. You can also do Top Up by transfer to one of the VA provided (see “How to Top Up Balance via VA”

![Image: As Parent - Subs - 5a. Top Up.png](../images/As_Parent_Subs_5a_Top_Up.png)

**C. Disburse Money using child balance**

In Multi Account Management, you will be able to do disbursement using your children account on their behalf. To do this you could

1. Access the Bulk Disbursement menu and clicking on “+ Create Disbursement” button
2. Select your child balance as a source of fund to do disbursement by selecting “My Subsdiary Balance” and choose the appropriate account.
3. After choosing the balance you could proceed to do disbursement just like regular disbursement
=======
3. Isi username sub-entity yang ingin Anda hubungkan. Anda dapat menemukan username Anda dari menu Akun → Profil Pengguna dalam bagian username. 
4. Klik Tombol “Tambah”, lalu jika akun ada di sistem, akan ada konfirmasi untuk menghubungkan. 


![Image: As Main Entity - Subs - 6. Add Child - Type Username](../images/MEM_Add_Sub_Entity_2.jpg) 

5. Setelah mengonfirmasi, permintaan akan dikirimkan ke akun yang bersangkutan untuk diterima.

2. **Jika Anda adalah Sub-Entity**

Untuk menerima permintaan dari main entity, silakan masuk ke dashboard dengan akun sub-entity, kemudian buka menu “Laporan Transaksi” → “Laporan Transaksi Rekening”.

![Image: As Child - AccState - 2b. Waiting approval](../images/As_Child_AccState_2b_Waiting_approval.png)

1. Klik tombol "Cek Permintaan" yang dapat ditemukan di dekat sudut kanan atas halaman.
2. Anda akan melihat permintaan yang masuk untuk dihubungkan menjadi main entity untuk akun Anda, kemudian Anda dapat memilih akun mana yang merupakan akun yang benar untuk main entity dengan mengklik “Terima” pada akun yang sesuai. 


![Image: As Child - AccState - 4b. 2 Requests to connect.png](../images/As_Child_AccState_4b_2_Requests_to_connect.png)![Image: As Child - AccState - 4e. Confirmation to connect](../images/As_Child_AccState_4e_Confirmation_to_connect.png)

3. Setelah berhasil menerima permintaan dari main entity untuk terhubung, Anda akan menemukan informasi main entity Anda di dekat sudut kanan atas halaman Anda, dan selamat, Anda sekarang sudah terhubung! 

![Image: As Child - AccState - 4h. Success add new head company](../images/As_Child_AccState_4h_Success_add_new_head_company.png)

**B. Mengisi Saldo ke akun Sub-Entity**

Setelah terhubung dengan sub-entity Anda, Anda dapat mengisi ulang saldo akun sub-entity dengan mengakses menu Multi Entity → Daftar sub-entity, lalu ikuti langkah berikut;
  1. Temukan akun yang ingin Anda isi saldonya
  2. Klik tombol "Isi Ulang" 
  3. Isi jumlah yang ingin Anda isi 
  4. Klik tombol "Isi Ulang Sekarang" untuk melanjutkan 
  5. Anda juga dapat melakukan pengisian ulang dengan mentransfer ke salah satu Virtual Account yang disediakan (lihat "Cara Mengisi Saldo melalui VA")


![Image: As Parent - Subs - 5a. Top Up.png](../images/As_Parent_Subs_5a_Top_Up.png)

**C. Mengirim Uang Menggunakan Saldo Sub-Entity**

Dengan menu Multi Entity, Anda dapat melakukan pengiriman uang menggunakan akun sub-entity atas nama mereka. Untuk melakukannya, Anda dapat mengikuti langkah-langkah berikut:

  1. Akses menu Multitransfer dan klik tombol "+ Buat Transaksi Baru"
  2. Pilih saldo sub-entity Anda sebagai sumber dana untuk melakukan pengiriman uang dengan memilih "Saldo Sub-entity Saya" dan pilih akun yang sesuai.
  3. Setelah memilih, Anda dapat melanjutkan untuk melakukan pengiriman uang seperti biasa.

>>>>>>> Stashed changes:source/includes/id/_oy-tutorial.md

![Image: Choose SoF - 2. Choose SoF subsidiary.png](images/desktop_disbursement_child_balance_2.png) 
![Image: Choose SoF - 4. Type or search sub.png](images/desktop_disbursement_child_balance.png)

<<<<<<< Updated upstream:source/includes/_oy-tutorial.md
**D. Create a payment link on behalf of a child account**

With this feature, you will be able to accept payment from your users through Payment Link created on behalf of a child account. When your users make a successful transaction, the transaction will be recorded in the Child Account's balance. As a parent, you are equipped with the ability to view the Child Account's balance and transaction list anytime through Children → Children Statement. 

The flow will be as follows:

![MAM Payment Link](images/mam_flow_payment_link.png)

Follow the below steps to create a payment link on behalf of a child account:
=======
**D. Membuat Link Pembayaran Atas Nama Sub-Entity**

Dengan fitur ini, Anda akan dapat menerima pembayaran dari pelanggan Anda melalui Link Pembayaran yang dibuat atas nama akun sub-entity Anda. Ketika pelanggan Anda berhasil membayar, transaksi tersebut akan dicatat dalam saldo Akun Sub-entity. Sebagai main entity, Anda mempunyai akses untuk melihat saldo dan daftar transaksi Akun Sub-entity kapan saja.

Silakan ikuti langkah-langkah berikut untuk membuat link pembayaran atas nama akun sub-entity;
>>>>>>> Stashed changes:source/includes/id/_oy-tutorial.md

***Melalui API***

<<<<<<< Updated upstream:source/includes/_oy-tutorial.md
Hit [API Create Payment Link](https://api-docs.oyindonesia.com/#api-create-payment-link-fund-acceptance) and fill in "child_balance" parameter with the username of a child account that you will set as the balance destination for the transaction. When your users make a successful transaction, the transaction will be recorded in the specified Child Account's balance
=======
Silakan hit [API Link Pembayaran](https://api-docs.oyindonesia.com/#api-create-payment-link-fund-acceptance) dan isi parameter "child_balance" dengan nama pengguna akun sub-entity yang akan Anda tetapkan sebagai tujuan saldo masuk. Ketika pelanggan Anda berhasil melakukan pembayaran, transaksi tersebut akan masuk ke dalam saldo Akun Sub-entity yang ditentukan.
>>>>>>> Stashed changes:source/includes/id/_oy-tutorial.md

***Melalui Dasbor***
 
<<<<<<< Updated upstream:source/includes/_oy-tutorial.md
1. Click Payment Link -> One-time (if you want to create a one-time payment link) or Click Payment Link -> Reusable (if you want to create a reusable payment link)
2. Click "Create One-Time Link" (for one-time payment link) or click "Create Reusable Link" (for reusable payment link)
3. You will see a pop-up to proceed with the creation process
4. Fill in "Balance Destination" with "My Balance" (if the balance destination of the transaction is your own) or "Child Balance" (if the balance destination of the transaction is your child's). If you select "Child Balance", you will see a dropdown to select a username of the child account. Only 1 child account is currently allowed to be a balance destination
5. If you select "Child Balance", when your users make a successful transaction, the transaction will be recorded in the specified Child Account's balance.
=======
1. Klik Link Pembayaran -> Sekali Pakai (jika Anda ingin membuat link pembayaran sekali pakai) atau Klik Tautan Pembayaran -> Pakai Berulang (jika Anda ingin membuat link pembayaran yang dapat digunakan berulang kali.)
2. Klik "Buat Link Pembayaran" (untuk tautan pembayaran satu kali) atau klik "Buat Link Pakai Berulang" (untuk link pembayaran yang dapat digunakan berulang kali). Anda akan melihat pop-up untuk melanjutkan proses pembuatan link pembayaran. 
3. Isi "Tujuan Saldo" dengan "Saldo Saya" (jika tujuan saldo transaksi adalah ke akun main entity) atau "Saldo Sub-entity" (jika tujuan saldo transaksi adalah sub-entity Anda). Jika Anda memilih "Saldo Sub-entity", Anda akan melihat dropdown untuk memilih username sub-entity. Anda hanya dapat memilih 1 akun sub-entity. 

>>>>>>> Stashed changes:source/includes/id/_oy-tutorial.md

![MAM Payment Link](images/one_time_pc_mam_flow.png)

Preview for one-time payment link

![MAM Payment Link](images/reusable_pc_mam_flow.png)

Preview for reusable payment link

## Integrasi dengan Xero

Integrasi OY! Bisnis dengan Xero bertujuan untuk memudahkan tim keuangan Anda untuk mendapatkan informasi keuangan yang mendalam. Dengan begitu, Anda dan tim jadi mengetahui kapan dan di mana Anda harus melakukan efisiensi terhadap biaya dan mendorong produktivitas. 

Setiap transaksi yang terjadi di OY! akan otomatis tercatat dalam akun Xero Anda, baik transaksi pengeluaran maupun pendapatan.

### Bagaimana Cara Kerjanya?

Setelah Anda berhasil menghubungkan akun Xero Anda di OY!, setiap transaksi yang terjadi di OY! akan otomatis tercatat di akun Xero Anda. Setelah koneksi berhasil, kami akan membuat rekening bank baru, yaitu rekening saldo OY!. Setiap transaksi yang terjadi di OY! akan dicatat dalam rekening bank tersebut, baik transaksi pengeluaran maupun pendapatan. Selanjutnya, Anda akan diminta untuk melakukan pemetaan chart of account Anda di Xero. Pemetaan chart of accounts Anda akan membantu kami untuk mengalokasikan transaksi Anda ke accounts yang tepat.

### Menghubungkan Akun Xero Anda

- Masuk ke dashboard, lalu pilih menu Integrasi
![Integration Menu](images/xero/menu.png)

- Anda akan melihat pilihan app Xero. Klik "Hubungkan" untuk menghubungkan akun Xero Anda ke OY!. Anda akan diarahkan ke halaman login Xero. Setelah Anda berhasil masuk ke Xero, akan muncul notifikasi.
![Product List](images/xero/product_list.png)

Pratinjau untuk halaman login Xero;
![Xero's Login Page](images/xero/login_xero.png)
![Consent Page](images/xero/consent_page.png)

Pratinjau notifikasi OY!;
![Notification](images/xero/connect_success_notification.png)

- Setelah berhasil terhubung ke Xero, kami akan membuat rekening bank baru dalam akun Xero Anda, dengan nama "OY! Indonesia Balance" di mana setiap transaksi yang terjadi di OY! akan dicatat di sana.
![New Account](images/xero/new_account.png)

### Memetakan Chart of Account Anda

- Setelah Anda berhasil terhubung ke Xero, Anda akan diarahkan ke halaman untuk melakukan pemetaan chart of account Anda.
![Configure Account Page](images/xero/coa_mapping.png)

- Kemudian, lakukan pemetaan setiap produk ke account yang sesuai. Setiap transaksi yang menggunakan setiap produk akan dimasukkan ke dalam chart of account yang Anda tentukan di halaman ini.
![Mapping Modal](images/xero/coa_mapping_modal.png)
![Mapping Modal](images/xero/coa_mapping_modal_2.png)

Catatan: Khusus untuk produk Multitransfer, Anda dapat menentukan chart of account nanti dalam proses pembuatan transaksi pada halaman "Masukkan Detail" di langkah ke-3, pada kolom kategori transaksi.

![Bulk Disbursement CoA](images/desktop_accountingapp_bulkdisbursement.png)

- Anda dapat mengubah pemetaanchart of account kapan saja sesuai kebutuhan, cukup pergi ke menu Integrasi > Xero > Konfigurasi.

### Record Transaction to Xero

- Now, your OY! account has been connected to your Xero account and each products has been mapped to its corresponding Chart of Account.
- Any success transaction that happened in OY! will be recorded to Xero with the corresponding Account you defined in Mapping Account menu.
- Transaction in OY! will be treated as SPEND or RECEIVE money transaction in a bank account (OY! Balance). 
- Each transaction will contains of two rows. Row 1 contains of amount of transaction where row 2 contains of admin fee.
- In this version, any tax will be excluded. Means that you will need to input manually the tax invoice you obtained from OY! team to your Xero.
![Recorded Transaction](images/xero/recorded_transaction.png)
![Recorded Transaction](images/xero/recorded_transaction_2.png)


### Disconnected your Xero 

1. To disconnect your Xero account from OY!, open the Integration menu on the sidebar. Then select “Disconnect”.
2. Then, you will be disconnected from Xero. Any transaction that you execute via OY! will not be recorded into Xero.

## Accurate Integration
Accurate is a local accounting platform that is mainly used by companies in Indonesia. We have integrated our system to Accurate system in order to help you optimize your workflow. By connecting your OY! account to your Accurate account, you do not have to log in to your Accurate account. This means that you do not have to manually record your transaction that happened in OY! to Accurate. You will get a seamless experience of recording your transaction.

### How does it works?
Once you have connected your Accurate account in OY!, any transaction that happened in OY! will be automatically recorded to your Accurate account. Upon successful connection, we will trigger the creation of a new Bank Account, which is OY! Balance Bank Account. Transactions that happened in OY! will be recorded in that bank account, to PEMASUKAN or PENGELUARAN module. Then, you will be required to map your Accurate’s Chart of Account (in Accurate, it is Akun Perkiraan). Mapping your Chart of Accounts will help us to put your transaction into the correct Account.

### Connect your Accurate
1. Login to your OY! dashboard. In the sidebar, select the Integration menu.
2. You will see Accurate menu. Click “Connect” to connect your Accurate account to OY!. You will be redirected to Accurate’s login page. 

![Connect Accurate](images/desktop_accurate_connect.png)

3. After login to your Accurate account, click Allow to allow conection between OY! and Accurate.
![User Consent Accurate](images/desktop_accurate_authorize.png)

4. Next, please select an Accurate database that you want to connect with your OY! account.
![Accurate Select Database](images/desktop_accurate_select_database.png)

5. Once you have successfully connected to Accurate, a notification in your OY! dashboard will appear and you can see your status is now "Connected/Terhubung".

![Accurate Connected](images/desktop_accurate_connected_status.png)

6. Upon success connecting to Accurate, we will create a new Bank Account into your Accurate account, named “OY! balance” in which any transaction that happened in OY! will be recorded there. Your current OY! balance will also be mapped there.

7. In your Accurate Dashboard, you can see that OY! Indonesia app will be listed in the Accurate Store >> Aplikasi Saya menu.
![Accurate Listing](images/desktop_accurate_listing.png)
![Accurate Aplikasi saya](images/desktop_accurate_aplikasisaya.png)

8. Note: A fee of IDR 20k/month will be added to your Accurate billing.

### Map your Chart of Account (Akun Perkiraan)

1. Click on "Configure" to map your Chart of Account (Akun Perkiraan).
2. Then, map each product to the corresponding Account. Any transaction using each product will be put into the Chart of Accounts you defined on this page. 

![Accurate Config COA](images/desktop_accurate_config_coa.png)

Note: Special for Bulk Disbursement product, you can define the Chart of Account later in the campaign creation process - Step 3 Input Detail page. In the Transaction Category field.

![Bulk Disbursement CoA](images/desktop_accountingapp_bulkdisbursement.png)

3. You can change the CoA mapping anytime as needed, just go to Integration >> Accurate >> Configure.


### Record Transaction to Accurate
1. Now, your OY! account has been connected to your Accurate account and each product has been mapped to its corresponding Chart of Account.
2. Any successful transaction that happened in OY! will be recorded to Accurate with the corresponding Account you defined in the Mapping Account menu.
3. Transactions in OY! will be recorded in Pengeluaran or Pemasukan module, under OY! Balance bank account. It will also credited/debited your OY! Balance Bank Account. 
4. Note: For some reasons, we do not map Top up and Withdraw balance transactions to Jurnal. Therefore, you should adjust your bank’s Cash Bank account balance as well as OY! Indonesia Cash Bank account balance in your Accurate dashboard everytime you execute top up and withdraw transactions.


### Disconnected your Accurate 
1. To disconnect your Accurate account from OY!, open the Integration menu on the sidebar. Then select “Disconnect”.

![Accurate Connected](images/desktop_accurate_connected_status.png)

2. Then, you will be disconnected from Accurate. Any transaction that you execute via OY! will not be recorded in Accurate.
3. Note: To remove the bill, please make sure you also uninstall OY! app in your Accurate dashboard.


## Jurnal Integration
Jurnal is a local accounting platform that is mainly used by companies in Indonesia. We have integrated our system to the Jurnal system in order to help you optimize your workflow. By connecting your OY! Account, you do not have to manually record your transaction that happened in OY! to Jurnal. You will get a seamless experience of recording your transaction.

### How does it work?
Once you have connected your Jurnal account in OY!, any transaction that happened in OY! will be automatically recorded to your Jurnal account. Upon successful connection, we will trigger the creation of a new Bank Account, which is OY! Balance Bank Account. You will be required to map your Jurnal’s Chart of Account. Mapping your Chart of Accounts will help us to put your transaction into the correct Account. Transactions that happened in OY! will be recorded in that bank account, into the EXPENSES or SALES INVOICE modules.

### Connect your Jurnal
1. Before connecting your Jurnal account, you need to log in to your Jurnal account in your browser.

![Jurnal Login](images/jurnal_login.png)

2. Login to your OY! dashboard. In the sidebar, select the "Integration" menu.

3. You will see the Jurnal menu. Click “Connect” to connect your Jurnal account to OY!. 

![Jurnal Connect](images/jurnal_integration_menu.png)


4. There will be a page to ask for your consent regarding this connection process. Make sure to select OY! Indonesia. Click Allow to allow connection between OY! and Jurnal.

![Jurnal Authorization](images/jurnal_authorization_page.png)

5. Once you have successfully connected to Jurnal, a notification in your OY! dashboard will appear and you can see your status is now "Connected/ Terhubung".

![Jurnal Connection Success](images/jurnal_connection_success.png)

![Jurnal Notification](images/jurnal_success_notif.png)

![Jurnal Connection Status](images/jurnal_connection_status.png)

6. Upon success connecting to Jurnal, we will create a new Bank Account into your Jurnal account, named “OY! Balance”. Any transaction that happened in OY! will be recorded under that bank account. Your current OY! balance will be mapped into your OY! Balance Cash Bank Account as a bank deposit transaction. 

![Jurnal OY! Balance](images/jurnal_oy_balance.png)

### Map your Chart of Account
1. Click on "Configure" button in the "Integrasi" menu to map your Chart of Account.

2. Then, map each product to the corresponding Account. Any transaction using each product will be put into the Chart of Accounts you defined on this page.

![Jurnal COA Mapping](images/jurnal_coa_mapping.png)

3. Note: Special for Bulk Disbursement product, you can define the Chart of Account later in the campaign creation process - Step 3 Input Detail page. In the Transaction Category field.

![Jurnal Bulk Disburse COA](images/jurnal_bulk_disburse_coa.png)

4. You can change the CoA mapping anytime as needed, just go to Integration >> Jurnal >> Configure.

5. Note: currently, we do not include mapping and recording the PPN tax. The applied tax will be recorded to Admin Fee Chart of Account. We will update this document as soon as possible once we have included mapping PPN function.

### Record Transaction to Jurnal
1. Now, your OY! account has been connected to your Jurnal account and each product has been mapped to its corresponding Chart of Account.
2. Any successful transaction that happened in OY! will be recorded to Jurnal with the corresponding Account you defined in the Mapping Account menu. Transactions from OY! will be recorded in the Expenses or Sales Invoice module, under OY! Balance bank account and it will credited/debited your OY! balance bank account. Note: Admin Fee of Receive Money transactions will be recorded in the Expenses module.

3. In this image, we show you a Disbursement Transaction with CoA "Iklan & Promosi" and admin fee with CoA "Komisi & Fee". It is recorded into the "Expenses" module in your Jurnal account with status LUNAS.

![Jurnal Disburse Transaction](images/jurnal_bulk_disburse_txn.png)

4. Note: For some reasons, we do not map Top up and Withdraw balance transactions to Jurnal. Therefore, you should adjust your bank’s Cash Bank account balance as well as OY! Indonesia Cash Bank account balance in your Jurnal dashboard everytime you execute top up and withdraw transactions.

### Disconnected your Jurnal
1. To disconnect your Jurnal account from OY!, open the Integration menu on the sidebar. Then select “Disconnect”.
2. Then, you will be disconnected from Jurnal. Any transaction that you execute via OY! will not be recorded in Jurnal.














