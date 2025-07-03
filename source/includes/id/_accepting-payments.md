# Terima Uang
## Metode Pembayaran

### Transfer Bank - Virtual Account
#### Pendahuluan
Sebagai metode pembayaran digital, Anda bisa membuat virtual account (VA) untuk transaksi Anda. Pelanggan dapat langsung mentransfer pembayaran ke nomor VA yang dibuat oleh sistem. Anda akan menerima notifikasi (callback) dari OY! saat transaksi sudah selesai. Untuk saat ini, OY! mendukung VA dari 8 bank:

1. Bank Central Asia (BCA)
2. Bank Rakyat Indonesia (BRI)
3. Bank Mandiri 
4. Bank Negara Indonesia (BNI)
5. Bank CIMB & CIMB Syariah 
6. Bank SMBC 
7. Bank Syariah Indonesia (BSI)
8. Bank Permata & Permata Syariah

#### Ketersediaan Fitur VA
| Fitur VA          |       Link Pembayaran        | VA Aggregator | E-Wallet Aggregator | Routing Pembayaran |
|:------------------|:----------------------------:|:-------------:|:-------------------:|:------------------:|
| Open Amount       |              ❌               |       ✅       |          ❌          |         ❌          |
| Closed Amount     |              ✅               |       ✅       |          ❌          |         ✅          |
| VA Pakai Berulang |              ❌               |       ✅       |          ❌          |         ✅          |
| VA Sekali Pakai   |              ✅               |       ✅       |          ❌          |         ✅          |
| Statis            |              ❌               |       ✅       |          ❌          |         ✅          |
| Dinamis           | ✅ (otomatis diset ke 24 jam) |       ✅       |          ❌          |         ✅          |
| VA Nomor Custom   |              ❌               |       ✅       |          ❌          |         ❌          |

Di samping parameter dari Link Pembayaran (seperti open amount, statis, dsb), pelanggan Anda harus memasukkan nominal yang harus dibayarkan sebelum memilih metode pembayaran dan membayar transaksi.

Karena itu, jika pelanggan Anda memilih untuk membayar melalui VA - Link Pembayaran, nomor VA yang dihasilkan hanya dapat menerima jumlah yang telah ditentukan _(closed amount)_ dan hanya dapat digunakan untuk transaksi tersebut saja (_single-use_ VA). Nomor VA yang dihasilkan melalui Link Pembayaran akan kedaluwarsa dalam 24 jam setelah pelanggan Anda mengonfirmasi metode pembayaran.

Pelanggan Anda juga bisa membuat nomor VA khusus. Anda bisa menyesuaikan suffix (nomor belakang) dari nomor VA berdasarkan nomor HP atau nomor tagihan pelanggan. Sebagai contoh, jika nomor HP pelanggan adalah 08123456789, maka ketika membuat VA, nomor VA nya akan menjadi 23088123456789.

Untuk membuat VA yang bisa disesuaikan, Anda perlu mengakses endpoint URL yang berbeda dari endpoint pembuatan VA yang biasa, yaitu *[API Create Customized VA](https://api-docs.oyindonesia.com/#create-customized-va-va-aggregator)*. Endpoint API untuk [memperbarui](https://api-docs.oyindonesia.com/#update-customized-va-va-aggregator) dan [menonaktifkan](https://api-docs.oyindonesia.com/#deactivate-customized-va-va-aggregator) VA khusus juga berbeda dari VA yang tidak disesuaikan. Secara umum, VA khusus dapat menerima pembayaran berulang dan tidak ada waktu kedaluwarsa. Saat ini, fitur ini hanya tersedia untuk bank BRI dan CIMB. Untuk mengaktifkan fitur ini, silakan hubungi tim kami.

#### Detail Nominal Transaksi
**Nominal minimum per transaksi**

|Tipe Produk|Nominal minimum per transaksi |
| :-: | :-: |
|Link Pembayaran (Selain CIMB, Mandiri, Permata, BNI, BRI) |Rp 10,000 |
|Link Pembayaran (VA CIMB, Mandiri, Permata, BNI, BRI) |Rp 15,000 |
|Routing Pembayaran|Rp 10,000 |
|VA Aggregator (Closed Amount)|Rp 10,000 |
|VA Aggregator (Open Amount)|Tidak ada minimum |

**Nominal maksimum per transaksi**

|Nama Bank|Nominal maksimum per transaksi  |
| :-: | :-: |
|Bank Central Asia (BCA) |Rp 50,000,000|
|Bank Negara Indonesia (BNI) |Rp 50,000,000|
|Bank Rakyat Indonesia (BRI) |Rp 500,000,000|
|Bank Mandiri |Rp 500,000,000|
|Bank CIMB |Rp 500,000,000|
|Bank SMBC |Rp 100,000,000|
|Bank Syariah Indonesia (BSI)|Rp 50,000,000|
|Bank Permata|Rp 500,000,000|

#### Tersedia pada produk:

|Link Pembayaran|VA Aggregator|E-Wallet Aggregator|Routing Pembayaran|
| :-: | :-: | :-: | :-: |
|✅|✅|❌|✅|

#### Alur Pembayaran
![Bank Transfer Virtual Account Flow](../images/acceptingPayments/payment-methods/bank-transfer-virtual-account/payment-flow.webp)
#### Cara Mengaktifkan
1. Bank selain BCA

    Tidak ada proses _onboarding_ tambahan untuk mengaktifkan metode pembayaran virtual  account. Setelah produk Terima Uang aktif, Anda bisa menggunakan VA tanpa perlu dokumen tambahan. Anda cukup memberi tahu tim kami VA bank apa saja yang Anda perlukan.

2. BCA
   
    Anda perlu mengajukan dokumen tambahan untuk mengaktifkan VA BCA(termasuk, namun tidak terbatas pada, Nomor Pokok Wajib Pajak (NPWP) dan KTP). Proses _onboarding_ bank BCA membutuhkan waktu kurang lebih 14 sampai 30 hari kerja, tergantung pada penilaian bank dan kelengkapan dokumen.

#### Metode Pembayaran untuk Membayar VA


Pelanggan Anda dapat membayar tagihan VA melalui metode pembayaran berikut:


| Virtual Akun Bank               | SKN | RTGS | ATMs | Mobile Banking antar bank | Internet Banking antar bank | Internet Banking (jaringan bank sama) | Mobile Banking (jaringan bank sama) |
|---------------------------------|:---:|:----:|:----:|:-------------------------:|:---------------------------:|:-------------------------------------:|:-----------------------------------:|
| Bank Mandiri                    |  ✅  |  ✅   |  ✅   |             ✅             |              ✅              |                   ✅                   |                  ✅                  |
| BRI                             |  ✅  |  ✅   |  ✅   |             ✅             |              ✅              |                   ❌                   |                  ✅                  |
| BNI                             |  ✅  |  ✅   |  ✅   |             ✅             |              ✅              |                   ❌                   |                  ✅                  |
| Permata                         |  ✅  |  ✅   |  ✅   |             ✅             |              ✅              |                   ❌                   |                  ✅                  |
| CIMB Niaga / CIMB Niaga Syariah |  ✅  |  ✅   |  ✅   |             ✅             |              ❌              |                   ❌                   |                  ✅                  |
| BCA                             |  ❌  |  ❌   |  ✅   |             ✅             |              ✅              |                   ❌                   |                  ❌                  |
| SMBC                            |  ✅  |  ❌   |  ✅   |             ✅             |              ❌              |                   ❌                   |                  ✅                  |
| BSI                             |  ❌  |  ❌   |  ✅   |             ✅             |              ✅              |                   ✅                   |                  ✅                  |



#### Simulasi *Callback:*
1. Sebelum melakukan simulasi callback, perlu diingat bahwa Anda perlu membuat transaksi pada produk Terima Uang terlebih dahulu untuk mendapatkan nomor VA di mode Demo. 
2. Untuk mensimulasikan pembayaran yang berhasil, pastikan Anda sudah berada pada mode Demo. Untuk masuk mode Demo, klik tombol “Coba di Demo” pada dashboard Anda. 
3. Klik menu “Pengaturan”, lalu pilih pengaturan untuk “Callback Transfer Bank” 
4. Pilih “Virtual Account” sebagai tipe transaksi 
5. Pilih nama bank berdasarkan nomor VA yang telah Anda buat 
6. Masukkan nomor VA dan nominal pembayaran. Untuk VA tipe closed, Anda perlu memasukkan nominal yang Anda tentukan saat membuat VA tersebut 
7. Masukkan waktu pembayaran. Pastikan waktu pembayaran melebihi waktu pembuatan serta kurang dari waktu kedaluwarsa 
8. Anda dapat menggunakan fitur ini untuk semua transaksi VA pada semua produk “Terima Uang” OY!, (Aggregator VA, Link Pembayaran, Routing Pembayaran)


![Bank Transfer - Virtual Account Simulate Payment](../images/acceptingPayments/payment-methods/bank-transfer-virtual-account/simulating-callback.webp)


### Transfer Bank - Kode Unik
#### Pendahuluan
Kode Unik adalah tipe pembayaran melalui transfer bank dengan menambahkan atau mengurangi nominal berdasarkan kode unik (sebesar Rp 1-999) pada total nominal pembayaran Anda. Tidak seperti virtual account, di mana tiap pelanggan mendapatkan nomor VA yang berbeda, kode unik selalu menggunakan nomor rekening yang sama setiap bertransaksi. Nomor rekening yang digunakan akan menggunakan nama perusahaan OY! (PT. Dompet Harapan Bangsa), dan Anda tidak dapat menyesuaikan dengan rekening Anda sendiri. Metode kode unik juga mempunyai jam operasional, yaitu pada jam 03.00 - 20.30 WIB.

Ada dua metode yang dapat Anda gunakan untuk transaksi kode unik: metode penambahan atau pendekatan pengurangan.

1. Metode Penambahan

    Dengan menggunakan metode penambahan, nominal kode unik akan ditambahkan ke tagihan, sehingga pelanggan Anda akan membayar Rp 1-999 lebih banyak dari jumlah tagihan. Jumlah tambahan ini tidak akan masuk ke saldo Anda.

2. Metode Pengurangan 

    Dengan menggunakan metode pengurangan, jumlah tagihan akan dikurangi dengan nominal kode unik. Dalam hal ini, pelanggan Anda akan membayar Rp 1-999 lebih sedikit dari jumlah tagihan. Namun, jangan khawatir, jumlah yang masuk ke saldo Anda tidak akan terpengaruh oleh nominal kode unik ini.

Metode default pada kode unik adalah penambahan, tetapi Anda dapat meminta perubahan metode dengan menghubungi tim kami.

Sebagai contoh, jika Anda membuat transaksi kode unik dengan jumlah tagihan Rp 100.000, maka OY! akan membuat nominal kode unik untuk transaksi tersebut. Misalnya, nominal kode unik yang dihasilkan adalah Rp100.

Jika Anda menggunakan metode penambahan, pelanggan Anda akan membayar total Rp100.100.

Namun, jika Anda menggunakan metode pengurangan, pelanggan Anda akan membayar total Rp99.900.

Dengan kedua metode tersebut, jumlah yang akan masuk ke saldo Anda tetap Rp100.000.


#### Detail Pembayaran Kode Unik

|Bank|Kode Bank|Open Amount |Closed Amount |Waktu Pembayaran Maksimum|Jam Operasional|
| :-: | :-: | :-: | :-: | :-: | :-: |
|Bank Central Asia (BCA) |014|❌|✅|Max. 3 jam|03.00 - 20.30 WIB.|

#### Fitur Pembayaran

| Bank | Fitur Refund |
|:----:|:------------:|
| BCA  |      ❌       |


#### Ketersediaan Produk

|Bank |Link Pembayaran|Aggregator VA|Aggregator E-Wallet|Routing Pembayaran|
| :- | :-: | :-: | :-: | :-: |
|BCA |✅|❌|❌|✅|

#### Detail Nominal Transaksi

|Metode Kode Unik|Min. Nominal Transaksi |Max. Nominal Transaksi|
| :-: | :-: | :-: |
|Pengurangan|Rp 11,000 |Rp 500,000,000|
|Penambahan|Rp 10,000 |Rp 499,999,000|

#### Alur Transaksi Pembayaran
![Bank Transfer - Unique Code Flow](../images/acceptingPayments/payment-methods/bank-transfer-unique-code/payment-flow.webp)
#### Aktivasi
Anda hanya dapat menggunakan satu jenis transfer bank (virtual account / kode unik) per bank. Secara default, semua bank menggunakan virtual account. Untuk menerima pembayaran menggunakan kode unik, Anda perlu mengajukan permintaan ke OY! melalui perwakilan bisnis Anda atau tim support kami.
#### Payment

[Klik di sini untuk melihat tutorial pembayaran](https://drive.google.com/file/d/1D8cJEPFmVEN8-QVppiSm9RPa2vpb-b2H/view?usp=drive_link)

#### Simulasi Pembayaran
Untuk memahami lebih lanjut tentang transaksi menggunakan kode unik, Anda dapat mensimulasikan transaksi kode unik yang dibuat di mode Demo. Berikut adalah langkah-langkah untuk mensimulasikan pembayaran kode unik melalui dashboard OY!:

1. Buka dashboard OY! dan masuk ke mode Demo. 
2. Buka menu “Pengaturan” dan klik Callback Transfer Bank. 
3. Masukkan detail pembayaran untuk transaksi yang ingin Anda simulasikan:
   - Jenis Transaksi: Pilih Kode Unik.
   - Bank: Pilih bank tujuan.
   - Nomor Rekening: Masukkan nomor rekening bank OY! Indonesia yang Anda terima saat pembuatan transaksi.
   - Jumlah: Masukkan jumlah tagihan beserta nominal kode unik yang Anda terima saat pembuatan transaksi.
   - Tanggal dan Waktu Pembayaran: Pilih tanggal dan waktu yang diinginkan untuk pembayaran.
4. Setelah semua kolom diisi, Anda dapat mensimulasikan pembayaran dengan mengklik “Kirim Callback”. Jika pembayaran berhasil, notifikasi sukses akan ditampilkan di dalam dashboard. OY! juga akan mengirimkan callback ke URL callback yang telah Anda tentukan. Jika karena alasan tertentu Anda tidak menerima callback, silakan hubungi layanan pelanggan kami untuk membantu menyelesaikan masalah tersebut.

![Bank Transfer - Unique Code Simulate Payment](../images/acceptingPayments/payment-methods/bank-transfer-unique-code/simulating-callback.webp)

![Bank Transfer - Unique Code Amount Detail](../images/acceptingPayments/payment-methods/bank-transfer-unique-code/payment-link-view.webp)

### Kode QR (QRIS)
#### Pendahuluan
Quick Response Code Indonesian Standard (QRIS) adalah standar pembayaran QR di Indonesia yang dikembangkan oleh Bank Indonesia. Pembayaran dilakukan oleh pelanggan dengan memindai QR melalui aplikasi m-banking atau E-wallet mereka. Pembayaran QR sangat cocok untuk transaksi bernilai kecil karena menawarkan biaya yang terjangkau (0,7% per transaksi).

#### Fitur Pembayaran

| Provider QRIS | Fitur Refund |
|:-------------:|:------------:|
|     QRIS      |      ❌       |

#### Ketersediaan Produk

| Provider QRIS | Link Pembayaran | Aggregator VA | Aggregator E-Wallet | Routing Pembayaran |
|:-------------:|:---------------:|:-------------:|:-------------------:|:------------------:|
|     QRIS      |        ✅        |       ❌       |          ❌          |         ✅          |

#### Detail Nominal Transaksi

Jumlah maksimum per transaksi untuk QRIS adalah Rp10.000.000, sedangkan jumlah minimum per transaksi adalah Rp10.000, baik melalui Link Pembayaran maupun Routing Pembayaran. Jika Anda ingin menerima pembayaran di bawah Rp10.000, silakan hubungi [perwakilan bisnis kami](customerservice@oyindonesia.com).

#### Alur Pembayaran
![QRIS Flow](../images/acceptingPayments/payment-methods/qr-code-qris/payment-flow.webp)

#### Aktivasi
Untuk menerima pembayaran menggunakan QRIS, Anda perlu mendaftarkan merchant Anda terlebih dahulu ke provider QRIS. Pendaftaran dapat dilakukan melalui dashboard OY! dengan membuka halaman “Layanan Kami” dan mengklik tab “Metode Pembayaran”.

Berikut adalah persyaratan yang harus dipenuhi untuk mengajukan pendaftaran:

<table>
  <tr>
    <th colspan="2" valign="top" style="text-align:center">
      <p></p>
      <p><b>Persyaratan</b></p>
    </th>
    <th valign="top" halign="center" ><b>QRIS</b></th>
  </tr>
  <tr>
    <td colspan="2" valign="top">Kepemilikan Bisnis</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td rowspan="11" valign="top">KTP Direktur atau Pemilik Bisnis</td>
    <td valign="top">NIK</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Nama Lengkap</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Tanggal Lahir</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Pekerjaan </td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Jenis Kelamin</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Provinsi</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Kota</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Kecamatan </td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Kel/Desa</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Kode Pos</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Alamat Lengkap</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Email Direktur</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Nomor HP Direktur</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td rowspan="2" valign="top">NPWP</td>
    <td valign="top">Nomor NPWP</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Lampiran Dokumen</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td rowspan="2" valign="top">Person in Charge (PIC) - Direktur</td>
    <td valign="top">Nama Lengkap</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">
      <p>Jabatan</p>
      <p></p>
      <p></p>
    </td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td rowspan="4" valign="top">Person in Charge (PIC) - Non Direktur</td>
    <td valign="top">Nama Lengkap</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">
      <p>Jabatan</p>
      <p></p>
      <p></p>
    </td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Alamat Email</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Nomor HP</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Alur Pembayaran Bisnis</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Logo Bisnis (dalam format URL Gdrive))</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Link Website</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Nomor Induk Berusaha (sesuai dengan dokumen legalitas)</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Tanggal Pendirian Usaha (sesuai dengan dokumen legalitas)</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Tempat Pendirian Usaha (sesuai dengan dokumen legalitas)</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Perkiraan omzet per bulan menggunakan QRIS</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Perkiraan jumlah transaksi per bulan menggunakan QRIS</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
</table>


#### Pembayaran
[Klik di sini untuk melihat tutorial pembayaran](https://drive.google.com/file/d/1nwoMKH8iKaq8S89an0_bPlNQ11xMyo7T/view?usp=sharing)

#### Simulasi Pembayaran
Saat ini, demo simulasi pembayaran QRIS untuk transaksi belum tersedia.

### E-Wallet
#### Pendahuluan
E-wallet adalah metode pembayaran elektronik yang memungkinkan Anda membayar barang dan jasa tanpa memerlukan rekening bank atau uang tunai. E-wallet memiliki peran penting dalam pertumbuhan e-commerce, karena memungkinkan pengguna melakukan pembayaran dengan mudah tanpa harus berinteraksi dengan bank atau pihak ketiga lainnya. Saat ini, OY! mendukung pembayaran dari beberapa E-wallet di Indonesia, yaitu OVO, DANA, ShopeePay, dan LinkAja.

#### Detail Pembayaran E-Wallet

| Provider E-Wallet | Kode E-Wallet      | Waktu Berlaku | Tipe Alur                  | Bayar via Desktop | Bayar via Browser HP | Bayar via Aplikasi Provider |
|:-----------------:|:-------------------|:--------------|:---------------------------|:-----------------:|:--------------------:|-----------------------------|
|     ShopeePay     | shopeepay\_ewallet | 1 - 60 menit  | Dialihkan ke app (JumpApp) |         ❌         |          ❌           | ✅                           |
|        OVO        | ovo\_ewallet       | 55 detik      | Notifkasi                  |         ❌         |          ❌           | ✅                           |
|       DANA        | dana\_ewallet      | 1 - 60 menit  | Dialihkan ke app (JumpApp) |         ✅         |          ✅           | ✅                           |
|      LinkAja      | linkaja\_ewallet   | 5 menit       | Dialihkan ke app (JumpApp) |         ❌         |          ❌           | ✅                           |

Jumlah maksimum per transaksi untuk semua provider E-wallet adalah Rp10.000.000 untuk pelanggan yang telah melakukan KYC di aplikasi provider, dan Rp2.000.000 untuk pelanggan yang belum melakukan KYC.

#### Fitur Pembayaran

| Provider E-Wallet |  Fitur Refund   | Fitur Account Linking | Waktu Kedaluwarsa Link |  Perpanjangan Link  |
|:-----------------:|:---------------:|:---------------------:|:----------------------:|:-------------------:|
|     ShopeePay     |  Refund Penuh   |           ✅           |        5 tahun         | Setelah kedaluwarsa |
|        OVO        | Belum Didukung  |           ❌           |           -            |          -          |
|       DANA        | Refund Sebagian |           ✅           |        10 tahun        | Setelah kedaluwarsa |
|      LinkAja      |  Refund Penuh   |           ❌           |           -            |          -          |

#### Ketersediaan Produk

<table>
  <tr>
    <th rowspan="2" valign="top"><b>Provider E-Wallet</b></th>
    <th valign="top"><b>Link Pembayaran</b></th>
    <th valign="top"><b>Aggregator VA</b></th>
    <th valign="top"><b>Aggregator E-Wallet </b></th>
    <th colspan="2" valign="top"><b>Routing Pembayaran</b></th>
  </tr>
  <tr>
    <th valign="top"><b>Single Payment</b></th>
    <th valign="top"><b>-</b></th>
    <th valign="top"><b>Single Payment</b></th>
    <th valign="top"><b>Single Payment</b></th>
    <th valign="top"><b>Direct Payment</b></th>
  </tr>
  <tr>
    <td valign="top">ShopeePay</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">OVO</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">❌</td>
  </tr>
  <tr>
    <td valign="top">DANA</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">❌</td>
  </tr>
  <tr>
    <td valign="top">LinkAja</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">❌</td>
  </tr>
</table>

#### Tipe Pembayaran Beserta Alurnya
##### Single Payment
Single Payment adalah tipe pembayaran untuk pelanggan Anda membayar transaksi langsung di aplikasi E-wallet mereka. Single Payment memiliki 2 alur pembayaran, yaitu dialihkan ke app (JumpApp) dan notifikasi. Untuk mengerti alurnya, Anda dapat melihat bagan berikut:

![Bagan alur JumpApp](../images/acceptingPayments/payment-methods/e-wallet/payment-flow-single-payment-redirection.webp)

![Bagan alur Notifikasi](../images/acceptingPayments/payment-methods/e-wallet/payment-flow-single-payment-push-notification.webp)

##### Direct Payment
Tipe pembayaran Direct Payment membutuhkan pelanggan Anda untuk melakukan _account linking_. _Account linking_ mengharuskan pelanggan Anda untuk menghubungkan akun E-walletnya ke sistem Anda sebelum melakukan pembayaran. Direct Payment memberikan kemudahan kepada pelanggan, karena pelanggan tidak perlu diarahkan ke aplikasi provider E-wallet untuk melakukan pembayaran.

Dengan Direct Payment, pelanggan dapat melakukan transaksi dengan atau tanpa otorisasi (auto-debit). Transaksi dengan otorisasi memerlukan PIN atau OTP, sedangkan transaksi tanpa otorisasi memungkinkan sistem memotong saldo secara otomatis tanpa PIN atau OTP, cocok untuk kebutuhan seperti langganan _(subscription)_.

![E-wallet Direct Payment Flow](../images/acceptingPayments/payment-methods/e-wallet/payment-flow-direct-payment.webp)

#### Aktivasi
Untuk menerima pembayaran menggunakan E-wallet, Anda perlu mendaftarkan merchant Anda terlebih dahulu ke provider E-wallet. Pendaftaran dapat dilakukan melalui dashboard OY! dengan membuka halaman “Layanan Kami” dan mengklik tab “Metode Pembayaran”. OY! menyediakan pendaftaran secara _real-time_, sehingga Anda dapat langsung menerima pembayaran setelah selesai mengajukan pendaftaran. Berikut adalah persyaratan yang harus dipenuhi untuk mengajukan pendaftaran:

<table>
  <tr>
    <th colspan="2" rowspan="2" valign="top" style="text-align:center">
      <p></p>
      <p><b>Persyaratan</b></p>
    </th>
    <th colspan="4" valign="top" style="text-align:center"><b>Provider E-Wallet</b></th>
  </tr>
  <tr>
    <th valign="top"><b>ShopeePay</b></th>
    <th valign="top"><b>LinkAja</b></th>
    <th valign="top"><b>DANA</b></th>
    <th valign="top"><b>OVO</b></th>
  </tr>
  <tr>
    <td colspan="2" valign="top">Kepemilikan Bisnis</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td rowspan="11" valign="top">KTP Direktur atau Pemilik Bisnis</td>
    <td valign="top">KTP</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Nama Lengkap</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Tanggal Lahir</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Pekerjaan </td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Jenis Kelamin</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Provinsi</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Kota</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Kecamatan </td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Kel/Desa</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Kode Pos</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Alamat Lengkap</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Email Direktur</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Nomor HP Direktur</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">NPWP</td>
    <td valign="top">Tipe NPWP</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">❌</td>
  </tr>
  <tr>
    <td rowspan="8" valign="top"></td>
    <td valign="top">Nomor NPWP</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Lampiran Dokumen</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Provinsi</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">❌</td>
  </tr>
  <tr>
    <td valign="top">Kota</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">❌</td>
  </tr>
  <tr>
    <td valign="top">Kecamatan </td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">❌</td>
  </tr>
  <tr>
    <td valign="top">Kel/Desa</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">❌</td>
  </tr>
  <tr>
    <td valign="top">Kode Pos</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">❌</td>
  </tr>
  <tr>
    <td valign="top">Alamat Lengkap</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">❌</td>
  </tr>
  <tr>
    <td rowspan="4" valign="top">Person in Charge (PIC) - Non Direktur</td>
    <td valign="top">Nama Lengkap</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">
      <p>Jabatan</p>
      <p></p>
      <p></p>
    </td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Alamat Email</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Nomor HP</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Apakah Izin Usaha Anda Mempunyai Masa Berlaku?</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Alur Pembayaran Bisnis</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Logo Bisnis (dalam format URL Gdrive)</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Link Website</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Nomor Induk Berusaha (sesuai dengan dokumen legalitas)</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Nomor Induk Berusaha / Sertifikat Pendaftaran Perusahaan</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Tanggal Pendirian Usaha (sesuai dengan dokumen legalitas)</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Tempat Pendirian Usaha (sesuai dengan dokumen legalitas)</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Perkiraan omzet per bulan menggunakan E-Wallet</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Perkiraan jumlah transaksi per bulan menggunakan E-Wallet</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
</table>


#### Pembayaran
ShopeePay (Single Payment)

[Klik di sini untuk melihat tutorial pembayaran](https://drive.google.com/file/d/162WY4oEKwEcvgF7p_1lQ6VLHS4XGS-yI/view?usp=drive_link)

DANA

[Klik di sini untuk melihat tutorial pembayaran](https://drive.google.com/file/d/1c65gLG1gZdGKWhM6FazlqRA5qJVRhOYf/view?usp=drive_link)

LinkAja

[Klik di sini untuk melihat tutorial pembayaran](https://drive.google.com/file/d/1bN4-fVS0i1ygK96UVo7XcdnIhhQqzZi3/view?usp=drive_link)

OVO

[Klik di sini untuk melihat tutorial pembayaran](https://drive.google.com/file/d/1b_ImuHTQPGF1UE6jrtxhqRAShpbx8DDi/view?usp=sharing)

#### Simulasi Pembayaran
Untuk memahami lebih lanjut tentang transaksi menggunakan E-wallet, Anda dapat mensimulasikan transaksi E-wallet yang dibuat di mode Demo. Berikut adalah langkah-langkah untuk mensimulasikan pembayaran E-wallet melalui dashboard OY!:

1. Buka dashboard OY! dan masuk ke mode Demo. 
2. Buka menu “Pengaturan” dan klik Callback E-wallet. 
3. Masukkan detail pembayaran untuk transaksi yang ingin Anda simulasikan:
   1. Pilih provider E-wallet: ShopeePay, DANA, OVO, atau LinkAja 
   2. Masukkan nomor referensi transaksi. Untuk transaksi E-wallet yang dibuat via API E-wallet, Anda bisa menemukan nomor referensi pada “Menu API E-wallet”. Untuk lebih jelasnya, silakan lihat gambar di bawah. 
   3. Masukkan nominal transaksi yang ingin dibayar
4. Setelah semua kolom diisi, Anda dapat mensimulasikan pembayaran dengan mengklik “Kirim Callback”. Jika pembayaran berhasil, notifikasi sukses akan ditampilkan di dalam dashboard. OY! juga akan mengirimkan callback ke URL callback yang telah Anda tentukan. Jika karena alasan tertentu Anda tidak menerima callback, silakan hubungi layanan pelanggan kami untuk membantu menyelesaikan masalah tersebut.

![E-wallet Simulate Callback](../images/acceptingPayments/payment-methods/e-wallet/simulating-callback.webp)
![E-wallet See Reference Number](../images/acceptingPayments/payment-methods/e-wallet/preview-dashboard.webp)

Khusus untuk transaksi Link Pembayaran, Anda dapat mensimulasikan pembayaran dengan klik tombol “Bayar Tagihan” pada Link Pembayaran yang telah Anda buat.

![E-wallet Simulate Callback Payment Link](../images/acceptingPayments/payment-methods/e-wallet/simulating-callback.webp)

### Kartu Debit dan Kredit
#### Pendahuluan
OY! menyediakan metode pembayaran melalui kartu debit dan kredit untuk pelanggan Anda. Untuk saat ini, OY! mendukung kartu VISA dan Mastercard.

#### Detail Fitur
1. Transaksi aman dengan perlindungan 3DSecure – memberikan keamanan bagi Anda dan pelanggan Anda dari risiko penipuan. 
2. Mendukung berbagai jaringan global (Visa dan Mastercard) – mempermudah pemrosesan transaksi lokal dan internasional.

Untuk memastikan transaksi berjalan dengan lancar, pastikan pelanggan Anda telah:
1. Menyalakan 3DS sebagai metode otentikasi untuk setiap transaksi yang dilakukan dari kartu mereka 
2. Memiliki saldo atau limit kredit yang cukup untuk tiap transaksi 
3. Khusus untuk transaksi internasional, pastikan bank atau perusahaan penyedia kartu telah diizinkan untuk melakukan transaksi internasional

Nominal minimum untuk pembayaran kartu adalah Rp15.000 dan tidak ada nominal maximum untuk tiap transaksi. Sementara, limit kartu akan ditentukan oleh saldo atau limit kredit yang dimiliki tiap kartu.

#### Penjelasan untuk Transaksi Internasional

Pelanggan Anda dapat menggunakan kartu debit atau kredit yang diterbitkan di dalam atau pun luar negeri. Jika Anda berencana melakukan transaksi internasional, perlu diingat bahwa OY! hanya bisa melakukan transaksi dalam Rupiah. Artinya, pelanggan Anda tetap dapat menggunakan kartu internasional mereka untuk pembayaran, namun kartu tersebut akan tetap dikenakan biaya dalam Rupiah, dan penyelesaian dana ke saldo OY! akan dilakukan dalam Rupiah. Sementara, pada laporan tagihan penyedia kartu akan ditampilkan mata uang lokal mereka, beserta rate kurs dan biaya tambahan (jika ada) yang dikenakan oleh penyedia kartu.

Beberapa penyedia kartu mungkin tidak mengizinkan untuk melakukan transaksi internasional. Karena itu, penting untuk pelanggan Anda untuk mengecek apakah ada limitasi untuk meminimalisir transaksi ditolak oleh penyedia kartu.

#### Transactions Declined by Issuer

Ketika transaksi diajukan ke penyedia kartu pelanggan Anda, biasanya mereka memiliki sistem otomatis dan parameter yang membantu mereka dalam memutuskan apakah akan mengotorisasi transaksi tersebut atau tidak. Parameter ini dapat mencakup, namun tidak terbatas pada, aktivitas dari transaksi-transaksi sebelumnya, detail kartu; seperti tanggal kedaluwarsa dan CVV, serta ketersediaan saldo.

Meskipun semua detail kartu sudah benar, saldo kartu tersedia, dan 3DS sudah diaktifkan, masih ada kemungkinan transaksi ditolak oleh penyedia kartu. Terkadang, alasan penolakan yang diberikan terlalu “umum”. Jika itu terjadi, Anda dapat meminta pelanggan Anda untuk menggunakan kartu lain atau metode pembayaran yang lain. Selain itu, pelanggan dapat menghubungi penyedia kartu langsung untuk informasi lebih lanjut mengenai alasan yang lebih spesifik. Penyedia kartu kemungkinan besar tidak akan memberikan penjelasan penolakan melalui OY!.

#### Alur Transaksi Pembayaran

Alur via Link Pembayaran

![Cards Flow via Payment Link](../images/acceptingPayments/payment-methods/cards/payment-flow-via-payment-link.webp)

Alur via Routing Pembayaran

![Cards Flow via Payment Routing](../images/acceptingPayments/payment-methods/cards/payment-flow-via-payment-routing.webp)

#### Aktivasi

Untuk menerima pembayaran menggunakan kartu debit atau kredit, Anda perlu menghubungi [perwakilan bisnis kami](customerservice@oyindonesia.com) untuk informasi lebih lanjut mengenai proses aktivasi.

|Persyaratan |Kartu Debit atau Kredit|
| :-: | :-: |
|Formulir Kelayakan Partner|✅|
|Formulir Permintaan Partner ke Bank |✅|
|Perjanjian Kerja Sama dengan OY! |✅|
|Profil Perusahaan |✅|
|Izin Operasional (jika berlaku)|✅|
|Alur KYC |✅|
|Daftar User|✅| 


#### Simulasi Pembayaran
1. Buka dashboard OY! dan masuk ke mode Demo 
2. Buat transaksi Link Pembayaran. Pastikan Anda memilih “Kartu Debit/Kredit” sebagai opsi metode pembayaran 
3. Buka link pembayaran melalui browser 
4. Pilih “Kartu Debit/Kredit” sebagai metode pembayaran Anda. Selanjutnya, Anda akan diarahkan ke halaman untuk mengisi detail kartu. Jika tidak diarahkan secara otomatis, silakan klik tombol “Pembayaran dengan Kartu” 
5. Isi detail kartu dengan informasi sebagai berikut:
   - Nomor Kartu: 2223000000000007 
   - Masa Aktif Kartu: 01/39 
   - CVV Kartu: 100 
   - Nama Pemegang Kartu: Testing 
6. Isi email dan nomor HP 
7. Klik Bayar 
8. Anda akan diarahkan ke halaman untuk simulasi otentikasi 3DS. (pada pembayaran sebenarnya, Anda akan menerima OTP yang dikirimkan ke nomor HP Anda oleh bank). Pilih dari menu dropdown untuk transaksi yang berhasil diautentikasi (catatan: Anda juga dapat mensimulasikan transaksi yang ditolak dengan memilih opsi otentikasi gagal dari menu dropdown). 
9. Transaksi sukses

## Link Pembayaran
Link Pembayaran adalah halaman pembayaran yang membantu bisnis Anda untuk menerima pembayaran online dengan mudah dan aman. Anda dapat membagikan link ke pelanggan dan mereka akan memilih beberapa metode pembayaran yang didukung oleh OY! dalam halaman Link Pembayaran. OY! mendukung lebih dari 17 metode pembayaran, seperti transfer bank, E-wallet, QRIS, serta kartu debit dan kredit. Link Pembayaran dapat dibuat tanpa integrasi. Tetapi, jika Anda ingin membuat Link Pembayaran dari website atau aplikasi Anda, OY! juga menyediakan API Link Pembayaran.

Terdapat 2 tipe Link Pembayaran, yaitu:

|Tipe Link Pembayaran|Penjelasan|Contoh Penggunaan|
| :- | :- | :- |
|Sekali Pakai|Satu link untuk menerima satu kali pembayaran.|Transaksi sekali bayar|
|Pakai Berulang|Satu link untuk menerima pembayaran berulang, bisa diatur tanpa waktu kedaluwarsa.|Top up, Donasi|

![Payment Link Preview](../images/acceptingPayments/payment-link/flow/preview-payment-link.webp)

### Alur Link Pembayaran

![Payment Link One Time Flow](../images/acceptingPayments/payment-link/flow/payment-flow-one-time.webp)
![Payment Link Reusable Flow](../images/acceptingPayments/payment-link/flow/payment-flow-reusable.webp)

### Fitur Link Pembayaran
#### Penyesuaian Konfigurasi Link Pembayaran
Anda dapat mengatur konfigurasi Link Pembayaran Anda tergantung dari penggunaan transaksi bisnis Anda. Berikut adalah beberapa hal yang dapat Anda sesuaikan:

1. Daftar Metode Pembayaran
   
    Atur metode pembayaran yang Anda sediakan untuk pelanggan. Metode pembayaran yang tersedia adalah transfer bank (via virtual account dan kode unik), kartu debit dan kredit, E-wallet, dan QRIS 

2. Tipe Nominal 
   - Open Amount: Dapat menerima pembayaran dengan maksimal nominal yang telah Anda tentukan saat membuat Link Pembayaran. 
   - Closed Amount: Hanya menerima pembayaran dengan nominal yang telah Anda tentukan saat membuat Link Pembayaran.

3. Tipe Biaya Admin 
   - Termasuk dalam nominal: Biaya admin akan terpotong saat saldo sudah masuk ke rekening Anda. Dengan kata lain, biaya admin tersebut ditanggung oleh Anda (merchant). 
   - Tidak termasuk dalam nominal: Biaya admin akan ditambahkan ke dalam nominal yang akan dibayar (biaya admin ditanggung) oleh pelanggan Anda. Jadi, nominal yang ditagih ke pelanggan Anda adalah: Nominal pembayaran + biaya admin.

4. Masa Kedaluwarsa 
   - Secara default, masa kedaluwarsa link pembayaran adalah 24 jam. Tetapi, Anda dapat menyesuaikan masa kedaluwarsa tersebut berdasarkan hari dan jam, dengan maksimum waktu pembayaran adalah 31 hari + 23 jam. 
   - Khusus untuk Link Pembayaran berulang, Anda dapat mengatur waktu kedaluwarsa menjadi tanpa kedaluwarsa, yang artinya link tersebut tidak dapat kedaluwarsa, kecuali Anda menonaktifkannya secara manual.

Anda dapat mengatur konfigurasi default Anda agar tidak perlu mengisi kolom-kolom ini lagi saat membuat Link Pembayaran berikutnya. Simpan konfigurasi default Anda dengan mencentang opsi "Gunakan konfigurasi ini untuk transaksi selanjutnya" saat membuat Link Pembayaran.

![Payment Link Save Configuration](../images/acceptingPayments/payment-link/features/default-config.webp)

#### Memantau Transaksi via Dashboard
Semua transaksi Link Pembayaran yang Anda buat akan ditampilkan di Dashboard OY!. Akses menu "Link Pembayaran" → "Sekali Pakai"/"Pakai Berulang" untuk melihat daftar transaksi yang telah dibuat. Di dalam dashboard, Anda dapat melihat detail transaksi, termasuk informasi yang dimasukkan saat pembuatan, status transaksi, dan nomor referensi pembayaran*. Dashboard juga dilengkapi fitur pencarian, penyaringan, dan ekspor daftar transaksi ke berbagai format: Excel (.xlsx), PDF (.pdf), dan CSV (.csv).

![Payment Link Monitoring Transactions](../images/acceptingPayments/payment-link/features/dashboard-view.webp)

\*Nomor Referensi Pembayaran adalah nomor identitas pembayaran ketika pelanggan berhasil menyelesaikan pembayaran QRIS. Nomor referensi ini juga tercantum pada struk/bukti transaksi pelanggan. Fitur ini hanya tersedia untuk transaksi QRIS.

#### Sesuaikan Tampilan

Secara default, Link Pembayaran menggunakan tema bawaan OY!. Namun, tema bawaan ini mungkin tidak sesuai dengan branding perusahaan Anda. Untuk menjaga konsistensi brand bagi pelanggan Anda, Anda dapat menyesuaikan tampilan Link Pembayaran dengan melakukan hal-hal berikut:

1. Unggah logo perusahaan atau bisnis Anda sendiri 
2. Memilih warna tema 
3. Memilih warna tombol

Jika Anda menggunakan produk invoice OY!, penyesuaian tema Link Pembayaran juga akan diterapkan pada invoice, begitu pula sebaliknya.

Anda dapat menyesuaikan tema untuk Link Pembayaran melalui Dashboard OY!. Berikut langkah-langkahnya:

1. Masuk ke dashboard OY! melaui https://www.desktop-business.oyindonesia.com. Saat ini, menu penyesuaian hanya tersedia di versi web desktop (belum tersedia di web seluler dan aplikasi OY! Business). 
2. Masuk ke menu “Pengaturan dan klik opsi “Tampilan Link Pembayaran”. 
3. Untuk mengunggah logo perusahaan, Anda harus mengunggah dengan format (contoh: https://example.com/image.jpg). 
   - Jika Anda tidak memiliki URL logo, gunakan tools online seperti [snipboard.io](http://snipboard.io) atau [imgbb](https://imgbb.com/) untuk mengonversi logo Anda ke URL. 
   - Berikut adalah contoh URL yang benar:
     - Snipboard.io: https://i.snipboard.io/image.jpg
     - Imgbb: https://i.ibb.co/abcdef/image.jpg  
4. Untuk mengunggah warna header, pilih warna menggunakan _Color Picker_ atau ketik kode warna HEX di kolom “Warna Header” (contoh: #FFFFFF). 
5. Anda dapat memilih warna yang berbeda untuk tombol di dalam Link Pembayaran. Pilih warna dari _Color Picker_ atau ketik kode warna HEX di “Warna Tombol & Link”. 
6. Terakhir, simpan perubahan. Perubahan akan diterapkan secara real-time pada semua Link Pembayaran yang dibuat. Anda juga dapat melihat waktu terakhir Link Pembayaran diperbarui.

![Payment Link Customizing Theme](../images/acceptingPayments/payment-link/features/dashboard-customized-payment-link.webp)

Berikut adalah contoh Payment Link sebelum dan sesudah disesuaikan. Warna header dan tombol telah disesuaikan menjadi warna merah.

![Payment Link Customized](../images/acceptingPayments/payment-link/features/payment-link-after-changes.webp)

#### Bagikan _Payment Link_ Melalui Berbagai Metode
Anda dapat membagikan _Payment Link_ yang telah dibuat langsung kepada pelanggan Anda melalui berbagai metode, termasuk email, pesan WhatsApp, dan salin tautan.

***Email*** <br/>
Kirim Payment Link yang telah dibuat hingga ke 6 penerima email per Payment Link. Fitur ini tersedia untuk pembuatan melalui Dashboard dan API. Mengirimkan Payment Link melalui email tidak dikenakan biaya.

Anda dapat mengisi daftar penerima email di kolom “Email” pada bagian “Detail Pelanggan” saat membuat Payment Link melalui Dashboard OY!. Pisahkan beberapa alamat email dengan tanda titik koma (;).

Contoh: email1@company.com;email2@company.com;email3@company.com

Jika Anda menggunakan API Link Pembayaran, Anda dapat memasukkan penerima email di bawah parameter “customer_email” saat membuat Payment Link. Untuk informasi lebih lanjut, silakan merujuk ke bagian Pembuatan Payment Link di [API Docs](https://api-docs.oyindonesia.com/#api-create-payment-link-fund-acceptance).

***WhatsApp*** <br/>
Kirim Payment Link ke akun WhatsApp tanpa batas per Payment Link. Fitur ini hanya tersedia untuk pembuatan melalui API dan tidak didukung untuk pembuatan melalui  Dashboard. Secara default, fitur ini tidak diaktifkan secara otomatis setelah pendaftaran. Anda dapat menghubungi perwakilan bisnis Anda untuk mengaktifkan fitur ini.

Setelah berhasil membuat Payment Link, gunakan API Kirim WhatsApp untuk mengirim Payment Link yang telah dibuat ke pelanggan Anda. Untuk informasi lebih lanjut, silakan merujuk ke bagian [API Kirim WhatsApp](https://api-docs.oyindonesia.com/#api-send-whatsapp).

Pelanggan Anda akan menerima pesan WhatsApp dari akun WhatsApp OY! dengan format berikut:


Hi {{Nama Pelanggan}}, <br/>
Anda memiliki transaksi di {{Nama Brand Anda}} yang sedang menunggu pembayaran. Lakukan pembayaran sebelum {{Waktu Kedaluwarsa Payment Link}}.
Silakan klik link berikut untuk membayar: {{URL Payment Link}}

Mohon untuk tidak membalas pesan ini.

Contoh:

Hi John Doe, <br/>
Anda memiliki transaksi di Jane’s Store yang sedang menunggu pembayaran. Lakukan pembayaran sebelum 1-Feb-2022, 13.28.
Silakan klik link berikut untuk membayar: <https://pay.oyindonesia.com/123>

Mohon untuk tidak membalas pesan ini.

**Salin Link** <br/>
Setelah Anda membuat Link Pembayaran, Anda akan mendapatkan link URL yang dapat Anda salin dan bagikan kepada pelanggan Anda.

Jika Anda membuat Link Pembayaran melalui aplikasi OY! Business, Anda bisa menggunakan fitur “Bagikan” yang ada pada app dari perangkat mobile Anda ketika akan membagikan link.

![Payment Link Sharing Capabilities](../images/acceptingPayments/payment-link/features/copy-link.webp)

#### Bukti Pembayaran
Pelanggan dapat langsung melihat bukti pembayaran di dalam Link Pembayaran setelah pembayaran berhasil. Selain itu, pelanggan juga dapat menerima bukti pembayaran melalui email yang Anda masukkan saat membuat Link Pembayaran. Anda dapat mengatur pengiriman bukti pembayaran melalui email kepada pelanggan Anda dengan mengikuti langkah-langkah berikut:

1. Masuk ke dashboard OY!
2. Buka menu “Pengaturan” → “Notifikasi” 
3. Klik Tab “Terima Uang (ke Penerima)” 
4. Pilih “Aktifkan Notifikasi Transaksi yang Berhasil” 
5. Pilih logo yang akan tertera di email dalam format URL. Contoh: (https://example.com/image.jpg)
   - Jika Anda tidak memiliki URL logo, gunakan tools online seperti snipboard.io atau imgbb untuk mengonversi logo Anda ke URL. 
   - Berikut adalah contoh URL yang benar:
     - Snipboard.io: https://i.snipboard.io/image.jpg
     - Imgbb: https://i.ibb.co/abcdef/image.jpg
6. Simpan perubahan dengan mengklik "Simpan Perubahan"
7. Buat transaksi Link Pembayaran dan masukkan alamat email pelanggan pada kolom "Email" di bagian "Detail Pelanggan” saat membuat Link Pembayaran melalui Dashboard. Pisahkan beberapa email dengan menggunakan tanda titik koma (;). Contoh: email1@company.com;email2@company.com;email3@company.com
8. Pelanggan Anda akan menerima bukti pembayaran yang berhasil ke email yang terdaftar setelah pembayaran dilakukan.

![Payment Link Notifications to Payer](../images/acceptingPayments/payment-link/features/dashboard-notif-for-sender.webp)

Anda juga dapat menerima bukti pembayaran ke email Anda setelah pelanggan melakukan pembayaran. Untuk mengaturnya, silakan ikuti langkah-langkah berikut:

1. Masuk ke dashboard OY!
2. Buka menu “Pengaturan” -> “Notifikasi” 
3. Klik Tab “Terima Uang (ke Pengirim)” 
4. Pilih “Aktifkan Notifikasi Transaksi yang Berhasil” 
5. Masukkan link logo yang akan ditampilkan pada bukti pembayaran. 
6. Simpan perubahan dengan mengklik "Simpan Perubahan"
7. Anda akan menerima email untuk setiap pembayaran Link Pembayaran yang berhasil dilakukan oleh pelanggan Anda.

**Catatan**: Jika Anda tidak memasukkan alamat email pelanggan saat membuat Link Pembayaran, OY! tidak akan mengirimkan bukti melalui email meskipun konfigurasi notifikasi sudah diaktifkan.

![Payment Link Notifications to Merchant](../images/acceptingPayments/payment-link/features/dashboard-notif-for-receiver.webp)

#### Menyematkan Payment Link ke Website atau Aplikasi Anda
Anda dapat menyematkan Link Pembayaran langsung di website atau aplikasi Anda, sehingga pelanggan dapat menyelesaikan pembayaran tanpa dialihkan ke halaman lain.

Ada beberapa cara untuk menampilkan Link Pembayaran di halaman Anda, berikut beberapa saran yang bisa digunakan: Pop-up (Tengah), Pop-up (Kanan), Pop-up (Kiri), Slide (Kanan). Anda dapat membaca  [API Docs](https://api-docs.oyindonesia.com/#pop-seamless-payment-experience-fund-acceptance) untuk panduan implementasi lebih lanjut.

#### Refund Pembayaran ke Pelanggan
Jika pelanggan menerima produk yang tidak sesuai, seperti rusak, atau pesanan tidak terkirim, mereka dapat meminta pengembalian dana _(refund)_. Anda dapat langsung mengembalikan pembayaran ke akun pelanggan melalui dashboard OY!. Refund dapat bersifat penuh atau sebagian. Refund penuh mengembalikan seluruh jumlah pembayaran (100%). Refund sebagian mengembalikan jumlah tertentu sesuai permintaan.

Fitur ini tidak dipungut biaya apa pun. Namun, biaya admin dari pembayaran awal tidak akan dikembalikan oleh OY! ke saldo Anda.

Terdapat beberapa syarat yang harus dipenuhi untuk melakukan refund:

1. Refund hanya dapat dilakukan hingga 7 hari kalender setelah transaksi dinyatakan berhasil. 
2. Saldo Anda harus mencukupi agar kami dapat memotong jumlah transaksi yang akan dikembalikan. 
3. Refund hanya dapat dilakukan sekali untuk setiap transaksi yang berhasil, baik itu refund penuh maupun sebagian. 
4. Refund harus dilakukan pada jam operasional, sesuai dengan metode pembayaran yang digunakan. Lihat tabel di bawah untuk detailnya.

Saat ini, refund hanya tersedia untuk pembayaran melalui E-wallet sebagai berikut:

|Metode Pembayaran|Fitur Refund|Jam Operasional|
| :- | :- | :- |
|<p>DANA	</p><p></p>|Full, sebagian|00\.00 - 23.59 GMT+7|
|ShopeePay|Full|05\.00 - 23.59 GMT+7|
|LinkAja |Full|00\.00 - 23.59 GMT+7|
|OVO|Tidak didukung|-|

Berikut adalah langkah-langkah untuk melakukan refund transaksi Link Pembayaran:

1. Masuk ke dashboard OY! dengan username dan password yang telah Anda daftarkan. 
2. Buka menu “Link Pembayaran”, lalu pilih “Sekali Pakai” atau “Pakai Berulang”, sesuai dengan jenis transaksi Anda. 
3. Cari transaksi yang ingin direfund. Pada kolom “Tindakan”, klik tombol tiga titik, lalu pilih “Refund E-Wallet” untuk memproses refund. 
4. Jika refund tidak memenuhi syarat yang disebutkan sebelumnya, akan muncul pesan error, dan Anda tidak dapat melanjutkan proses refund. 
5. Jika transaksi memenuhi syarat refund, akan muncul pop-up untuk melanjutkan proses refund. 
6. Untuk refund sebagian, isi jumlah yang ingin dikembalikan. 
7. Pastikan saldo Anda mencukupi untuk melakukan refund. Jika saldo tidak mencukupi, akan muncul pesan error, dan Anda perlu mengisi saldo terlebih dahulu. 
8. Setelah refund berhasil, status transaksi akan berubah menjadi “Direfund”. 
9. Anda dapat melihat transaksi refund di halaman “Laporan Transaksi Rekening” dengan memilih “Laporan Transaksi” → “Laporan Transaksi Rekening”.

#### _Retry_ Notifikasi/_Callback_ untuk Pembayaran Berhasil

Jika Anda menggunakan API Link Pembayaran, OY! akan mengirimkan notifikasi/_callback_ ke sistem Anda setelah transaksi dinyatakan berhasil. Dengan demikian, Anda akan mendapatkan pemberitahuan saat pelanggan Anda telah menyelesaikan pembayaran. Namun, ada kemungkinan sistem Anda tidak menerima notifikasi.

Dengan mengaktifkan _Retry Callback_, OY! akan mencoba mengirimkan ulang _callback_ jika sistem Anda tidak menerimanya. Anda dapat meminta pengiriman ulang _callback_ melalui Retry Callback Manual atau Retry Callback Otomatis.

##### Cara Mengaktifkan _Retry Callback_ Manual

Jika Anda mengaktifkan fitur *Retry Callback*, sistem akan secara otomatis mengirim ulang *callback* yang gagal. Namun, Anda juga tetap bisa mengirim ulang *callback* secara manual melalui dashboard apabila diperlukan.  Berikut langkah-langkahnya:

1. Masuk ke akun Anda
2. Buka menu “Link Pembayaran”, lalu pilih “Sekali Pakai” atau “Pakai Berulang”, sesuai dengan jenis transaksi Anda.
3. Cari transaksi yang ingin dikirim ulang *callback*\-nya, lalu klik tombol tiga titik pada kolom “Tindakan”.
4. Pastikan Anda telah mengatur Callback URL melalui “Pengaturan” → “Opsi Developer” → “Konfigurasi Callback”.
5. Masukkan URL *callback* untuk produk yang ingin Anda aktifkan. Pastikan format URL benar, lalu validasi dengan mengklik “Validasi String URL”.
6. Pastikan Anda telah whitelist IP OY\! agar sistem Anda dapat menerima *callback*:
   * 54.151.191.85
   * 54.179.86.72
7. Klik “Kirim Ulang Callback” untuk mengirim ulang *callback*, dan ulangi proses ini sesuai kebutuhan.

![Payment Link Manual Retry Callback](../images/acceptingPayments/payment-link/features/dashboard-resend-callback.webp)

##### ***Retry Callback*** **Otomatis**

Retry Callback Otomatis dapat membantu Anda untuk menerima *callback* ulang dalam interval tertentu jika *callback* sebelumnya tidak berhasil diterima oleh sistem Anda. OY\! akan mencoba mengirim ulang hingga 5 kali. Jika setelah 5 kali percobaan *callback* masih gagal diterima, OY\! akan mengirim notifikasi melalui email. Anda dapat mendaftarkan hingga 6 penerima email, yang dapat dikonfigurasi melalui dashboard.

Interval *Callback*:

*Realtime* → 1 menit (setelah percobaan awal) → 2 menit (setelah percobaan pertama) → 13 menit (setelah percobaan kedua) → 47 menit (setelah percobaan ketiga)

OY\! mengirimkan *callback* pertama setelah transaksi berhasil. Jika sistem Anda gagal menerimanya, OY\! akan langsung mengirimkan *callback* ulang pertama. Jika *callback* masih gagal, OY\! akan mengirimkan *callback* ulang kedua 1 menit setelah *timeout* atau menerima respons gagal dari sistem Anda. Proses ini akan berlanjut hingga *callback* berhasil diterima atau semua percobaan *callback* telah dilakukan.

Retry Callback Otomatis  tidak aktif secara default. Berikut cara mengaktifkannya:

1. Masuk ke akun Anda
2. Buka menu “Pengaturan”, lalu pilih “Opsi Developer”.
3. Pilih tab “Konfigurasi Callback”.
4. Masukkan URL *callback* untuk produk yang ingin Anda aktifkan. Pastikan format URL benar, lalu validasi dengan mengklik “Validasi String URL”.
5. Untuk mengaktifkan Retry Callback Otomatis, centang “Aktifkan Retry Callback Otomatis” untuk produk terkait. Masukkan email penerima yang akan menerima notifikasi jika callback gagal setelah semua percobaan dilakukan.
6. Pastikan Anda telah whitelist IP OY\! agar sistem dapat menerima *callback*:
   - 54.151.191.85 
   - 54.179.86.72
7. Pastikan sistem Anda menerapkan *idempotency logic* dengan menggunakan parameter “tx\_ref\_number” sebagai *idempotency key* untuk mencegah *callback* yang sama diproses sebagai pembayaran yang berbeda.
8. Simpan perubahan

![Payment Link Automatic Retry Callback](../images/acceptingPayments/payment-link/features/dashboard-developer-option.webp)

#### Multi Entity Management
Multi Entity Management adalah fitur yang dapat membantu Anda mengelola beberapa akun OY\! dalam satu entitas. Akun yang berperan sebagai admin disebut Main Entity, sedangkan akun yang dapat dikendalikan oleh admin disebut Sub Entity.

Dengan fitur ini, Anda dapat menerima pembayaran dari pelanggan melalui Link Pembayaran yang dibuat atas nama Sub Entity. Ketika pengguna melakukan transaksi yang berhasil, transaksi tersebut akan dicatat dalam saldo Sub Entity. Sebagai Main Entity, Anda dapat melihat saldo dan daftar transaksi Sub Entity kapan saja melalui menu Multi Entity → Laporan Penyelesaian Sub Entity.

Silakan lihat bagian [Multi Entity Management](https://docs.oyindonesia.com/id/#multi-entity-management-tutorial-dashboard-oy) untuk informasi lebih lanjut.

### Cara Mengaktifkan Fitur Link Pembayaran
Berikut adalah panduan untuk mengaktifkan fitur Link Pembayaran:

1. Buat akun di OY\!
2. Lakukan verifikasi akun dengan mengisi formulir verifikasi. Pastikan Anda mencentang produk “Terima Uang”, karena Link Pembayaran termasuk dalam kategori produk ini.
3. Tim OY\! akan meninjau dan memverifikasi formulir serta dokumen yang telah Anda kirimkan.
4. Setelah verifikasi disetujui, atur informasi rekening bank penerima untuk menerima saldo dari OY\!.  
   **Catatan Penting**: Pastikan informasi rekening bank penerima benar, karena Anda hanya dapat mengaturnya sekali saja melalui dashboard  demi alasan keamanan.
5. Secara default, Anda akan mendapatkan beberapa metode pembayaran, termasuk semua transfer bank (kecuali BCA).
6. Metode pembayaran lain seperti QRIS, E-Wallet, dan BCA memerlukan proses *onboarding* tambahan agar dapat digunakan. Silakan lihat panduan lebih lanjut di:
   * [Aktivasi E-Wallet](https://docs.oyindonesia.com/#e-wallet-payment-methods)
   * [Aktivasi QRIS](https://docs.oyindonesia.com/#qris-payment-methods)
   * [Aktivasi VA BCA](https://docs.oyindonesia.com/#bank-transfer-virtual-account-payment-methods)

Jika Anda ingin menggunakan API Link Pembayaran, Anda perlu melakukan langkah tambahan berikut:

1. Kirimkan alamat IP dan URL Callback ke perwakilan bisnis Anda atau melalui email ke business.support@oyindonesia.com.
2. OY\! akan mengirimkan Production API Key sebagai otorisasi API melalui perwakilan bisnis Anda.  
   **Catatan:** Key Staging/Demo API dapat diakses melalui dashboard dengan masuk ke mode “Demo”, lalu temukan API key di menu kiri bawah.
3. Integrasikan API ke sistem Anda dengan mengikuti panduan di [API Docs Link Pembayaran](https://api-docs.oyindonesia.com/#api-create-payment-checkout)

Setelah semua langkah di atas selesai, Anda siap untuk membuat Link Pembayaran.

### Cara Membuat Link Pembayaran
Anda dapat membuat Link Pembayaran melalui dashboard. Selain itu, Anda juga bisa membuat melalui API, tetapi hanya bisa untuk link sekali pakai. Berikut adalah panduan untuk membuat Link Pembayaran melalui dashboard:

1. Masuk ke akun dashboard OY\!
2. Pilih mode yang sesuai. Jika Anda ingin membuat untuk transaksi sebenarnya, pilih "Production" pada sidebar. Jika Anda ingin membuat untuk pengujian/demo, pilih "Coba di Demo".
3. Buka menu "Terima Uang", lalu pilih "Link Pembayaran". Pilih "Sekali Pakai" atau "Pakai Berulang" sesuai dengan jenis  yang ingin dibuat.
4. Klik "Buat Link Pembayaran".
5. Akan muncul pop-up untuk mengisi detail link. Silakan lihat tabel di bawah untuk penjelasan setiap kolom.
6. Klik "Simpan".
7. Setelah Link Pembayaran berhasil dibuat, Anda dapat meninjau dan membagikannya ke pelanggan.

![Payment Link Creation](../images/acceptingPayments/payment-link/creating-payment-link/creation.webp)

| Kolom                | Deskripsi                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|:---------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Nominal              | Jumlah pembayaran yang akan ditampilkan di laman pembayaran.                                                                                                                                                                                                                                                                                                                                                                                      |
| Deskripsi (opsional) | Anda dapat menjelaskan konteks pembayaran kepada pelanggan Anda melalui kolom deskripsi.                                                                                                                                                                                                                                                                                                                                                          |
| ID Transaksi Partner | ID unik yang dapat Anda berikan untuk mengidentifikasi suatu transaksi.                                                                                                                                                                                                                                                                                                                                                                           |
| Tujuan Dana Masuk    | <p>Hanya tersedia jika Anda menggunakan Multi Entity Management.</p> <p>Anda dapat memilih antara "Saldo Saya" atau "Saldo Sub Entity":</p> <p>Saldo Saya: Setelah transaksi berhasil, dana akan masuk ke akun saldo Anda.</p> <p>Saldo Sub Entity: Setelah transaksi berhasil, dana akan masuk ke saldo Sub Entity yang Anda pilih.</p>                                                                                                          |
| Detail Pelanggan     | Detail pelanggan yang dapat Anda isi, berupa: Nama Pelanggan, Nomor Telepon, Email, dan Catatan. Jika alamat email diisi, kami akan mengirimkan Link Pembayaran ke email tersebut.                                                                                                                                                                                                                                                                |
| Tipe Nominal         | <p>Anda dapat memilih tipe nominal *open amount* atau *closed amount*.</p>  <p>*Open amount:* Anda dapat menerima pembayaran sampai maksimal sebesar nominal yang Anda tentukan.</p>  <p>*Closed Amount:* Anda hanya dapat menerima pembayaran sejumlah nominal yang ditentukan.</p>                                                                                                                                                              |
| Metode Pembayaran    | Metode pembayaran yang dapat Anda pilih untuk diaktifkan. Metode pembayaran yang tersedia meliputi transfer bank, E-wallet, gerai ritel, kartu debit/kedit, dan QRIS.                                                                                                                                                                                                                                                                             |
| Jenis Biaya Admin    | <p>Jika biaya admin termasuk dalam nominal, maka akan dipotong dari pembayaran pelanggan.</p> <p>Jika tidak termasuk, biaya admin akan ditambahkan ke total yang dibayar pelanggan.</p>                                                                                                                                                                                                                                                           |
| Tanggal Kedaluwarsa  | <p>Setelah kedaluwarsa, pelanggan tidak dapat membuka link lagi.</p> <p>Secara default, waktu kedaluwarsa adalah 24 jam. Anda dapat menyesuaikan waktu kedaluwarsa berdasarkan hari dan/atau jam.</p> <p>Khusus untuk Link Pembayaran Pakai Berulang, Anda dapat menetapkan waktu kedaluwarsa sebagai "Lifetime", yang berarti link tidak memiliki batas waktu dan dapat menerima pembayaran kapan saja, kecuali dinonaktifkan secara manual.</p> |


### Menyelesaikan Pembayaran
Setelah berhasil membuat link, Anda dapat membagikan link tersebut kepada pelanggan Anda. Pelanggan Anda dapat membuka link melalui browser di desktop atau mobile. Berikut langkah-langkah bagi pelanggan untuk menyelesaikan pembayaran melalui Link Pembayaran:

1. Pelanggan akan mengisi atau mengubah nominal transaksi (hanya tersedia untuk transaksi *open amount*).
2. Memilih metode pembayaran yang diinginkan.
3. Mengisi detail pelanggan, termasuk Nama Pelanggan, Email, Nomor Telepon, dan Catatan. Semua kolom bersifat opsional kecuali Nama Pelanggan.
4. Mengonfirmasi metode pembayaran dengan mengklik “Bayar”.
5. OY\! akan menampilkan informasi pembayaran sesuai metode yang dipilih:
   * Transfer Bank: Menampilkan Nomor Rekening dan Jumlah Transfer.
   * QRIS: Menampilkan kode QR yang dapat diunduh atau langsung dipindai.
   * E-wallet: Pelanggan akan diarahkan ke aplikasi E-wallet (DANA, LinkAja, ShopeePay) atau menerima notifikasi dari aplikasi E-wallet (OVO).
   * Kartu Kredit & Debit: Pelanggan akan diarahkan untuk mengisi nomor kartu, tanggal kedaluwarsa, dan CVV.
6. Perlu diperhatikan bahwa setiap metode pembayaran memiliki batas waktu pembayaran yang berbeda. Silakan merujuk ke tabel berikut untuk informasi lebih lanjut.
7. Untuk melakukan simulasi transaksi demo, silakan merujuk ke bagian berikut:
   * [Simulasi pembayaran Virtual Account](https://docs.oyindonesia.com/#bank-transfer-virtual-account-payment-methods)
   * [Simulasi pembayaran Kode Unik](https://docs.oyindonesia.com/#bank-transfer-unique-code-payment-methods)
   * [Simulasi pembayaran E-wallet](https://docs.oyindonesia.com/#e-wallet-payment-methods)
   * [Simulasi pembayaran Kartu](https://docs.oyindonesia.com/#cards-payment-methods-payment-methods)
   * Catatan: Simulasi transaksi QRIS saat ini belum tersedia.
8. Status pada Link Pembayaran akan berubah menjadi berhasil setelah pembayaran dilakukan. Jika status transaksi tidak otomatis diperbarui, pelanggan dapat memeriksa statusnya langsung di halaman Link Pembayaran.

<table>
  <tr>
    <th colspan="2" valign="top"><b>Metode Pembayaran</b></th>
    <th valign="top"><b>Batas Waktu Bayar</b></th>
  </tr>
  <tr>
    <td rowspan="2" valign="top">Transfer Bank</td>
    <td valign="top">Virtual Account</td><td valign="top">hingga 24 jam</td>
  </tr>
  <tr>
    <td valign="top">Kode Unik</td>
    <td valign="top">hingga 3 jam</td>
  </tr>
  <tr>
    <td rowspan="4" valign="top">E-Wallet</td>
    <td valign="top">ShopeePay</td><td valign="top">hingga 60 menit</td>
  </tr>
  <tr>
    <td valign="top">LinkAja</td>
    <td valign="top">5 menit</td>
  </tr>
  <tr>
    <td valign="top">DANA</td>
    <td valign="top">hingga 60 menit</td>
  </tr>
  <tr>
    <td valign="top">OVO</td>
    <td valign="top">hingga 55 detik</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">QRIS</td>
    <td valign="top">hingga 30 menit</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Kartu Debit & Kredit</td>
    <td valign="top">60 menit</td>
  </tr>
</table>

Batas waktu metode pembayaran berbeda dengan batas waktu kedaluwarsa Link Pembayaran. Batas waktu metode pembayaran dihitung sejak pelanggan mengkonfirmasi metode pembayaran yang dipilih. Sementara itu, batas waktu kedaluwarsa Link Pembayaran dihitung sejak link dibuat. Anda hanya dapat menyesuaikan batas waktu kedaluwarsa Link Pembayaran.

Contoh: Anda membuat Link Pembayaran yang menerima pembayaran melalui Virtual Account (VA) dan QRIS dengan batas waktu kedaluwarsa 2 jam.

Pelanggan membuka link dan memilih QRIS sebagai metode pembayaran. OY! akan menghasilkan kode QR, yang dapat dibayar dalam 30 menit sebelum kedaluwarsa. Jika pelanggan tidak menyelesaikan pembayaran dalam 30 menit, kode QR akan kedaluwarsa, dan mereka harus memilih metode pembayaran lain.

Kali ini, pelanggan memilih VA sebagai metode pembayaran. OY! akan menghasilkan nomor VA, yang berlaku selama 1 jam 30 menit karena sisa waktu kedaluwarsa Link Pembayaran adalah 1 jam 30 menit. Setelah 2 jam, Link Pembayaran akan kedaluwarsa, dan pelanggan tidak dapat mengaksesnya lagi.

### Mengecek Status Transaksi
Semua transaksi Link Pembayaran yang dibuat akan ditampilkan di dashboard. Untuk melihat daftar transaksi yang telah dibuat, Anda bisa pergi ke ke “Link Pembayaran” → “Sekali Pakai” atau “Pakai Berulang”.

Di dalam dashboard, Anda dapat melihat detail transaksi, termasuk informasi yang diinput saat pembuatan, status transaksi, dan nomor referensi pembayaran. Dashboard juga menyediakan fitur untuk mencari, memfilter, dan mengekspor daftar transaksi dalam berbagai format, seperti Excel (.xlsx), PDF (.pdf), dan CSV (.csv).

Terkadang, pelanggan Anda mungkin telah menyelesaikan pembayaran, tetapi status transaksi belum diperbarui menjadi sukses. Jika hal ini terjadi, Anda dapat melakukan beberapa langkah berikut untuk memeriksa status transaksi:

1. Pelanggan dapat langsung memeriksa status transaksi dengan memilih tombol “Cek Status” pada halaman Link Pembayaran.
2. Anda dapat mengecek status transaksi menggunakan API dengan memanggil API Check Status. Silakan merujuk ke dokumen berikut: [Check Status Payment Link \- API Docs](https://api-docs.oyindonesia.com/#api-payment-status-fund-acceptance).

### Menerima Dana ke Saldo
Setelah pelanggan Anda melakukan pembayaran, OY\! akan memperbarui status transaksi dan mengirim notifikasi ke sistem Anda sebagai konfirmasi bahwa transaksi telah dibayar. Dana dari transaksi tersebut akan diselesaikan (*settled*) ke saldo Anda.

Waktu penyelesaian (*settlement time*) berbeda untuk setiap metode pembayaran, mulai dari *real-time* hingga H+2 Hari Kerja tergantung pada metode yang digunakan.


## VA Aggregator
Bisnis sering menghadapi tantangan dalam mengelola ratusan hingga ribuan rekening bank fisik untuk berbagai keperluan. Hal ini menyebabkan biaya operasional yang tinggi, baik dari segi pemeliharaan rekening maupun waktu yang dihabiskan untuk pelaporan dan rekonsiliasi.

Virtual Account (VA) adalah akun *dummy* yang terhubung dengan rekening bank fisik dan memiliki karakteristik serupa dengan rekening fisik. VA memungkinkan proses pelaporan dan rekonsiliasi yang lebih mudah dengan memusatkan aliran dana ke dalam satu rekening fisik. Dengan menggunakan VA, Anda dapat mengatur setiap VA untuk pelanggan atau tujuan tertentu.

Virtual Account (VA) Aggregator adalah fitur yang dirancang khusus untuk membuat Virtual Account, memungkinkan Anda menerima pembayaran melalui transfer bank dari pelanggan.Jika Anda ingin menerima pembayaran menggunakan berbagai metode pembayaran untuk satu transaksi, sebaiknya gunakan Link Pembayaran atau Routing Pembayaran sebagai alternatif.

Secara umum, pembuatan nomor VA untuk pelanggan dapat dilakukan melalui API VA Aggregator. Namun, jika Anda ingin membuat VA tanpa integrasi API, Anda dapat melakukannya melalui Dashboard dengan mengakses menu "Virtual Account" di bagian "Terima Uang".
### Alur VA Aggregator
![VA Aggregator Flow](../images/acceptingPayments/va-aggregator/payment-flow.webp)


### Fitur VA Aggregator
**Pembuatan Fleksibel – via Dashboard atau API**

Anda dapat membuat nomor VA melalui Dashboard atau API. Jika tidak memiliki sumber daya untuk mengintegrasikan API, Anda tetap bisa membuat nomor VA dan menerima pembayaran langsung melalui dashboard.

**Dukungan Pembayaran VA dari Berbagai Bank**

Saat ini, OY\! mendukung pembayaran VA dari 8 bank, yaitu:

1. Bank Central Asia (BCA)
2. Bank Rakyat Indonesia (BRI)
3. Bank Mandiri
4. Bank Negara Indonesia (BNI)
5. Bank CIMB & CIMB Syariah
6. Bank SMBC
7. Bank Syariah Indonesia (BSI)
8. Bank Permata & Permata Syariah

***Settlement*** **Cepat untuk Mayoritas Bank**

OY\! memahami bahwa arus kas yang lancar sangat penting bagi bisnis Anda. Kami menawarkan *settlement real-time* ke saldo OY\! untuk sebagian besar bank yang didukung, sehingga dana dapat langsung digunakan tanpa menunggu lama.

**Menyesuaikan Jenis VA Sesuai Kebutuhan**

Anda dapat mengkonfigurasi jenis VA sesuai kebutuhan bisnis Anda, memberikan fleksibilitas lebih dalam pengelolaan transaksi pembayaran dengan detail sebagai berikut:

<table>
  <tr>
    <th valign="top"><b>Kategori</b></th>
    <th valign="top"><b>Tipe</b></th><th valign="top"><b>Deskripsi</b></th>
  </tr>
  <tr>
    <td rowspan="2" valign="top">Masa Berlaku</td>
    <td valign="top">VA Statis (Tanpa Kedaluwarsa) </td>
    <td valign="top"> VA yang memiliki masa berlaku tidak terbatas. Akan selalu aktif sampai dinonaktifkan secara manual.</td>
  </tr>
  <tr>
    <td valign="top">VA Dinamis </td>
    <td valign="top">VA yang memiliki periode masa berlaku tertentu. Akan selalu aktif sampai masa berlakunya habis atau dinonaktifkan secara manual.</td>
  </tr>
  <tr>
    <td rowspan="2" valign="top">Nominal Transaksi</td>
    <td valign="top">VA Closed Amount</td>
    <td valign="top">VA yang hanya menerima pembayaran dengan nominal yang ditentukan.</td>
  </tr>
  <tr>
    <td valign="top">VA Open Amount</td>
    <td valign="top">VA yang dapat menerima pembayaran dengan maksimal nominal yang telah Anda tentukan saat membuat VA.</td>
  </tr>
  <tr>
    <td rowspan="2" valign="top">Jumlah Penggunaan</td>
    <td valign="top">VA Sekali Pakai</td>
    <td valign="top">VA yang hanya bisa menerima satu kali pembayaran.</td>
  </tr>
  <tr>
    <td valign="top">VA Pemakaian Berulang</td>
    <td valign="top">VA yang hanya kedaluwarsa ketika mencapai tanggal kedaluwarsa atau ketika dinonaktifkan secara manual. Anda juga dapat menyesuaikan batas maksimum pembayaran. VA Pemakaian Berulang dengan batas maksimum pembayaran yang disesuaikan akan kedaluwarsa setelah batas pembayaran terlampaui meskipun belum mencapai waktu kedaluwarsa. </td>
  </tr>
  <tr>
    <td rowspan="2" valign="top">Nomor VA</td>
    <td valign="top">Custom</td>
    <td valign="top"><p>Anda dapat mempersonalisasi nomor akhir VA dengan angka yang Anda inginkan (misalnya, nomor telepon atau nomor tagihan pengguna akhir Anda). Untuk mengaktifkan penyesuaian nomor VA, silakan hubungi perwakilan bisnis Anda. Anda dapat merujuk ke <a href="https://api-docs.oyindonesia.com/#create-customized-va-va-aggregator">API Docs - Create Customized VA Number</a></p><p></p><p>Khusus untuk fitur ini, saat ini kami hanya mendukung bank BRI dan CIMB. </p></td>
    </tr>
  <tr>
    <td valign="top">Predetermined</td>
    <td valign="top">OY! akan membuat nomor VA secara random atas nama Anda. Anda dapat merujuk ke <a href="https://api-docs.oyindonesia.com/#create-va-va-aggregator">API Docs - Create VA Number</a>.
    </td>
    </tr>
</table>

1. **Kemampuan untuk Memperbarui VA**

    Setelah nomor VA dibuat, Anda masih bisa mengubah beberapa parameter berikut:
    - Nominal VA (nominal) → Mengubah jumlah nominal pembayaran. 
    - Jenis Penggunaan (is\_single\_use) → Mengubah VA dari Sekali Pakai ke Pakai Berulang atau sebaliknya. 
    - Email (email) → Memperbarui alamat email
    - Batas Transaksi (trx\_counter) → Menentukan jumlah pembayaran yang dapat diterima oleh nomor VA. Parameter ini hanya bisa digunakan oleh VA Pemakaian Berulang.
    - Waktu Kedaluwarsa Transaksi (trx\_expired\_time) → Mengatur batas waktu transaksi VA. 
    - Waktu Kedaluwarsa VA (expired\_time) → Menetapkan kapan VA tidak lagi berlaku. Waktu ini harus sama atau lebih lama dari trx\_expired\_time. 
    - Nama yang Ditampilkan (username\_display) → Nama VA yang akan muncul saat pelanggan memasukkan nomor VA di aplikasi perbankan mereka.
   
    **Catatan:** Setelah VA diperbarui, konfigurasi baru akan langsung diterapkan, dan pengaturan sebelumnya tidak lagi berlaku.

2. ***Callback* Otomatis & Retry *Callback***

    Anda akan menerima *callback* untuk setiap pembayaran VA yang sukses melalui API. Jika *callback* gagal diterima, Anda bisa mengaktifkan Automatic Retry *Callback* melalui:

    Dashboard → Pengaturan → Opsi Developer → Konfigurasi Callback.

    Jika *callback* pertama gagal, sistem OY\! akan mencoba kembali hingga 5 kali. Jika semua percobaan gagal, OY\! akan mengirimkan notifikasi ke email yang telah Anda atur. Anda juga akan menerima *callback* untuk setiap transaksi yang berhasil diselesaikan ke saldo Anda.

3. **Nominal Minimum dan Maksimum Transaksi VA**

   * Nominal minimum transaksi VA: Rp10.000 (untuk *closed amount*).
   * nominal maksimum transaksi VA: Tergantung pada kebijakan masing-masing bank. Dengan detail sebagai berikut:

|Nama Bank|Nominal maksimum per transaksi |
| :-: | :-: |
|Bank Central Asia (BCA) |Rp 50,000,000|
|Bank Negara Indonesia (BNI) |Rp 50,000,000|
|Bank Rakyat Indonesia (BRI) |Rp 500,000,000|
|Bank Mandiri |Rp 500,000,000|
|Bank CIMB |Rp 500,000,000|
|Bank SMBC |Rp 100,000,000|
|Bank Syariah Indonesia (BSI)|Rp 50,000,000|
|Bank Permata|Rp 500,000,000|


### Use Cases

![VA Aggregator Use Case](../images/acceptingPayments/va-aggregator/use-cases.webp)

### Cara Mengaktifkan
Berikut adalah langkah-langkah aktivasi fitur VA Aggregator:

1. Buat akun OY\!
2. Lakukan verifikasi akun dengan mengisi formulir verifikasi. Pastikan untuk mencentang produk "Terima Uang", karena VA Aggregator merupakan bagian dari produk tersebut.
3. Tim OY\! akan meninjau dan memverifikasi formulir serta dokumen yang dikirimkan.
4. Setelah verifikasi disetujui, atur informasi rekening penerima sebagai rekening tujuan penarikan saldo. Pastikan informasi rekening penerima sudah benar, karena pengaturan ini hanya dapat dilakukan sekali melalui dashboard untuk alasan keamanan.
5. Untuk penggunaan VA BCA, Anda mungkin perlu mengirimkan dokumen tambahan, seperti Nomor Pokok Wajib Pajak (NPWP) dan Kartu Tanda Penduduk (KTP)
6. Jika memiliki pertanyaan atau kendala, silakan hubungi perwakilan bisnis OY\! atau email ke business.support@oyindonesia.com

Jika Anda ingin menggunakan VA Aggregator via API, terdapat langkah tambahan:

1. Kirimkan alamat IP dan URL callback Anda ke perwakilan bisnis OY\! atau melalui email ke [business.support@oyindonesia.com](mailto:business.support@oyindonesia.com). Maksimal 5 alamat IP yang dapat didaftarkan.
2. OY\! akan mengirimkan Production API Key sebagai otorisasi API melalui perwakilan bisnis Anda.   
   **Catatan:** Staging/Demo API Key dapat diakses melalui dashboard di mode "Demo" pada menu bagian kiri bawah.
3. Integrasikan API VA Aggregator ke sistem Anda dengan mengikuti panduan pada [API Docs \- VA Aggregator](https://api-docs.oyindonesia.com/#create-customized-va-va-aggregator) untuk memastikan implementasi berjalan dengan baik.

### Simulasi Pembuatan Virtual Account
**Membuat Nomor VA melalui API**

1. Masuk ke mode Demo di dashboard dengan klik tomboll “Coba di Demo” untuk masuk ke mode uji coba (staging).
2. Salin API Staging Key dari menu navigasi kiri bawah.
3. Buat nomor VA dengan mengirimkan permintaan POST ke [https://api-stg.oyindonesia.com/api/generate-static-va](https://api-stg.oyindonesia.com/api/generate-static-va). Masukkan parameter yang diperlukan sesuai dengan API Docs.
4. OY\! akan merespons dengan nomor VA yang berhasil dibuat.

**Membuat Nomor VA melalui Dashboard**

1. Masuk ke mode Demo di dashboard dengan klik tomboll “Coba di Demo” untuk masuk ke mode uji coba (staging).
2. Pergi ke “Terima Uang” → Virtual Account → Daftar VA.
3. Klik tombol “Buat Virtual Account” di kanan atas.
4. Pilih metode pembuatan nomor VA dengan mengunggah file Excel (sesuai format template) atau input manual dengan klik “Tambahkan Detail Virtual Account Secara Manual”.
5. Klik “Validasi” setelah mengisi semua kolom.
6. Klik “Buat” untuk mengirim permintaan.
7. Setelah berhasil, Anda akan diarahkan ke halaman Daftar VA untuk melihat nomor VA yang sudah dibuat.
8. VA Anda siap untuk digunakan

**Simulasi *Callback* Berhasil**

1. Masuk ke mode Demo di dashboard dengan klik tomboll “Coba di Demo” untuk masuk ke mode uji coba (staging).
2. Pergi ke “Pengaturan” → Callback Transfer Bank.
3. Pilih “Virtual Account” sebagai Jenis Transaksi.
4. Pilih nama bank dari VA yang sudah dibuat sebelumnya.
5. Masukkan nomor VA dan jumlah transaksi. Untuk VA *closed amount*, jumlah yang dimasukkan harus sesuai dengan yang telah dibuat.
6. Masukkan tanggal dan waktu pembayaran. Pastikan Tanggal & Waktu Pembuatan VA \< Tanggal & Waktu Pembayaran \< Tanggal & Waktu Kedaluwarsa

### Cara Menggunakan Virtual Account
Melihat Daftar Virtual Account (VA) yang Dibuat

1. Masuk ke dashboard.
2. Pergi ke:

“Terima Uang” → “Virtual Account” → “Daftar VA”

Di halaman ini, Anda dapat melihat VA yang sudah Anda buat dengan detail informasi berikut: Nomor VA yang telah dibuat, Status pembayaran, Jumlah transaksi, Jenis VA, serta Jumlah transaksi yang telah diselesaikan. Anda juga dapat mengekspor daftar VA beserta detailnya dalam format PDF, Excel, atau CSV sesuai kebutuhan.

![VA Aggregator Monitor Created Transactions](../images/acceptingPayments/va-aggregator/viewing-list-of-created-va.webp)

Melihat Daftar Pembayaran Virtual Account (VA)

1. Masuk ke dashboard.
2. Pergi ke:

“Terima Uang” → “Virtual Account” → “Pembayaran Berlangsung”

Di halaman ini, Anda dapat melihat transaksi yang sudah diterima dari nomor VA yang sudah Anda buat dengan detail informasi berikut: *Timestamp* transaksi, Status transaksi, Jumlah pembayaran, Biaya admin, dan Informasi tambahan lainnya. Anda juga dapat mengekspor daftar VA beserta detailnya dalam format PDF, Excel, atau CSV sesuai kebutuhan.

![VA Aggregator Monitor Incoming Transactions](../images/acceptingPayments/va-aggregator/viewing-list-of-incoming-payment.webp)


### Detail Virtual Account Tiap Bank
| Nama Bank | Kode Bank | Open Amount | Closed Amount | Max. Masa Berlaku |
| ----- | ----- | ----- | ----- | ----- |
| BCA | 014 | Ya | Ya | Lifetime |
| BNI | 009 | Sebagian\* | Ya | Lifetime |
| BRI | 002 | Ya | Ya | Lifetime |
| Bank Mandiri | 008 | Ya | Ya | Lifetime |
| Bank CIMB | 022 | Ya | Ya | Lifetime |
| Bank SMBC | 213 | Ya | Ya | Lifetime |
| BSI | 451 | Tidak | Ya | 70 hari setelah dibuat. |
| Bank Permata | 013 | Ya | Ya | Lifetime |


\*Untuk informasi lebih lanjut, silakan hubungi perwakilan bisnis kami.

**Catatan**: Tidak ada batas waktu minimum untuk masa berlaku Virtual Account (VA). Namun, disarankan untuk menetapkan masa berlaku yang wajar agar pelanggan memiliki cukup waktu untuk menyelesaikan pembayaran dengan nyaman.

### Daftar Metode Pembayaran untuk VA

Pelanggan Anda dapat melakukan pembayaran melalui VA dengan metode berikut:

| Nama Bank | SKN | RTGS | ATM | Mobile Banking & Internet Banking Intrabank | Internet Banking Interbank | Mobile Banking Interbank |
| :---- | :---- | :---- | :---- | :---- | :---- | :---- |
| Bank Mandiri | Ya | Ya | Ya | Ya | Ya | Ya |
| BRI | Ya | Ya | Ya | Ya | Tidak | Ya |
| BNI | Ya | Ya | Ya | Ya | Tidak | Ya |
| Permata | Ya | Ya | Ya | Ya | Tidak | Ya |
| CIMB Niaga/CIMB Niaga Syariah | Ya | Ya | Ya | Ya (Mobile Banking), Tidak (Internet Banking) | Tidak | Ya |
| BCA | Tidak | Tidak | Ya | Ya | Tidak | Tidak |
| SMBC | Ya | Tidak | Ya | Ya (Mobile Banking), Tidak (Internet Banking) | Tidak | Ya |
| BSI | Tidak | Tidak | Ya | Ya | Ya | Ya |

## API E-Wallet Aggregator
API E-Wallet Aggregator adalah fitur yang membantu Anda untuk menerima pembayaran dari berbagai macam E-wallet. Dengan satu integrasi, maka Anda dapat mengakses semua E-wallet yang tersedia di OY\!.

### Alur API E-Wallet Aggregator

![E-wallet Aggregator Flow](../images/acceptingPayments/api-e-wallet-aggragator/payment-flow.webp)

### Fitur E-Wallet Aggregator
Produk E-wallet Aggregator kami mendukung transaksi E-wallet dari provider berikut:

* ShopeePay
* LinkAja
* DANA
* OVO

#### Pantau Transaksi via Dashboard
Semua transaksi E-wallet yang telah dibuat dapat dipantau melalui Dashboard OY\!. Masuk ke dashboard OY\! dan pergi ke tab E-Wallet. Di dalam dashboard, Anda dapat melihat detail setiap transaksi, termasuk informasi yang diinput saat pembuatan, status transaksi, dan nomor referensi pembayaran. Gunakan fitur pencarian dan filter untuk menemukan transaksi tertentu dengan cepat. Transaksi dapat diekspor dalam berbagai format: Excel (.xlsx), PDF (.pdf), dan CSV (.csv).

![Monitor E-wallet Aggregator Transaction](../images/acceptingPayments/api-e-wallet-aggragator/dashboard-selesai.webp)

#### Cara Mengaktifkan
Berikut adalah panduan untuk mengaktifkan fitur API E-Wallet:

1. Buat akun di OY\!
2. Lakukan verifikasi akun dengan mengisi formulir verifikasi. Pastikan Anda mencentang produk “Terima Uang”, karena API E-Wallet termasuk dalam kategori produk ini.
3. Tim OY\! akan meninjau dan memverifikasi formulir serta dokumen yang telah Anda kirimkan.
4. Setelah verifikasi disetujui, atur informasi rekening bank penerima.  
   **Catatan Penting**: Pastikan informasi rekening bank penerima untuk menerima saldo OY\! benar, karena Anda hanya dapat mengaturnya sekali saja melalui dashboard demi alasan keamanan.
4. Ikuti proses registrasi untuk setiap E-wallet yang ingin Anda gunakan. Panduan lengkapnya dapat ditemukan di bagian [E-Wallet Activation](https://docs.oyindonesia.com/#e-wallet-payment-methods).
5. Kirimkan alamat IP dan URL Callback ke perwakilan bisnis Anda atau melalui email ke [business.support@oyindonesia.com](mailto:business.support@oyindonesia.com).
6. OY\! akan mengirimkan Production API Key sebagai otorisasi API melalui perwakilan bisnis Anda.  
   **Catatan:** Key Staging/Demo API dapat diakses melalui dashboard dengan masuk ke mode “Demo”, lalu temukan API key di menu kiri bawah.
7. Integrasikan API ke sistem Anda dengan mengikuti panduan di [API Docs E-Wallet](https://api-docs.oyindonesia.com/#create-e-wallet-transaction-api-e-wallet-aggregator)

#### Cara Membuat Transaksi E-Wallet via API
Transaksi E-Wallet hanya dapat dibuat melalui API. Ikuti langkah-langkah berikut untuk membuat transaksi E-Wallet melalui API:

1. Integrasikan API Create E-Wallet Transaction ke dalam sistem Anda. Panduan lengkap dapat ditemukan di [Create E-Wallet \- API Docs](https://api-docs.oyindonesia.com/#https-request-create-e-wallet-transaction).
2. *Hit* API OY\! untuk membuat transaksi E-Wallet.
3. OY\! akan mengembalikan informasi yang diperlukan untuk menyelesaikan pembayaran.
* Untuk E-wallet dengan metode *redirection* (ShopeePay, DANA, LinkAja), OY\! akan mengembalikan URL E-wallet yang dapat dibagikan kepada pelanggan untuk menyelesaikan pembayaran.
* Untuk E-wallet dengan metode *push notification* (OVO), penyedia E-wallet akan mengirimkan notifikasi ke aplikasi E-wallet pelanggan untuk menyelesaikan pembayaran.

**Catatan**: Jika Anda melakukan hit API *Create E-Wallet Transaction* di mode Staging/Demo, API akan selalu mengembalikan URL yang sama dalam respons:

[https://pay-dev.shareitpay.in/aggregate-pay-gate](https://pay-dev.shareitpay.in/aggregate-pay-gate)

URL ini tidak dapat digunakan untuk mensimulasikan pembayaran. Untuk simulasi pembayaran, silakan merujuk ke bagian [Simulate E-Wallet Payments \- Product Docs](https://docs.oyindonesia.com/#e-wallet-payment-methods).

#### Bukti Pembayaran
Pelanggan Anda dapat menerima bukti pembayaran yang berhasil melalui email yang Anda berikan saat proses pembuatan transaksi. Anda dapat mengatur pengiriman bukti bayar melalui email kepada pelanggan dengan langkah-langkah berikut:

1. Masuk ke dashboard OY\!
2. Buka menu “Pengaturan” \-\> “Notifikasi”
3. Klik Tab “Terima Uang (ke Pengirim)”
4. Pilih “Aktifkan Notifikasi Transaksi yang Berhasil” untuk API E-Wallet. (Pengaturan API E-Wallet akan muncul bila Anda sudah mengaktifkan produk API E-Wallet.)
5. Pilih logo yang akan tertera di email dalam format URL. Contoh: (https://example.com/image.jpg)
* Jika Anda tidak memiliki URL logo, gunakan tools online seperti snipboard.io atau imgbb untuk mengonversi logo Anda ke URL.
* Berikut adalah contoh URL yang benar:  
  Snipboard.io: [https://i.snipboard.io/image.jpg](https://i.snipboard.io/image.jpg)  
  Imgbb: https://i.ibb.co/abcdef/image.jpg
6. Simpan perubahan dengan mengklik "Simpan Perubahan"
7. Masukkan email pelanggan lewat parameter “email” saat membuat transaksi E-Wallet via API.
8. Pelanggan Anda akan menerima bukti pembayaran yang berhasil ke email yang terdaftar setelah pembayaran dilakukan.

![Receipt for successful Payment](../images/acceptingPayments/payment-link/features/dashboard-notif-for-sender.webp)

**Catatan:** Jika Anda tidak memasukkan alamat email pelanggan saat membuat transaksi, OY\! tidak akan mengirimkan bukti transaksi melalui email, meskipun konfigurasi notifikasi sudah diaktifkan. Sebaliknya, jika Anda memasukkan alamat email tetapi konfigurasi notifikasi tidak diaktifkan, bukti transaksi juga tidak akan dikirimkan.

#### *Retry* Notifikasi/*Callback* untuk Pembayaran Berhasil
OY\! akan mengirimkan notifikasi/*callback* ke sistem Anda setelah transaksi dinyatakan berhasil. Dengan demikian, Anda akan mendapatkan pemberitahuan saat pelanggan telah menyelesaikan pembayaran. Namun, ada kemungkinan sistem Anda tidak menerima notifikasi.

Dengan mengaktifkan *Retry Callback*, OY\! akan mencoba mengirimkan ulang *callback* jika sistem Anda tidak menerimanya. Anda dapat meminta pengiriman ulang *callback* melalui Retry Callback Manual atau Retry Callback Otomatis.

##### *Retry Callback* Manual
Retry Callback Manual membantu Anda untuk mengirim ulang *callback* secara manual untuk setiap transaksi melalui dashboard. Berikut langkah-langkahnya:

1. Masuk ke akun Anda
2. Pastikan Anda telah mengatur Callback URL melalui “Pengaturan” → “Opsi Developer” → “Konfigurasi Callback” untuk produk E-Wallet Aggregator.
3. Pastikan Anda telah whitelist IP OY\! agar sistem Anda dapat menerima *callback*:
   - 54.151.191.85 
   - 54.179.86.72
4. Buka menu “API E-Wallet”.
5. Cari transaksi yang ingin dikirim ulang *callback*\-nya, lalu klik tombol tiga titik pada kolom “Tindakan”.
6. Klik “Kirim Ulang Callback” untuk mengirim ulang *callback*, dan ulangi proses ini sesuai kebutuhan.

![Manual Retry Callback](../images/acceptingPayments/api-e-wallet-aggragator/dashboard-callback.webp)

##### *Retry Callback* Otomatis
Ikuti langkah-langkah berikut untuk mengaktifkan *Retry Callback* Otomatis:

1. Masuk ke akun Anda
2. Buka menu “Pengaturan”, lalu pilih “Opsi Developer”.
3. Pilih tab “Konfigurasi Callback”.
4. Masukkan URL *callback* untuk produk yang ingin Anda aktifkan. Pastikan format URL benar, lalu validasi dengan mengklik “Validasi String URL”.
5. Untuk mengaktifkan Retry Callback Otomatis, centang “Aktifkan Retry Callback Otomatis” untuk produk terkait. Masukkan email penerima yang akan menerima notifikasi jika callback gagal setelah semua percobaan dilakukan.
6. Pastikan Anda telah whitelist IP OY\! agar sistem dapat menerima *callback*:
   - 54.151.191.85 
   - 54.179.86.72
7. Pastikan sistem Anda menerapkan *idempotency logic* dengan menggunakan parameter “tx\_ref\_number” sebagai *idempotency key* untuk mencegah *callback* yang sama diproses sebagai pembayaran yang berbeda.
8. Simpan perubahan

![Automatic Retry Callback](../images/acceptingPayments/api-e-wallet-aggragator/dashboard-developer-option.webp)

#### Refund Pembayaran ke Pelanggan
Jika pelanggan menerima produk yang tidak sesuai, seperti rusak, atau pesanan tidak terkirim, mereka dapat meminta pengembalian dana (*refund)*. Anda dapat langsung mengembalikan pembayaran ke akun pelanggan melalui dashboard OY\!. Refund dapat bersifat penuh atau sebagian. Refund penuh mengembalikan seluruh jumlah pembayaran (100%). Refund sebagian mengembalikan jumlah tertentu sesuai permintaan.

Fitur ini tidak dipungut biaya apa pun. Namun, biaya admin dari pembayaran awal tidak akan dikembalikan oleh OY\! ke saldo Anda.

Terdapat beberapa syarat yang harus dipenuhi untuk melakukan refund:

1. Refund hanya dapat dilakukan hingga 7 hari kalender setelah transaksi dinyatakan berhasil.
2. Saldo Anda harus mencukupi agar kami dapat memotong jumlah transaksi yang akan dikembalikan.
3. Refund hanya dapat dilakukan sekali untuk setiap transaksi yang berhasil, baik itu refund penuh maupun sebagian.
4. Refund harus dilakukan pada jam operasional, sesuai dengan metode pembayaran yang digunakan. Lihat tabel di bawah untuk detailnya.

Saat ini, refund hanya tersedia untuk pembayaran melalui E-wallet sebagai berikut:

| Metode Pembayaran | Fitur Refund | Jam Operasional |
| ----- | ----- | ----- |
| DANA | Full, sebagian | 00.00 \- 23.59 GMT+7 |
| ShopeePay | Full | 05.00 \- 23.59 GMT+7 |
| LinkAja | Full | 00.00 \- 23.59 GMT+7 |
| OVO | Tidak didukung | \- |

Jika Anda menggunakan API Refund, OY\! akan mengirimkan notifikasi ke sistem Anda melalui callback setelah transaksi berhasil direfund. Untuk detail lebih lengkapnya, silakan merujuk ke [Refund Callback \- API Docs](https://api-docs.oyindonesia.com/#callback-parameters-e-wallet-refund-callback). Transaksi refund juga akan ditampilkan pada Laporan Penyelesaian Anda.

Anda juga dapat memeriksa status permintaan refund melalui API. Untuk panduan lebih lanjut, silakan lihat [Refund Check Status \- API Docs](https://api-docs.oyindonesia.com/#get-e-wallet-refund-status-api-e-wallet-aggregator).

### Menyelesaikan Transaksi E-Wallet
Setiap penyedia E-wallet memiliki metode yang berbeda untuk menyelesaikan transaksi. Pertama adalah metode *redirection* (ShopeePay, LinkAja, DANA), pelanggan akan diarahkan ke halaman E-wallet untuk menyelesaikan pembayaran. Kedua adalah metode *push notification* (OVO), penyedia E-wallet akan mengirimkan notifikasi ke aplikasi OVO pelanggan untuk menyelesaikan pembayaran. Baca panduan lengkapnya di sini:

* Menyelesaikan transaksi E-wallet via ShopeePay [Payment Journey](https://docs.oyindonesia.com/#e-wallet-payment-methods)
* Menyelesaikan transaksi E-wallet via LinkAja [Payment Journey](https://docs.oyindonesia.com/#e-wallet-payment-methods)
* Menyelesaikan transaksi E-wallet via DANA [Payment Journey](https://docs.oyindonesia.com/#e-wallet-payment-methods)
* Menyelesaikan transaksi E-wallet via OVO [Payment Journey](https://docs.oyindonesia.com/#e-wallet-payment-methods)

Untuk menguji transaksi di mode demo, silakan merujuk ke [Simulate E-Wallet Payments \- Product Docs](https://docs.oyindonesia.com/#e-wallet-payment-methods).

### Mengecek Status Transaksi
Semua transaksi E-wallet yang dibuat akan ditampilkan di dashboard. Untuk melihat daftar transaksi yang telah dibuat, Anda bisa pergike menu “API E-wallet”.

Di dalam dashboard, Anda dapat melihat detail transaksi, termasuk informasi yang diinput saat pembuatan, status transaksi, dan nomor referensi pembayaran. Dashboard juga menyediakan fitur untuk mencari, memfilter, dan mengekspor daftar transaksi dalam berbagai format, seperti Excel (.xlsx), PDF (.pdf), dan CSV (.csv).

Terkadang, pelanggan mungkin sudah menyelesaikan pembayaran, tetapi status transaksi belum diperbarui menjadi sukses. Oleh karena itu, disarankan untuk secara berkala memeriksa status transaksi menggunakan [Check Status E-Wallet API](https://api-docs.oyindonesia.com/#https-request-check-e-wallet-transaction-status).

### Menerima Dana ke Saldo
Setelah pelanggan menyelesaikan pembayaran, OY\! akan secara otomatis memperbarui status transaksi dan mengirimkan *callback* ke sistem Anda untuk memberi tahu bahwa transaksi telah dibayar. Selain itu, OY\! juga akan menyelesaikan (*settle*) dana ke saldo OY\! Anda. Waktu *settlement* dana bervariasi tergantung pada penyedia layanan E-wallet, dengan estimasi penyelesaian dalam H+1 hingga H+2 hari kerja setelah pembayaran diterima.


## API Routing Pembayaran
API Routing Pembayaran adalah layanan yang dapat membantu Anda menerima pembayaran dari pelanggan Anda dan mengirim uang ke penerima dalam satu API terintegrasi. Dengan layanan ini, Anda dapat secara otomatis mendistribusikan dana ke beberapa penerima setelah menerima pembayaran dari pelanggan. Menggunakan API Routing Pembayaran dapat membantu Anda menghemat waktu, karena menyediakan dua layanan sekaligus dalam satu integrasi.

<table>
  <tr>
    <th colspan="2" valign="top">Tipe Routing Pembayaran</th>
    <th valign="top">Fitur-Fitur </th>
  </tr>
  <tr>
    <td rowspan="2" valign="top">Tipe Transaksi</td>
    <td valign="top">Payment Aggregator</td>
    <td valign="top"><p>Hanya menerima pembayaran dari pelanggan.</p><p></p><p>API all-in-one untuk menerima pembayaran melalui transfer bank, E-wallet, QRIS, dan kartu.</p></td>
  </tr>
  <tr>
    <td valign="top">Payment Routing</td>
    <td valign="top">Menerima pembayaran dari pelanggan dan secara otomatis meneruskan dana ke beberapa penerima menggunakan berbagai metode, seperti VA, E-wallet, QRIS, dll .</td>
  </tr>
  <tr>
    <td rowspan="2" valign="top">Tipe Penerimaan Uang</td>
    <td valign="top">Tanpa interface</td>
    <td valign="top">
      <p>Anda memiliki halaman checkout sendiri, dan OY\! menyediakan detail pembayarannya.</p>
      <p></p>
      <p>OY! menyediakan detail pembayaran setelah transaksi dibuat (misalnya, nomor VA, URL E-wallet, URL kode QR, dll.).</p>
      <p></p>
      <p>Mendukung hanya satu metode pembayaran dalam satu transaksi (Single Payment & Direct Payment).</p>
    </td>
  </tr>
  <tr>
    <td valign="top">Dengan interface</td>
    <td valign="top">
      <p>Menggunakan halaman checkout bawaan OY! (Link Pembayaran). </p>
      <p></p>
      <p>OY! menyediakan Link Pembayaran setelah dibuat.</p>
      <p></p>
      <p>Mendukung berbagai metode pembayaran dalam satu transaksi.</p>
    </td>
  </tr>
</table>

#### Use Cases
**Payment Aggregator**

**Single Payments**

Single payment memungkinkan pelanggan menyelesaikan pembayaran dengan mudah. Tersedia untuk Bank Transfer (Virtual Account & Unique Code), E-Wallet, QRIS, dan Kartu Debit/Kredit.

**Direct Payments**

Direct payment memerlukan *account linking*, di mana pelanggan harus menghubungkan akun pembayaran mereka ke sistem Anda sebelum menyelesaikan pembayaran. Anda dapat menggunakan API *Account Linking* untuk proses ini.

Direct payment menawarkan pengalaman pembayaran yang lebih mudah.. Setelah akun terhubung, pelanggan tidak perlu membuka atau dialihkan ke aplikasi penyedia pembayaran untuk menyelesaikan transaksi.

Saat ini, fitur ini hanya tersedia untuk E-wallet ShopeePay.

**Contoh *Use Case* Routing Pembayaran**

**Investasi**

Regulasi OJK tidak mengizinkan aplikasi investasi menyimpan saldo pengguna. Anda dapat menggunakan routing pembayaran untuk menerima dana dari investor dan langsung mengirimkannya ke bank kustodian.

**E-Commerce**

Terima pembayaran barang dari pelanggan dan langsung kirimkan bagian pembayaran rekening bank merchant.

**Pendidikan**

Terima pembayaran uang sekolah dari orang tua dan secara otomatis kirimkan biaya administrasi ke rekening bank sekolah.

**Aplikasi Pinjaman**

Terima pembayaran cicilan dari peminjam dan langsung salurkan dana ke rekening penampungan pemberi pinjaman atau peminjam.

### Alur Routing Pembayaran

![Payment Routing Aggregator Scheme](../images/acceptingPayments/api-payment-routing/payment-flow-without-ui-scheme.webp)

![Payment Routing Payment Link Scheme](../images/acceptingPayments/api-payment-routing/payment-flow-with-ui-scheme.webp)

### Fitur Routing Pembayaran

#### Mendukung Berbagai metode Pembayaran
OY\! mendukung berbagai metode pembayaran dalam API Routing Pembayaran, termasuk:

1. Transfer Bank
   - Virtual Account: BCA, BNI, BRI, Mandiri, CIMB, SMBC, BSI, Permata 
   - Kode Unik: BCA
2. E-Wallet
   - Single Payments: ShopeePay, DANA, LinkAja 
   - Direct Payments: ShopeePay
3. Kartu Debit/Kredit: Visa, Mastercard, JCB
4. QRIS

#### Kirim Dana ke Banyak Penerima Secara *Real-Time*
Setelah menerima pembayaran dari pelanggan, OY\! dapat langsung menerima dana hingga ke 10 penerima tanpa menunggu proses *settlement*, selama saldo di akun Anda mencukupi.

Perlu diperhatikan bahwa beberapa metode pembayaran mungkin tidak langsung masuk ke saldo secara *real-time* (misalnya QRIS dan E-wallet). Oleh karena itu, pastikan saldo Anda mencukupi untuk memproses pengiriman dana.

#### Gunakan Fitur Link Pembayaran untuk Menerima Dana
Terdapat dua jenis metode penerimaan dana: Dengan *Interface* dan Tanpa *Interface*. Tanpa *Interface* cocok digunakan jika Anda memiliki halaman checkout sendiri dan hanya membutuhkan detail pembayaran untuk menyelesaikan transaksi. Berikut adalah informasi pembayaran yang akan Anda terima setelah transaksi berhasil dibuat:

1. Transfer Bank \- Virtual Account: bank tujuan, nomor VA, dan jumlah transaksi.
2. Transfer Bank \- Kode Unik: bank tujuan, nomor rekening, nama rekening, nominal tagihan awal, nominal unik, dan total nominal.
3. QRIS: URL untuk mengakses kode QR.
4. E-Wallet: link untuk mengarahkan pelanggan ke E-wallet yang dipilih.
5. Kartu debit/kredit: link untuk mengarahkan pelanggan agar mengisi detail kartu dan melanjutkan pembayaran.

Dengan *Interface* cocok jika Anda tidak memiliki halaman checkout sendiri. Anda dapat menggunakan halaman checkout bawaan OY\! (Link Pembayaran) untuk transaksi Routing Pembayaran. Untuk mengaktifkan fitur ini, cukup isi parameter "need\_frontend" dengan "TRUE" dalam API pembuatan transaksi.

Pelajari lebih lanjut tentang Link Pembayaran di [Payment Link \- Product Docs](https://docs.oyindonesia.com/#payment-link-accepting-payments).


#### Buat Transaksi E-Wallet *Direct Payment*
API Routing Pembayaran mendukung transaksi *Direct Payment*, di mana pelanggan tidak perlu dialihkan ke aplikasi atau situs web penyedia pembayaran untuk menyelesaikan transaksi. Hal ini memberikan pengalaman pembayaran yang lebih mudah dan efisien.

Saat ini, fitur *Direct Payment* hanya tersedia untuk E-wallet ShopeePay.

Pelajari perbedaan antara *Single Payment* dan *Direct Payment* di [E-Wallet Payment Type](https://docs.oyindonesia.com/#e-wallet-payment-methods).

#### Lacak dan Pantau Transaksi
Semua transaksi Routing Pembayaran yang dibuat akan ditampilkan di Dashboard OY\!. Untuk melihat daftar transaksi, silakan pergi ke menu Routing Pembayaran.

Di dalam dashboard, Anda dapat melihat detail transaksi, yaitu Informasi transaksi yang diinput saat pembuatan, status transaksi, serta nomor referensi pembayaran\*

Dashboard juga menyediakan fitur untuk mencari, memfilter, dan mengekspor daftar transaksi dalam berbagai format, seperti Excel (.xlsx), PDF (.pdf), dan CSV (.csv).

![Payment Routing Monitoring Transactions](../images/acceptingPayments/api-payment-routing/dashboard.webp)

\*Nomor Referensi Pembayaran adalah nomor identifikasi untuk pembayaran yang berhasil ketika pelanggan menyelesaikan transaksi QRIS. Nomor referensi ini juga ditampilkan pada bukti transaksi pelanggan. Fitur ini hanya tersedia untuk transaksi QRIS.

#### Gunakan Nomor Virtual Account yang Sama untuk Berbagai Transaksi
Satu pelanggan mungkin melakukan pembayaran untuk beberapa transaksi dengan menggunakan bank yang sama. Dengan membuar nomor VA yang sama untuk transaksi yang berbeda, pelanggan dapat lebih mudah melakukan pembayaran karena mereka bisa menyimpan nomor VA di aplikasi mobile banking mereka.

Namun, nomor VA yang sama hanya dapat digunakan untuk satu transaksi aktif dalam satu waktu.

### Cara Mengaktifkan Fitur Routing Pembayaran
Ikuti langkah-langkah berikut untuk melakukan registrasi dan melakukan transaksi Routing Pembayaran:

1. Buat akun di OY\!
2. Lakukan verifikasi akun dengan mengisi formulir verifikasi. Pastikan untuk mencentang produk Terima Uang dan Kirim Uang, karena Routing Pembayaran termasuk dalam produk ini.
3. Tim OY\! akan meninjau dan memverifikasi formulir serta dokumen yang dikirimkan.
4. Setelah verifikasi disetujui, atur informasi rekening penerima.

   **Catatan Penting:** Pastikan informasi rekening bank penerima benar, karena Anda hanya dapat mengaturnya sekali saja melalui dashboard  demi alasan keamanan.
5. Secara default, Anda akan mendapatkan beberapa metode pembayaran, termasuk semua transfer bank (kecuali BCA).
6. Metode pembayaran lain seperti QRIS, E-Wallets, Kartu, dan BCA memerlukan *onboarding* tambahan agar bisa digunakan. Silakan merujuk ke panduan berikut:
   - [Aktivasi E-Wallet](https://docs.oyindonesia.com/#e-wallet-payment-methods)
   - [Aktivasi QRIS](https://docs.oyindonesia.com/#qris-payment-methods)
   - [Aktivasi VA BCA](https://docs.oyindonesia.com/#bank-transfer-virtual-account-payment-methods)
   - [Aktivasi Kartu Debit/Kredit](https://docs.oyindonesia.com/#cards-payment-methods-payment-methods)
7. Kirimkan alamat IP dan URL Callback ke perwakilan bisnis Anda atau melalui email ke [business.support@oyindonesia.com](mailto:business.support@oyindonesia.com).
8. OY\! akan mengirimkan Production API Key melalui perwakilan bisnis Anda.

   **Catatan**: Key Staging/Demo API dapat diakses melalui dashboard dengan masuk ke mode “Demo”, lalu temukan API key di menu kiri bawah.
9. Integrasikan API Routing Pembayaran ke dalam sistem Anda. Ikuti panduan di dokumentasi API: [Payment Routing \- API Docs](https://api-docs.oyindonesia.com/#payment-routing).

### Cara Membuat Transaksi Routing Pembayaran
Setelah menyelesaikan proses registrasi, Anda dapat langsung membuat transaksi Routing Pembayaran menggunakan API. Anda bisa memilih skema tanpa *Interface* atau dengan *Interface*, tergantung pada kebutuhan Anda.

#### Skema Tanpa *Interface*
1. Integrasikan API untuk membuat transaksi Payment Routing ke dalam sistem Anda. Untuk lebih jelasnya, silakan lihat Dokumentasi API: [Create Payment Routing \- API Docs](https://api-docs.oyindonesia.com/#https-request-create-and-update-payment-routing)
2. Hit API OY\! untuk membuat transaksi Routing Pembayaran.
3. Masukkan parameter berikut: "need\_frontend" → "FALSE"
4. Pilih satu metode pembayaran: BANK\_TRANSFER, EWALLET, QRIS, CARDS
5. Tambahkan metode pembayaran yang dipilih ke parameter "list\_enable\_payment\_method".

   **Catatan:** Hanya satu metode pembayaran yang boleh dimasukkan, jika lebih dari satu akan muncul pesan error.
6. Pilih satu bank atau penyedia pembayaran (SOF) sesuai metode yang dipilih:
* BANK\_TRANSFER: 014, 009, 002, 008, 022, 213, 011, 016, 484, 451, 013\.
* EWALLET: shopeepay\_ewallet, dana\_ewallet, linkaja\_ewallet
* QRIS: QRIS
* CARDS: CARDS
7. Tambahkan SOF yang dipilih ke parameter "list\_enable\_sof".

   **Catatan**: Hanya satu SOF yang boleh dimasukkan, jika lebih dari satu akan muncul pesan error.
8. Jika menggunakan E-wallet Direct Payment, isi parameter "use\_linked\_account" dengan:

   "TRUE" → Jika menggunakan ShopeePay Direct Payment  
   "FALSE" → Jika tidak menggunakan fitur ini  
   Pastikan [Account Linking](https://docs.oyindonesia.com/#api-account-linking-accepting-payments) sudah dilakukan sebelum membuat transaksi Direct Payment.
9. Jika ingin langsung mengirim uang setelah menerima pembayaran, isi "payment\_routing" dengan nomor rekening tujuan dan nominal dana yang akan dikirim ke masing-masing penerima
10. OY\! akan mengembalikan informasi pembayaran sesuai metode yang dipilih:
    - Transfer Bank \- Virtual Account: bank tujuan, nomor VA, dan jumlah transaksi. 
    - Transfer Bank \- Kode Unik: bank tujuan, nomor rekening, nama rekening, nominal tagihan awal, nominal unik, dan total nominal.
    - QRIS: URL untuk mengakses kode QR. 
    - E-Wallet: link untuk mengarahkan pelanggan ke E-wallet yang dipilih. 
    - Kartu debit/kredit: link untuk mengarahkan pelanggan agar mengisi detail kartu dan melanjutkan pembayaran.
11. Tampilkan detail pembayaran kepada pelanggan di dalam aplikasi Anda.

#### Skema Dengan *Interface*
Jika Anda ingin menggunakan halaman checkout bawaan dari OY\! (Link Pembayaran), ikuti langkah-langkah berikut:

1. Integrasikan API untuk membuat transaksi Payment Routing ke dalam sistem Anda. Untuk lebih jelasnya, silakan lihat Dokumentasi API: [Create Payment Routing \- API Docs](https://api-docs.oyindonesia.com/#https-request-create-and-update-payment-routing)
2. Hit API OY\! untuk membuat transaksi Routing Pembayaran.
3. Masukkan parameter berikut: "need\_frontend" → "TRUE"
4. Pilih satu metode pembayaran: BANK\_TRANSFER, EWALLET, QRIS, CARDS
5. Tambahkan daftar metode pembayaran yang dipilih ke dalam parameter "list\_enable\_payment\_method".

   **Catatan**: Anda bisa memasukkan lebih dari satu metode pembayaran agar pelanggan dapat memilih metode yang diinginkan.
6. Pilih bank atau penyedia pembayaran (SOF) untuk setiap metode pembayaran:
   - BANK\_TRANSFER: 014, 009, 002, 008, 022, 213, 011, 016, 484, 451, 013 
   - EWALLET: shopeepay\_ewallet, dana\_ewallet, linkaja\_ewallet 
   - QRIS: QRIS 
   - CARDS: CARDS
7. Tambahkan daftar SOF yang dipilih ke dalam parameter "list\_enable\_sof".

   **Catatan**: Anda bisa memasukkan lebih dari satu bank/penyedia pembayaran agar pelanggan dapat memilih metode pembayaran yang diinginkan.
8. Jika ingin langsung mengirim uang setelah menerima pembayaran, isi "payment\_routing" dengan nomor rekening tujuan dan nominal dana yang akan dikirim ke masing-masing penerima
9. OY\! akan mengembalikan URL Link Pembayaran, yang dapat Anda bagikan kepada pelanggan untuk menyelesaikan pembayaran.


### Cara Menyelesaikan Pembayaran

#### Skema Tanpa *Interface*
EachSetiap metode pembayaran memiliki alur yang berbeda untuk menyelesaikan transaksi, tergantung pada kebijakan masing-masing metode pembayaran. Silakan merujuk ke panduan berikut untuk menyelesaikan transaksi berdasarkan metode pembayaran yang digunakan:

[Menyelesaikan transaksi Transfer Bank \- Virtual Account](https://docs.oyindonesia.com/#bank-transfer-virtual-account-payment-methods)

[Menyelesaikan transaksi Transfer Bank \- Kode Unik](https://docs.oyindonesia.com/#bank-transfer-unique-code-payment-methods)

[Menyelesaikan transaksi QRIS](https://docs.oyindonesia.com/#qris-payment-methods)

[Menyelesaikan transaksi E-Wallet](https://docs.oyindonesia.com/#e-wallet-payment-methods)

[Menyelesaikan transaksi Kartu Debit/Kredit](https://docs.oyindonesia.com/#cards-payment-methods-payment-methods)

Untuk melakukan simulasi transaksi di mode demo/staging, silakan merujuk ke panduan berikut:

[Simulasi pembayaran Transfer Bank \- Virtual Account](https://docs.oyindonesia.com/#bank-transfer-virtual-account-payment-methods)

[Simulasi pembayaran Transfer Bank \- Kode Unik](https://docs.oyindonesia.com/#bank-transfer-unique-code-payment-methods)

Simulasi pembayaran QRIS (saat ini belum tersedia)

[Simulasi pembayaran E-Wallet](https://docs.oyindonesia.com/#e-wallet-payment-methods)

[Simulasi pembayaran Kartu Debit/Kredit](https://docs.oyindonesia.com/#cards-payment-methods-payment-methods)

#### Skema dengan *Interface*
Setelah Anda berhasil membuat transaksi Routing Pembayaran menggunakan skema dengan *interface*, Anda dapat membagikan Link Pembayaran kepada pelanggan Anda.

Langkah-langkah bagi pelanggan untuk menyelesaikan transaksi menggunakan skema dengan *interface* sama seperti menyelesaikan transaksi Link Pembayaran. Silakan merujuk ke panduan [berikut](https://docs.oyindonesia.com/#completing-payments-payment-link).

### Memeriksa Status Transaksi
Semua transaksi Routing Pembayaran yang telah dibuat akan ditampilkan di dashboard. Anda dapat pergi ke menu "Routing Pembayaran" untuk melihat daftar transaksi yang telah dibuat. Di dalam dashboard, Anda dapat melihat detail transaksi, termasuk informasi transaksi yang dimasukkan saat pembuatan, status transaksi, dan nomor referensi pembayaran\*

Dashboard juga memiliki fitur untuk mencari, memfilter, dan mengekspor daftar transaksi dalam berbagai format, seperti Excel (.xlsx), PDF (.pdf), dan CSV (.csv).

Jika Anda tidak menerima *callback* transaksi dari sistem kami, Anda dapat menggunakan [API Check Status](https://api-docs.oyindonesia.com/#check-status-payment-routing-transaction-payment-routing) untuk mendapatkan status transaksi terbaru.

**Catatan:** Nomor Referensi Pembayaran adalah nomor identifikasi untuk pembayaran yang berhasil ketika pelanggan menyelesaikan transaksi QRIS. Nomor referensi ini juga ditampilkan pada bukti transaksi pelanggan. Fitur ini hanya tersedia untuk transaksi QRIS.

### Menerima Dana ke Saldo
Setelah pelanggan melakukan pembayaran, OY\! akan memperbarui status transaksi dan mengirimkan notifikasi ke sistem Anda untuk mengonfirmasi bahwa transaksi telah dibayar. OY\! kemudian akan menyelesaikan dana ke saldo akun OY\! Anda.

Namun, waktu penyelesaian (*settlement*) dapat berbeda tergantung pada metode pembayaran yang digunakan, dengan rentang waktu mulai dari *real-time* hingga H+2 hari kerja.

### Mengirim Dana ke Penerima
Routing Pembayaran memungkinkan Anda untuk meneruskan dana secara otomatis setelah transaksi dibayarkan oleh pelanggan. OY\! secara otomatis mengirim dana ke penerima yang telah ditentukan dalam proses pembuatan transaksi setelah pembayaran diterima. Anda perlu memastikan bahwa saldo Anda mencukupi untuk melakukan proses pengiriman dana, terutama untuk metode pembayaran yang memiliki *settlement non-real time*; jika tidak, proses pengiriman dana akan gagal karena saldo tidak mencukupi.

## QRIS Aggregator
Quick Response Code Indonesian Standard (QRIS) adalah standar pembayaran QR di Indonesia yang dikembangkan oleh Bank Indonesia. Pembayaran dilakukan oleh pelanggan dengan memindai QR melalui aplikasi m-banking atau E-wallet mereka. Pembayaran QR sangat cocok untuk transaksi bernilai kecil karena menawarkan biaya yang terjangkau (0,7% per transaksi). QRIS Aggregator dapat digunakan untuk membuat transaksi QRIS sebagai metode pembayaran untuk kemudian ditampilkan ke customer Anda.

**Catatan**: QRIS Aggregator menggunakan API Payment Routing yang sudah ada. Bagian ini hanya menjelaskan fitur, alur, dll. yang berhubungan dengan transaksi QRIS Aggregator. Semua transaksi akan ditampilkan di halaman dashboard OY! di bagian halaman Payment Routing.

### Alur QRIS Aggregator
![QRIS Aggregator Scheme](../images/acceptingPayments/qris-aggregator/qris-flow.webp)

### Fitur QRIS Aggregator
Jumlah maksimum per transaksi untuk QRIS adalah Rp10.000.000, sedangkan jumlah minimum per transaksi adalah Rp10.000, baik melalui Link Pembayaran maupun Routing Pembayaran. Jika Anda ingin menerima pembayaran di bawah Rp10.000, silakan hubungi perwakilan bisnis kami.

### Cara Mengaktifkan
Ikuti langkah-langkah berikut untuk melakukan registrasi dan melakukan transaksi QRIS Aggregator:

1. Buat akun di OY!
1. Lakukan verifikasi akun dengan mengisi formulir verifikasi. Pastikan untuk mencentang produk Terima Uang dan Kirim Uang, karena Routing Pembayaran termasuk dalam produk ini.
1. Tim OY! akan meninjau dan memverifikasi formulir serta dokumen yang dikirimkan.
1. Setelah verifikasi disetujui, atur informasi rekening penerima.
  Catatan: Pastikan informasi rekening bank penerima benar, karena Anda hanya dapat mengaturnya sekali saja melalui dashboard demi alasan keamanan.
1. Buka halaman [Metode Pembayaran QRIS](https://docs.oyindonesia.com/#qr-code-qris-payment-methods) untuk informasi lebih detail mengenai apa yang diperlukan untuk aktivasi
1. Kirimkan alamat IP dan URL Callback ke perwakilan bisnis Anda atau melalui email ke business.support@oyindonesia.com. 
1. OY! akan mengirimkan Production API Key melalui perwakilan bisnis Anda.
  Catatan: Key Staging/Demo API dapat diakses melalui dashboard dengan masuk ke mode “Demo”, lalu temukan API key di menu kiri bawah.
1. Integrasikan QRIS Aggregator melalui API Payment Routing ke dalam sistem Anda. Ikuti panduan di dokumentasi [QRIS Aggregator - API Docs](https://api-docs.oyindonesia.com/#qris-aggregator).

### Cara Membuat Transaksi QRIS Aggregator
Setelah Anda berhasil menyelesaikan proses registrasi untuk metode pembayaran QRIS, Anda dapat langsung membuat transaksi QRIS Aggregator melalui Payment Routing (hanya melalui API). Anda akan menggunakan Payment Routing Tanpa UI saat menerapkan skema QRIS Aggregator.

1. Integrasikan API QRIS Aggregator [API QRIS Aggregator](https://api-docs.oyindonesia.com/#qris-aggregator) melalui Payment Routing.
1. Panggil [API Create QRIS transaction](https://api-docs.oyindonesia.com/#create-qris-transaction-qris-aggregator) milik OY!.
  1. Masukkan parameter “need_frontend” dengan nilai "false".
  1. Pilih QRIS sebagai metode pembayaran dengan
    1. Mengisi QRIS dalam parameter list_enable_payment_method.
    1. Mengisi QRIS dalam parameter list_enable_sof.
1. OY! akan mengembalikan URL untuk mengakses kode QR guna menyelesaikan pembayaran.
1. Tampilkan kode QR tersebut kepada pelanggan Anda di dalam aplikasi.

### Cara Menyelesaikan Pembayaran
Silakan merujuk pada bagian [berikut ini](https://docs.oyindonesia.com/#qr-code-qris-payment-methods).

### Memeriksa Status Transaksi
Semua transaksi QRIS Aggregator yang telah dibuat akan ditampilkan di dashboard. Anda dapat pergi ke menu "Routing Pembayaran" untuk melihat daftar transaksi yang telah dibuat. Di dalam dashboard, Anda dapat melihat detail transaksi, termasuk informasi transaksi yang dimasukkan saat pembuatan, status transaksi, dan nomor referensi pembayaran*
Dashboard juga memiliki fitur untuk mencari, memfilter, dan mengekspor daftar transaksi dalam berbagai format, seperti Excel (.xlsx), PDF (.pdf), dan CSV (.csv).

Jika Anda tidak menerima callback transaksi dari sistem kami, Anda dapat menggunakan API Check Status untuk mendapatkan status transaksi terbaru.
 [Check Status QRIS Transaction - API Docs](https://api-docs.oyindonesia.com/#check-status-qris-transaction-qris-aggregator).

*Nomor Referensi Pembayaran adalah nomor identifikasi untuk pembayaran yang berhasil ketika pelanggan menyelesaikan transaksi QRIS. Nomor referensi ini juga ditampilkan pada bukti transaksi pelanggan.

### Menerima Dana ke Saldo
Setelah pelanggan melakukan pembayaran, OY! akan memperbarui status transaksi dan mengirimkan notifikasi ke sistem Anda untuk mengkonfirmasi bahwa transaksi telah dibayar. OY! kemudian akan menyelesaikan dana ke saldo akun OY! Anda. Namun, waktu penyelesaian (settlement) dapat berbeda tergantung pada metode pembayaran yang digunakan, dengan rentang waktu mulai dari real-time hingga H+2 hari kerja.

## API Account Linking
Tautan Pembayaran atau *Account Linking* adalah fitur yang dapat membantu pelanggan Anda untuk menautkan akun pembayarannya ke sistem Anda melalui proses *tokenization.* Dengan menautkan akun, pelanggan Anda dapat melihat saldo akun mereka di dalam aplikasi Anda dan nantinya dapat melakukan pembayaran tanpa diminta untuk memasukkan rincian kartu atau nomor E-wallet. Untuk saat ini, fitur ini mendukung E-wallet ShopeePay dan DANA. Fitur ini gratis tanpa biaya sepeser pun.

### Alur Account Linking

![Account Linking Flow](../images/acceptingPayments/api-account-linking/payment-flow-api-account-linking.webp)
![Get Account Balance Flow](../images/acceptingPayments/api-account-linking/payment-flow-api-get-e-wallet-balance.webp)
![Account Unlinking API Flow](../images/acceptingPayments/api-account-linking/payment-flow-unlink-account-via-api-accoung-linking.webp)
![Account Unlinking via App Flow](../images/acceptingPayments/api-account-linking/payment-flow-unlink-account-via-e-wallet-app.webp)

### Cara mengaktifkan fitur Account Linking
Ikuti langkah-langkah berikut untuk mengaktifkan fitur Account Linking:

1. Buat akun OY\! Indonesia.
2. Verifikasi akun Anda dengan cara mengisi formulir verifikasi. Pastikan Anda menceklis produk “Terima Uang”, karena fitur ini diperuntukkan untuk produk Terima Uang
3. Tim kami akan mereview formulir dan dokumen Anda.
4. Setelah akun Anda terverifikasi, siapkan informasi rekening bank penerima sebagai rekening penerima saldo OY\!.   
   **Catatan penting:** pastikan informasi rekening bank penerima sudah benar, karena tidak dapat diubah melalui dashboard OY\!
5. Kirimkan alamat IP, *callback* URL, dan *redirect* URL Anda kepada tim kami atau ke email [business.support@oyindonesia.com](mailto:business.support@oyindonesia.com).
6. OY\! Akan mengirimkan API Key Production sebagai otorisasi API melalui tim kami.  
   **Catatan:** API Key Staging/Demo dapat diakses melalui Dashboard OY\! dengan pergi ke mode "Demo," selanjutnya key Anda dapat ditemukan di menu kiri bawah.
7. Integrasikan API Account Linking ke sistem Anda. Silakan ikuti panduan yang ada di API Documentation di [halaman berikut](https://api-docs.oyindonesia.com/#api-account-linking).

### Menautkan akun pembayaran pelanggan ke aplikasi Anda
Pelanggan Anda dapat menautkan akun pembayaran mereka ke aplikasi Anda dengan meng-*hit*  API Account Linking. Ikuti langkah-langkah berikut untuk melakukannya :

1. Integrasikan API Account Linking ke sistem Anda. Untuk lebih jelasnya, silakan buka halaman [berikut](https://api-docs.oyindonesia.com/#get-linking-url-api-account-linking).
2. *Hit* API Account Linking. Sebagai respons, Anda akan menerima URL *linking.* URL ini akan digunakan pelanggan Anda untuk memberikan izin permintaan penautan akun.
3. Pelanggan Anda memberikan izin dan memasukkan PIN yang diperlukan untuk mengotorisasi permintaan.
4. Penyedia pembayaran akan memproses permintaan, dan OY\! akan mengirimkan *callback* kepada Anda untuk memberitahu bahwa akun telah berhasil ditautkan.
5. Setelah akun berhasil ditautkan, pelanggan akan diarahkan kembali ke *redirect* URL yang Anda tentukan saat proses aktivasi fitur.

### Melihat informasi saldo pelanggan Anda
Setelah pelanggan menautkan akun pembayaran mereka, Anda dapat mendapatkan informasi saldo akun pelanggan dengan menggunakan API *Get E-Wallet balance*. Anda dapat menampilkan saldo tersebut di dalam aplikasi Anda. Misalnya, menampilkan saldo selama proses *checkout*, sehingga pelanggan dapat mengetahui saldo mereka sebelum memilih metode pembayaran. Anda mendapatkan informasi lebih lanjut mengenai API *Get E-Wallet balance* di halaman [berikut](https://api-docs.oyindonesia.com/#get-e-wallet-account-balance-api-account-linking).

### Melepas tautan pembayaran pelanggan dari aplikasi Anda
Pelanggan yang telah menautkan akun pembayaran mereka dapat melepasnya kapan saja. Mereka dapat melakukannya melalui API *Account Unlinking* atau melalui aplikasi penyedia pembayaran. Menggunakan API *Account Unlinking* memungkinkan pelanggan Anda untuk memutuskan tautan akun di dalam aplikasi Anda. Pilihan lain yang dapat dilakukan pelanggan adalah melepas tautan akun melalui aplikasi penyedia pembayaran.

Ikuti langkah-langkah berikut untuk memandu Anda dan pelanggan Anda saat melepas tautan akun:

**API Account Unlinking**

1. Integrasikan API *Account Unlinking* ke sistem Anda. Lihat selengkapnya di [API Docs](https://api-docs.oyindonesia.com/#api-account-linking).
2. *Hit* API *Account Unlinking* OY\!. Setelah Anda *hit* API kami, OY\! akan meng-*hit* sistem penyedia pembayaran untuk melepas tautan akun pelanggan.
3. OY\! akan mengirimkan *callback* untuk memberi tahu Anda bahwa pelepasan tautan akun berhasil.


**Aplikasi Penyedia Pembayaran**

1. ShopeePay 
   1. Pelanggan Anda membuka aplikasi ShopeePay
   2. Pada menu, pilih OY\! sebagai aplikasi yang terhubung
   3. Pada bawah halaman “**Rincian Layanan**” , klik “**Hentikan Terhubung ke Layanan**”

2. DANA
   1. Pelanggan Anda membuka aplikasi DANA
   2. Pilih Akun → **Akun Terhubung**
   3. Klik “**Lihat Lebih**” pada OY\!
   4. Checklist salah satu atau semua perangkat yang terhubung
   5. Pilih “**Hapus Semua**”

## Account Receivable

Payment Link
Account Receivable product provides features to help you manage your invoices and payments. This product supports invoice customization and payment customization based on your customer needs. Creation for Account Receivable is available on OY! dashboard and/or API.

**Disclaimer:** the word “account receivable” is used interchangeably with “invoice” in this document

**Payment Flow**

1. You create account receivable (i.e. invoice) for your customers and share it through email or WhatsApp
1. Your customers can make payments either through the link attached to the invoice or directly via a Virtual Account (VA) number.
1. OY! detects the payments and notifies you about the payments through callback and payment status update on your dashboard
1. The payments received will be settled in your OY! dashboard


### Key Features

#### Various options of creating account receivable

**1. Creating account receivable through dashboard**


* **No integration needed**

Offer easiest way to invoicing through dashboard without any technical development.


* **Manage your customer data easily**

You can edit or deactivate the customer data as you need. The customization includes taxes imposed and type of payment as explained below (with payment invoice link or fixed virtual account), so it can be customizable according to your needs.


* **Various payment methods**

We have various payment options that you can use to receive payments from your customer:

1. Payment invoice link (Bank Transfer (via Virtual Account and Unique Code), Credit/Debit card, E-Wallet (ShopeePay, DANA, LinkAja, OVO), QRIS, and Retail outlets (Alfamart and Indomaret))
1. Fixed Virtual Account. Fixed VA is a virtual account where your customer uses the same account number for every payment. This means they will pay the same virtual account for every invoice you send. However, you can’t send a new invoice to the customer until the previous one has been paid.


* **Customizable Invoice to Personalize Your Business**

Create invoice templates based on your business personalization. We provide a lot of invoice templates and are able to change the color and business logo that suits your business branding.


**2. Creating account receivable through API**

* Seamless integration with your customer's purchase journey. Simply send us an API request and we will respond with an account receivable (i.e. invoice) link that you can embed to your system.

* Added level of customization
  Below are the things that you can customize:

1. Amount (specify the amount and choose between open amount vs closed amount)
1. Admin fee (choose whether the admin fee will be paid by your customers or borne by you)
1. Payment method (choose the payment methods displayed to your customers among Bank Transfer (via Virtual Account and Unique Code), Credit/Debit card, E-Wallet (ShopeePay, DANA, LinkAja, OVO), QRIS, and retail outlets (Alfamart and Indomaret). Additionally, you can choose which banks are enabled for Bank Transfer method.
1. Payment invoice expiration date
1. The customer data for invoicing

* **Various Payment Methods.** Our payment invoice provides multiple payment options: Bank Transfer (via Virtual Account and Unique Code), Credit/Debit card, E-Wallet (ShopeePay, DANA, LinkAja, OVO), QRIS, and retail outlets (Alfamart and Indomaret).

* **Upload or Create a PDF for your Invoice Billing.** We help you to generate your invoice using OY! PDF templates also you can attach your invoice supporting documents via our API.

* **Account Receivable Delivery by Email and/or WhatsApp.** You can choose to send the created link to your customers through Email and/or WhatsApp for better payment conversion. By default, our system will send the invoice through email but if you want to share the invoice and payment invoice link through WhatsApp, follow the steps [here](https://api-docs.oyindonesia.com/#resend-invoice-api-account-receivable).


#### Capability to monitor payment invoice/account receivable details on dashboard

Whether you create the account receivable through dashboard or API, you can check the list of transactions through dashboard easily.

#### Support Multi Entity Management

With this feature, you will be able to create invoices from your users through account receivable created on behalf of a Sub-Entity account. When your customers make a successful transaction, the transaction will be recorded in the Sub-Entity Account's balance. As a main account, you can view the Sub-Entity Account's balance and transaction list anytime under “Sub-Entity Statement” in the “Multi Entity” menu.

Click [here](https://docs.oyindonesia.com/#multi-entity-management-oy-dashboard-tutorial) for more information on this feature.


### Registration and Set Up

#### For dashboard-generated invoices

Follow this check-list to ensure you're all set up to use the service:

1. Create an account for OY! business
1. Upgrade your account by submitting the required documentation
1. Have your upgrade request approved
1. Set up your receiving bank account information (note: ensure that the receiving bank account information is accurate as it cannot be changed via OY! dashboard for security reasons)
1. Once your account is approved, you can start creating account receivable transactions


#### For API-generated invoices

1. Create an account OY! business
1. Upgrade your account by submitting the required documentation
1. Have your upgrade request approved
1. Set up your receiving bank account information (note: ensure that the receiving bank account information is accurate as it cannot be changed via OY! dashboard for security reasons)
1. Submit your IPs to your business representative
1. Set your callback URLs in “Developer Option” under the “Settings” menu. Please input your callback URLs in the Payment Link’s section
1. Receive an API Key from us (note: it is required for API authorization purpose)
1. Integrate with our [Account Receivable API](https://api-docs.oyindonesia.com/#create-api-account-receivable)


### Testing

#### Creating dashboard-generated dummy account receivable

1. Log on to your OY! dashboard
1. Choose "Demo" environment
1. Click “Customer Data” under Receive Money menu
1. Click “Create New Customer” on the top right corner
1. Fill in the required fields regarding Customer Information then click “Next”
1. Fill in the required fields regarding Tax and Payment Information then click “Save”
1. Start to create a new invoice by choosing “Account Receivable” under the Receive Money menu
1. Click "Create New Invoice" on the top right corner
1. Fill in the necessary details

| Parameter | Description |
|------|------|
| Invoice Number| The number of the invoice to be created |
| Invoice Date | The date of the invoice |
| Due Date | Due date of a transaction. You can choose between 7, 14, 30, 45, or 60 days after the created date of the invoice OR you can also input a specific/custom date. Your customer will get reminders to pay on D-1, D-Day, and D+7 from the transaction due date through email. |
| Link Expiry Datetime | You can set your payment invoice link expiry date and time for your convenience. The expiry time selected will also appear on PDF documents. |
| Customer | The name of the customer whom the invoice is addressed to. You can choose the name of the customer from the dropdown. To create a new customer, follow the instructions [here.](https://docs.oyindonesia.com/#creating-a-customer-for-account-receivable-invoice-payment-links-invoice)|
| Product Description | The name and/or description of the product |
| Quantity | The quantity of the product |
| Unit Price | Unit price of the product |
| Amount | Total amount for the product (amount = quantity x unit price) |
| Notes | The note to be displayed in the automatically generated invoice file |
| Additional Documents | The supporting documents that will be attached in the email along with the invoice. Accept PDF & Excel files. Maximum of 4 documents (maximum 5MB each). |
| Invoice Payment | You can choose between "Payment Link" (the invoice will be embedded with a payment link that the customer can use to make a payment) or "Invoice Only" (the invoice will not be embedded with a payment link). For "Invoice Only", invoice status can be adjusted at any time for record purposes. |
| Payment Method | The payment method that you can choose to enable/disable for your customers only if you choose “Payment Link” as your invoice payment type above. The payment methods available are Bank Transfer (via Virtual Account and Unique Code), Credit/Debit card, E-Wallet (ShopeePay, DANA, LinkAja, OVO), QRIS, and retail outlets (Alfamart and Indomaret). |
| Admin Fee Method | You can choose between "Included in total amount" or "Excluded from total amount". "Included in total amount" means the admin fee will be deducted from the payment amount made by the customer. "Excluded from total amount" means the admin fee will be added to the customer's total payment (Total Amount = Specified Amount + Admin Fee) |


#### Creating API-generated dummy account receivable

1. Create an OY! business account
1. Send a request to activate API Payment Link product and obtain staging API Key to your business representative
1. Create the customer data first by sending a request to https://api-stg.oyindonesia.com/api/account-receivable/customers. Enter the required and optional fields, as referenced in the [API reference docs](https://api-docs.oyindonesia.com/#https-request-create)
1. Then, you can try to create an account receivable by sending a request to https://api-stg.oyindonesia.com/api/account-receivable/invoices. Enter the required and optional fields, as referenced in the [API reference docs](https://api-docs.oyindonesia.com/#create-amp-send-invoice-api-account-receivable)


#### Accessing and monitoring the created test account receivable

Whether you create the link through dashboard or API, you can see the details of your link on the OY! Dashboard, you can check it on “Account Receivable” under the Receive Money menu.


#### Mock Credentials for Testing

* For payment via Credit Card or Debit Card, you may use the credentials below to simulate an end-to-end payment journey for a successful transaction in the staging environment:

| Card Details | Values |
|--------|-------|
| Card Number | 2223000000000007 |
| Card Expired Month/Year | 01/39 |
| Card CVN | 100 |
| Card Holder Name | John Doe |


1. Click the payment invoice link
1. You’ll be redirected to page to choose which transaction you want to proceed
1. Choose your payment method (in this case please choose “Credit/Debit Card”) then click “Bayar”
1. You’ll be redirected to the summary of the payment
1. Please click “Bayar via CARDS”
1. You’ll be redirected to page to process your payment
1. Please fill in the credentials above, email, phone number, and also mark the box for terms and conditions then click “Pay”
1. You’ll see loading page that informs you the system is processing your payment
1. Congratulations! You’ve completed your (dummy) payment on account receivable using credit/debit card


* For bank transfer you can test process payment from payment invoice link and mock the transaction using callback from our OY! Dashboard with demo environment

1. Click the payment invoice link
1. You’ll be redirected to page to choose which transaction you want to proceed
1. Choose your payment method (in this case please choose bank transfer BCA) then click “Bayar”
1. You’ll see loading page that informs you the system is processing your payment
1. Copy the VA number then open the OY! dashboard and choose demo environment
1. Go to section “Callback Bank Transfer” under the “Settings” menu
1. Select the Transaction Type (in this case please select “Virtual Account”), Bank Name, VA Number, Amount, and Payment Date and Time then click “Send Callback”
1. Congratulations! You’ve completed your (dummy) payment on account receivable using bank transfer


* For e-wallet you can test to process payment from payment invoice link, specifically Shopeepay and LinkAja

1. Click the payment invoice link
1. You’ll be redirected to page to choose which transaction you want to proceed
1. Choose your payment method (in this case please choose e-wallet category) then click “Bayar”
1. You’ll see loading page that informs you the system is processing your payment
1. Go to “One Time” on section “Payment Link”
1. Copy the “Ref Number” on transaction you’ve created for Account Receivable (you can see the amount of transaction and customer name)
1. Go to the “E-wallet Callback”
1. Choose e-wallet type you’ve choose on the payment link
1. Paste the “Ref Number” on the form Ref Number
1. Put the amount of transaction
1. Click “Send Callback”, you can check your transaction successfully paid on Account Receivable (demo) page
1. Congratulations! You’ve completed your (dummy) payment on account receivable using e-wallet


**Note:** Currently we only provide dummy transactions using credit/debit card, bank transfer, and e-wallet. Please use only the mentioned payment method, otherwise your payment may not be processed successfully.


### How to Use Account Receivable via Dashboard

1. Log on to your OY! dashboard
1. Choose "Production" environment
1. Choose “Account Receivable” under Receive Money menu
1. Click "Create New Invoice" on the top right corner
1. Fill in the necessary details

| Parameter | Description |
|------|------|
| Invoice Number | The number of the invoice to be created |
| Invoice Date | The date of the invoice |
| Due Date | Due date of a transaction. You can choose between 7, 14, 30, 45, or 60 days after the created date of the invoice OR you can also input a specific/custom date. Your customer will get reminders to pay on D-1, D-Day, and D+7 from the transaction due date through email. |
| Link Expiry Datetime | You can set your payment invoice link expiry date and time for your convenience. The expiry time selected will also appear on PDF documents. |
| Customer | The name of the customer whom the invoice is addressed to. You can choose the name of the customer from the dropdown. To create a new customer, follow the instructions [here](https://docs.oyindonesia.com/#creating-a-customer-for-account-receivable-invoice-payment-links-invoice). |
| Product Description | The name and/or description of the product |
| Quantity  | The quantity of the product |
| Unit Price | Unit price of the product |
| Amount | Total amount for the product (amount = quantity x unit price) |
| Notes | The note to be displayed in the automatically generated invoice file |
| Additional Documents | The supporting documents that will be attached in the email along with the invoice. Accept PDF & Excel files. Maximum of 4 documents (maximum 5MB each). |
| Invoice Payment | You can choose between "Payment Link" (the invoice will be embedded with a payment link that the customer can use to make a payment) or "Invoice Only" (the invoice will not be embedded with a payment link). For "Invoice Only", invoice status can be adjusted at any time for record purposes. |
| Payment Method | The payment method that you can choose to enable/disable for your customers. The payment methods available are Bank Transfer (via Virtual Account and Unique Code), Cards (Credit Card/Debit Card), E-Wallet (ShopeePay, DANA, LinkAja, OVO), QRIS, and retail outlets (Alfamart and Indomaret). |
| Admin Fee Method | You can choose between "Included in total amount" or "Excluded from total amount". "Included in total amount" means the admin fee will be deducted from the payment amount made by the customer. "Excluded from total amount" means the admin fee will be added to the customer's total payment (Total Amount = Specified Amount + Admin Fee) |


* Create Invoice form
  ![invoice_creation](../images/accountReceivable/invoice_creation_page.png)


* Invoice details inside dashboard
  ![detail_inv_data](../images/accountReceivable/detail_invoice_data.png)


* Invoice preview inside the dashboard
  ![prev_inv](../images/accountReceivable/invoice_preview.png)


### Monitoring the account receivable

All of the created invoices (via API or Dashboard) can be monitored through your dashboard (Invoice List).

![ar_table_data](../images/accountReceivable/ar_table_data.png)

![ar_detail_data](../images/accountReceivable/ar_detail_data_sidemodal.png)


The transaction details that you can see are:

| Column Name | Definition |
|------|------|
| Invoice Number | The number of the invoice created |
| Customer Name | The name of the customer whom the invoice belongs to the amount billed for that particular transaction |
| Amount Billed | The amount billed for that particular transaction |
| Admin Fee | The admin fee charged for that particular transaction |
| Amount Received | The amount received / the amount of payment made by the customer. This will only be filled in after the customer has completed the payment |
| Invoice Date | The date of the invoice |
| Payment Date | The date of payment (if the invoice has been successfully paid by the customer) |
| Due Date | The invoice due date |
| Days Past Due | How many days an invoice has gone unpaid past the due date. For example, if the due date is 1 July and the invoice is not paid by 4 July, then Days Past Due will be filled in with “Late Payment 3 days”. |
| Payment Link Expiry | Maximum date and time that a payment link can stay valid for before expiring permanently. |
| Status | The transaction status. Possible values are CREATED, PAID, CANCELED, and OVERDUE |


In terms of status, below are the status mapping between API Invoice and status in dashboard

| API Invoice Status | Dashboard Status |
|------|------|
| CREATED, WAITING PAYMENT | UNPAID |
| PAID | PAID |
| CANCELLED | CANCELED |
| OVERDUE | UNPAID (with details under the Late Payment Tab on the Invoice Details page) |


Definition for each status

| API Invoice Status | Explanation |
|------|------|
| CREATED | You already created the account receivable invoice and the customer hasn't made any action. |
| WAITING PAYMENT | Your customer already chooses the payment method and needs to pay before the time limit ends. |
| PAID | Your customer has successfully paid the invoice. |
| CANCELLED | The invoice has already been deleted (this can be from OY! dashboard or API request). |
| OVERDUE | The invoice has passed the invoice payment deadline. |


There are several actions that you can take for the created invoice:

| Action | Definition |
|------|------|
| Send invoice | Send the invoice to the customer's defined email |
| Download invoice | Download the PDF file of the invoice |
| Delete | Delete the invoice. Only invoice with status CREATED can be deleted |

### Creating a Customer for Account Receivable

**There are 2 ways to create a Customer:**

Option 1: through “Create Invoice”
1. Click “Select Customer”
1. Click "Add New Customer"
1. Fill in Customer ID, Customer Name (mandatory), PIC Name, Customer Phone Number, Customer Email, Address, and Tax Type (mandatory).
1. Click “Save”

* Create Invoice page
  ![add_cust_creation](../images/accountReceivable/add_cust_ar_creation.png)

* Add Customer from Create Invoice
  ![add_cust_1](../images/accountReceivable/add_cust_ar_creation_step1.png)
  ![add_cust_2](../images/accountReceivable/add_cust_ar_creation_step2.png)

For tax type, explanation is as follows:

| Tax Type | Definition |
|------|------|
| No tax | Tax will not be added to the subtotal |
| PPN 10% Inclusive | Tax will not be added upon the subtotal because the subtotal is assumed to be tax inclusive. For transactions prior to April 2022, a 10% PPN applies. |
| PPN 10% Exclusive | Tax will be added separately to the subtotal. For transactions prior to April 2022, a 10% PPN applies. |
| PPN 11% Inclusive |Tax will not be added upon the subtotal because the subtotal is assumed to be tax inclusive. PPN 11% is applicable for transactions after April 2022. |
| PPN 11% Exclusive | Tax will be added separately to the subtotal. PPN 11% is applicable for transactions after April 2022. |
| PPh 23 Non NPWP 4% | Tax will be subtracted from the subtotal |
| PPh 23 NPWP 2% | Tax will be subtracted from the subtotal |


Option 2: Through "Customer Management" menu
1. Click "Customer Management" sidebar under the "Receive Money" menu
1. Click "Add new customer"
1. Fill in Customer ID, Customer Name (mandatory), PIC Name, Customer Phone Number, Customer Email, Address then click “Next”
1. Fill in Tax Type (mandatory) then click "Save"

* Customer Management page
  ![customer_management](../images/accountReceivable/cust_mgmt_table.png)

* Create Customer page
  ![add_cust_1](../images/accountReceivable/add_cust_step1.png)
  ![add_cust_2](../images/accountReceivable/add_cust_step2.png)

All of the created customers can be monitored through your dashboard (Customer List). There are several actions that you take for the customer data:

| Actions | Functions |
|------|------|
| Edit | To edit the data of the customer |
| Activate/Deactivate | To deactivate / reactivate the customer |

If you click on the row you selected, you will be able to see the detailed data of the customer, including the list of invoices belonging to that customer.

![detail_cust_data](../images/accountReceivable/detail_cust_data.png)

![detail_cust_trx](../images/accountReceivable/detail_cust_trx.png)



### Amount Customization for Account Receivable

OY! has a feature that allows you to add the price of the subtotal (addition) and/or deduct the price from subtotal. For example, if you want to apply a discount for your customers, or if you want to add shipping fee,service fee, or any other charges that you would like to add or deduct from the subtotal of the invoice. You may refer to the steps below:

1. Click "add column" below the subtotal
1. Choose "addition" or "subtraction" from the dropdown
1. Fill in the description
1. Fill in the amount

* Invoice Creation page
  ![invoice_creation](../images/accountReceivable/invoice_creation_page.png)

* Add Column page
  ![add_column](../images/accountReceivable/add_column.png)


### How to Use Account Receivable via API

OY! allows invoices creation via API. Here are the steps:

1. Create the customer data first by sending a request to https://partner.oyindonesia.com/api/account-receivable/customers. Enter the required and optional fields, as referenced in the [API reference docs](https://api-docs.oyindonesia.com/#https-request-create)
1. Then, you can try to create an account receivable by sending a request to https://partner.oyindonesia.com/api/account-receivable/invoices. Enter the required and optional fields, as referenced in the [API reference docs](https://api-docs.oyindonesia.com/#create-amp-send-invoice-api-account-receivable)
1. An endpoint to [check your account receivable invoice](https://api-docs.oyindonesia.com/#https-request-get-invoice-details) data is also available and can be accessed at any time.
1. Lastly, we provide an endpoint to [cancel your account receivable invoice](https://api-docs.oyindonesia.com/#https-request-cancel-invoice) based on id (unique payment id). The invoice must still be active, a payment method must not have been selected, and status must still be in “WAITING_PAYMENT”.

Just like the account receivable creation from OY! dashboard you can see the transactions and their details from the OY! dashboard. This report will include all payment links generated both via OY! dashboard and API. Data can be differentiate by column “Created Via” on Account Receivable table, if your invoice is created via API then it will fills with “API”, otherwise it will fills with “Dashboard”.

![ar_table](../images/accountReceivable/ar_table_data.png)


### Customizing the UI of Payment Link & Account Receivable

In order to maintain a consistent brand experience for your customers, you can customize the look and feel of both your Payment Link & Account Receivable in the Dashboard, where you can do the following things:

1. Upload a link address to logo
1. Choose the button color and the theme color of the payment link

The updated logo will be reflected in both products.

How to customize the UI via Payment Link or Account Receivable

1. Log onto your OY! dashboard
1. Go to “Account Receivable” section under “Receive Money” menu
1. Click the “Settings" icon located at the top right of the page
1. Click “Set Appearance” tab
1. Click “Open Configuration” for “Payment Link Display”
1. You will be redirected to the Settings page
1. Input the URL for your logo (if you’re using snipboard.io [https://snipboard.io/], the correct URL should be in “https://i.snipboard.io/image.jpg” format. If you’re using imgbb.com [https://imgbb.com/], the correct URL should be in “https://i.ibb.co/abcdef/image.jpg” format)
1. Select your header color (you can select from our available color picker tools or you can input the 6-digit #HEX code)
1. Select your button and link color (you can select from our available color picker tools or you can input the 6-digit #HEX code)
1. Click "Save"

![ar_config](../images/accountReceivable/ar_table_data_config.png)

![ar_config_set_appearance](../images/accountReceivable/config_set_appearance.png)

* Payment Link Display Settings

![PL_config](../images/accountReceivable/payment_link_config.png)


**Note:**
* By saving the changes, the colors will be applied to the payment links previously created (before saving) as well as the payment links created after saving and also account receivable PDF documents.
* Please check your existing payment link or create a new one. You will see that your changes have been successfully saved.

### Customizing Account Receivable Invoice Template and Color

For a more personalized touch on the invoice, you can now customize your template look in the Dashboard, where you can do the following things:
1. Change invoice logo
1. Change Invoice template
1. Change Invoice color


How to customize the Account Receivable Invoice UI:
1. Log onto your OY! dashboard
1. Go to Account Receivable section in the dashboard
1. Click the “Settings" icon located at the top right next to “Create New Invoice” button
1. Click “Open Configuration” for “Invoice Template”
1. Input the URL of your logo. Changing the logo here will automatically update the logo in Payment Link, Invoice and 1.Email Notifications.
1. Select your color theme (you can select from our available color picker tools or you can input the 6-digit #HEX code). This color will be the main theme color in your invoice.
1. Select your template from our template selections. Changes will be reflected immediately in the preview area
1. Click “Save”

* Account Receivable Configuration page

![ar_config](../images/accountReceivable/ar_table_data_config.png)

![ar_config_set_appearance](../images/accountReceivable/config_set_appearance.png)

* Invoice Template Configuration page

![invoice_template_config](../images/accountReceivable/invoice_template_config_page.png)

### How to Set Automated Invoice Number

For your convenience, you have the option to auto-generate invoice numbers. No more worrying about the sequence of invoice numbers. The invoice number template has been pre-defined by OY!.

1. Log onto your OY! dashboard
1. Go to Payment Link or Account Receivable section in the dashboard
1. Click the 'Settings" icon located at the top right next to “Create New Invoice” button
1. Turn the toggle on. You can now adjust the automatic invoice number format
1. Click “Save” to continue

* Account Receivable Configuration page

![ar_config](../images/accountReceivable/ar_table_data_config.png)

* Configuration Invoice Number page

![ar_config_invoice_no](../images/accountReceivable/config_inv_no.png)


**Note:** this changes will not impact your previously created invoices


### Sending Account Receivable Invoice with Payment Link via WhatsApp

For your convenience, you can now distribute invoices to your users via WhatsApp using the default message template. If you are interested in using this feature, please kindly contact our business representative or [customer service team](https://www.oyindonesia.com/en/contact-us).

There will be 2 different ways to distribute the invoice via Whatsapp and there is a maximum of one Whatsapp message per unpaid invoice. When the status is paid, customers will get a payment confirmation from Whatsapp too.

* Option 1 - via Create New Invoice

![WA_creation](../images/accountReceivable/send_wa_creation.png)


* Option 2 - via Invoice Table

![WA_table](../images/accountReceivable/send_wa_table.png)


* Option 3 - via Invoice Details

![WA_detail](../images/accountReceivable/send_wa_detail.png)


