

# Kirim Uang


## API Kirim Uang

API Kirim Uang memberikan Anda layanan untuk mengirimkan uang ke lebih dari 100 bank di Indonesia melalui platform OY! dengan waktu yang fleksibel. Proses integrasi untuk menggunakan produk API Kirim Uang ini sangat mudah. Anda bisa baca selengkapnya [di sini](https://api-docs.oyindonesia.com/#fund-disbursement). 


### Fitur Utama



1. **Overbooking **

    OY! memungkinkan Anda untuk menggunakan dana langsung dari rekening Mandiri atau CIMB untuk kebutuhan pengiriman uang. Anda cukup melakukan top up saldo sebesar biaya admin, bukan sejumlah yang ingin dikirimkan. Untuk informasi lebih lanjut mengenai fitur ini, silakan hubungi [tim kami](partner@oyindonesia.com).

2. **Cek status transaksi dan _callback_**

    Untuk semua pengiriman uang yang dilakukan, Anda akan menerima pemberitahuan mengenai transaksi Anda, baik itu berhasil, gagal, atau dalam status tertunda. Kami juga menyediakan API untuk memeriksa status transaksi secara manual. Selain itu, kami juga menyediakan IP proxy untuk meningkatkan keamanan dan integritas _callback_ yang akan Anda terima.

3. **Cek saldo tersedia**

    Anda dapat memeriksa saldo yang tersedia kapan saja untuk memastikan bahwa saldo Anda cukup untuk melakukan pengiriman uang.



### Cara Mengaktifkan Produk API Kirim Uang



1. Buat akun OY! Indonesia
2. Selesaikan proses verifikasi bisnis (KYB)
3. Tunggu hingga akun Anda terverifikasi oleh tim kami
4. Sediakan IP yang akan di-_whitelist _dan link _callback _ke tim kami
5. Dapatkan _Key _API dari kami
6. Integrasikan dengan [API kami](https://api-docs.oyindonesia.com/#fund-disbursement) 


### Pengujian

Setelah berhasil membuat akun OY!, Anda dapat segera melakukan pengujian pengiriman uang melalui API. Ikuti langkah-langkah berikut untuk menguji alur API Kirim Uang: 



1. Masuk ke akun OY! Anda
2. Masuk ke mode “Demo”
3. Setelah Anda masuk ke mode Demo, akan ada key API staging yang tersedia di sudut kiri bawah halaman.
4. Sebelum melakukan transaksi pengiriman uang, periksa saldo yang tersedia melalui API GET [https://api-stg.oyindonesia.com/api/balance](https://api-stg.oyindonesia.com/api/balance) 
5. Buat transaksi kirim uang dengan mengirimkan permintaan ‘POST’ ke [https://api-stg.oyindonesia.com/api/remit%20(https://api-stg.oyindonesia.com/api/remit)](https://api-stg.oyindonesia.com/api/remit%20(https://api-stg.oyindonesia.com/api/remit)) menggunakan _Key _API Anda. Isi kolom yang diperlukan, seperti yang tercantum di [dokumentasi API OY!](https://api-docs.oyindonesia.com/#disbursement-fund-disbursement).  
6. Isi nominal yang akan dikirim, nama bank dan nomor rekening penerima, serta ID transaksi partner.
7. Untuk mendapatkan status permintaan kirim uang, Anda dapat memanggil API [https://api-stg.oyindonesia.com/api/remit-status](https://api-stg.oyindonesia.com/api/remit-status). API ini juga menawarkan opsi untuk melakukan _callback_ status dengan menggunakan "send_callback".
8. Jika pengiriman berhasil atau gagal, kami akan mengirimkan _callback_ ke URL _callback_ yang terdaftar pada mode demo. URL _callback_ dapat didaftarkan melalui tim kami.
9. Transaksi API Kirim Uang dapat Anda pantau melalui Dashboard di menu Kirim Uang - API Kirim Uang.


### Cara Menggunakan API Kirim Uang

Untuk mengirimkan uang, pastikan Anda mempunyai saldo OY! yang cukup di akun Anda. Anda bisa baca cara melakukan top up [di sini](https://docs.oyindonesia.com/#top-up-oy-dashboard-tutorial). 

Sebelum Anda mengirimkan uang, Anda dapat memvalidasi informasi rekening penerima dari _[endpoint inquiry ](https://api-docs.oyindonesia.com/#bank-account-inquiry)_kami.

Selanjutnya, kirim _request body_ untuk melaksanakan pengirimkan uang yang akan dikirim ke  _[endpoint kami](https://api-docs.oyindonesia.com/#disbursement)_.

Selain itu, terdapat juga _endpoint_ untuk [memeriksa transaksi](https://api-docs.oyindonesia.com/#get-disbursement-status) yang dapat diakses kapan saja.

_Callback_ dengan informasi berikut akan dikirim ke _endpoint_ _callback_ yang dapat Anda daftarkan.

Anda juga dapat [memeriksa saldo](https://api-docs.oyindonesia.com/#get-balance) Anda kapan saja untuk memastikan Anda memiliki saldo yang cukup melalui _endpoint_ kami. 

Semua transaksi dapat dipantau melalui dashboard OY! yang mencakup semua detail transaksi.


![API Disbursement](images/api_disburse_error_reason.png)

![API Disbursement](images/api_disburse_success.png)


Untuk detail lebih lanjut tentang definisi parameter dan penggunaannya, silakan pelajari di [Dokumentasi API kami](https://api-docs.oyindonesia.com/#fund-disbursement). 


## Multitransfer

Multitransfer adalah produk yang memungkinkan Anda untuk mengirimkan uang ke berbagai bank dan e-Wallet untuk banyak penerima hingga 25.000 transaksi. Pengiriman uang dapat dilakukan via dashboard OY!, di mana Anda juga dapat melihat detail transaksi yang Anda buat. Anda tidak memerlukan integrasi API untuk menggunakan produk Multitransfer.


### Fitur Utama



1. **Overbooking**

    OY! memungkinkan Anda untuk menggunakan dana langsung dari rekening Mandiri atau CIMB untuk kebutuhan pengiriman uang. Anda cukup melakukan top up saldo sebesar biaya admin, bukan sejumlah yang ingin dikirimkan. Untuk informasi lebih lanjut mengenai fitur ini, silakan hubungi [tim kami](https://docs.oyindonesia.com/partner@oyindonesia.com).

2. **Manajemen pengguna**

    Anda dapat membuat sub-akun untuk anggota tim Anda dengan peran yang berbeda-beda, seperti Admin, Maker, dan Approver. Anda juga dapat mengubah profil pengguna dan menghapus sub-akun yang telah dibuat.


    _Catatan: Anda tidak perlu membuat sub-akun baru untuk menggunakan Multitransfer. Anda sebagai akun utama dapat secara langsung membuat dan menyetujui Multitransfer._

3. **Aprroval _Multi-Layer_**

    Approval _Multi-Layer _akan meningkatkan kontrol Anda atas transaksi Multitransfer, terutama untuk jumlah uang yang besar. Anda dapat mengatur hingga 3 lapisan approver sebelum transaksi akan dilakukan. Dengan menetapkan approver yang tepat, Anda dapat menghindari kesalahan dalam operasional bisnis Anda akibat kesalahan jumlah transfer yang salah. 

4. **Ringkasan keseluruhan transaksi**

    Lihat semua detail dari keseluruhan transaksi, seperti total nominal yang dikirim, total jumlah transaksi, dan informasi terkait maker dan approver dari sebuah transaksi.

5. **Detail Transaksi**

    Lihat detail terperinci dari setiap transaksi, termasuk status masing-masing transaksi: berhasil, tertunda, atau gagal.



### Cara Mengaktifkan Produk Multitransfer



1. Buat akun OY! Indonesia
2. Selesaikan proses verifikasi bisnis (KYB)
3. Tunggu hingga akun Anda terverifikasi oleh tim kami 


### Pengujian 



1. Masuk ke akun OY! Anda
2. Masuk ke mode “Demo”
3. Pilih “Multitransfer” di menu “Kirim Uang”
4. Klik tombol “Buat Transaksi Baru” 
5. Isi detail yang diperlukan dengan mengikuti langkah-langkah yang dijelaskan di bagian “Cara Menggunakan Multitransfer” 


### Cara Menggunakan Multitransfer

Sebelum membuat transaksi Multitransfer, pastikan Anda mempunyai saldo OY! yang cukup. Jika saldo tidak mencukupi, transaksi tetap dapat dibuat namun tidak dapat disetujui. Untuk membuat transaksi Multitransfer, silakan ikuti langkah berikut:



1. **Buat transaksi baru:** Pada dashboard OY!, arahkan kursor ke menu Kirim Uang > Multitransfer pada menu bar sebelah kiri. Klik "Buat Transaksi Baru" di sebelah kanan halaman tersebut untuk membuat transaksi baru.
2. **Isi detail transaksi: **Isi detail transaksi Anda dengan 2 pilihan



![Create Bulk - 1  Initial](https://user-images.githubusercontent.com/79620482/128454459-16770aa6-486a-40b8-a73b-f2c4bb1910e3.png)


1. Otomatis: Pilih opsi ini jika Anda ingin mengunggah file .xlsx atau .csv yang berisi rincian transaksi untuk Multitransfer. Klik tombol "Unggah File" untuk memilih file yang akan diunggah. Pastikan file tersebut sesuai dengan format yang ditentukan.

<table>
  <tr>
   <td>
<strong>Kolom</strong>
   </td>
   <td><strong>Deskripsi</strong>
   </td>
   <td><strong>Contoh</strong>
   </td>
  </tr>
  <tr>
   <td>Nama
   </td>
   <td>Nama penerima uang
   </td>
   <td>Budi
   </td>
  </tr>
  <tr>
   <td>Email
   </td>
   <td>Email penerima (dapat berisi hingga 5 email dengan total maks. 255 karakter. Pemberitahuan transaksi masuk akan dikirimkan ke email ini)
   </td>
   <td>Budi@email.com
   </td>
  </tr>
  <tr>
   <td>Jumlah
   </td>
   <td>Jumlah uang yang dikirim dalam rupiah 
   </td>
   <td>100000
   </td>
  </tr>
  <tr>
   <td>Kode Bank
   </td>
   <td><a href="https://docs.oyindonesia.com/#disbursement-bank-codes">Bank yang dituju</a>
   </td>
   <td>014
   </td>
  </tr>
  <tr>
   <td>Nomor Rekening
   </td>
   <td>Nomor rekening penerima uang
   </td>
   <td>12341234
   </td>
  </tr>
  <tr>
   <td>No. HP
   </td>
   <td>No. HP penerima uang
   </td>
   <td>+628123456789
   </td>
  </tr>
  <tr>
   <td>Catatan (opsional)
   </td>
   <td>Catatan transaksi
   </td>
   <td>Reimburse 100rb
   </td>
  </tr>
</table>




2. Manual: Pilih opsi ini jika Anda ingin memasukkan detail transaksi secara manual. Isilah informasi yang diminta, seperti nama penerima, nomor rekening, jumlah yang akan dikirim, dan lainnya. Anda dapat menambahkan lebih banyak entri dengan mengklik tombol "Tambah Baris Baru".
3. [Hanya untuk mode demo] Anda dapat mereplikasi status gagal pada transaksi dengan mengisi Nomor Rekening Bank dengan 3000000.
3. **Periksa ulang semua informasi: **Setelah file .xlsx atau .csv Anda diunggah atau diisi secara manual, Anda dapat memeriksa kembali semua informasi yang diunggah dari file tersebut dari tabel yang ditampilkan. Jika terdapat pengisian yang tidak benar, seperti kolom yang tidak valid karena karakter khusus, tanda merah akan muncul untuk menyoroti kolom yang harus diperbaiki. 



![Create Bulk - 2  File Uploaded](https://user-images.githubusercontent.com/79620482/128454606-2838f6ca-aad1-446a-becb-75d780460708.png)




4. **Validasi Nama Penerima:** Setelah semua informasi telah benar, pengguna dapat mengklik "Validasi" dan akan muncul pop-up untuk mencocokkan setiap nama penerima dengan "Nama Rekening Bank" mereka seperti yang ditunjukkan di bawah ini:


![Create Bulk - 3  Ask Name Validation](https://user-images.githubusercontent.com/79620482/128454745-c5a42979-30ba-44c2-a405-bbe9b0325677.png)


Jika Anda memilih “Ya, Cocokkan”: Jika terdapat perbedaan nama, akan muncul pop-up nama dengan detail transaksi yang tidak sesuai. Anda dapat merevisi informasi tersebut dan memilih tombol 'Validasi' untuk memvalidasi ulang data, atau Anda dapat mengklik tombol 'Tidak Perlu' untuk mengabaikan validasi kesesuaian nama dan melanjutkan proses pengiriman uang.


![Create Bulk - 5e  Mismatch Names](https://user-images.githubusercontent.com/79620482/128454900-3a007579-2701-4305-9f9d-15cc8a09ab2f.png)


Jika tidak ada masalah dengan detail transaksi, tombol “Kirim" akan tersedia di bagian bawah daftar transaksi, menunjukkan bahwa semua informasi valid. Klik "Kirim" untuk menyelesaikan pembuatan transaksi Multitransfer.



![Create Bulk - 6a  All data inquired without Name Matching](https://user-images.githubusercontent.com/79620482/128454982-b1ab6dfc-c279-4baf-a0e6-a2983a069488.png)


5. **Menyetujui/Membatalkan Transaksi: **Setelah transaksi Multitransfer dibuat, status "menunggu persetujuan" akan muncul. Setujui kampanye dengan mengklik tombol "Setujui". Jika Anda ingin membatalkan kampanye, klik tombol "..." dan pilih "Batalkan".


![Bulk Disburse](../images/bulk_disburse_4.png)

Setelah transaksi Multitransfer disetujui, detail transaksi tidak dapat diubah lagi, termasuk perubahan yang dilakukan pada informasi penerima masing-masing transaksi.

Saldo tersedia Anda juga akan berubah. Untuk informasi lebih lanjut tentang jenis-jenis saldo, klik di sini. Anda juga akan menerima email dengan ringkasan informasi transaksi saat transaksi dikirimkan.

*Catatan:* 
- *Tergantung pada level persetujuan yang Anda atur, transaksi ini harus disetujui oleh semua level sebelum dapat dikirim oleh sistem._*

![Bulk Disburse](../images/multi-layer-approval.png)


- *Beberapa transaksi dapat disetujui sekaligus, selama ada saldo yang cukup untuk menyelesaikan transaksi yang telah disetujui namun masih dalam antrian untuk diproses.*



6. **Melihat detail transaksi: **Untuk memeriksa detail transaksi Multitransfer, klik ID transaksi untuk melihat ringkasan transaksi dan daftar penerimanya. Lacak status keseluruhan transaksi dan status transaksi individual melalui halaman tersebut.

![Bulk Disburse](../images/bulk_disburse_5.png)

7. Selamat! Anda baru saja mengirim transaksi Multitransfer pertama Anda dengan OY!. Berikut ini adalah daftar status yang akan Anda temui di dashboard OY!. 
* MASIH DIPROSES: Saat Anda mengirimkan transaksi Multitransfer, status transaksi Anda akan menunjukkan status MASIH DIPROSES. 

![Bulk Disburse](../images/bulk_disburse_error_reason.png)

![Notif Pending - 1  Initial](../images/bulk_disburse_list_incomplete.png)


* SELESAI: Setelah semua transaksi telah selesai dengan status akhir SUKSES untuk semua transaksi, status transaksi Multitransfer Anda akan berubah menjadi SELESAI. Penerima akan menerima email yang menjelaskan "Pemberitahuan Transfer Masuk". Anda juga dapat mengunduh laporan rincian transaksi secara langsung melalui dashboard OY!.

![Bulk Disburse](../images/bulk_disburse_finish.png)

* GAGAL: Jika Anda memilih untuk tidak menyetujui transaksi Multitransfer Anda, maka status transaksi Anda akan menunjukkan status GAGAL


![Bulk Disburse](../images/bulk_disburse_cancel.png)


Anda juga dapat memeriksa ulang setiap transaksi dengan mengakses halaman Laporan Transaksi Rekening di dashboard OY!.


## Pengembalian Dana


### Alur Transaksi


### Use Case


### Cara Mengaktifkan Produk Pengembalian Dana


### Pengujian


### Cara Menggunakan Pengembalian Dana


## API Pembayaran Tagihan

Dengan produk API Pembayaran Tagihan, Anda dapat membuka jasa pembayaran tagihan online yang lengkap, dengan lebih dari 130 jenis produk tagihan hanya dengan satu integrasi yang mudah dan cepat. Anda bisa melihat cara mengintegrasikan API Pembayaran Tagihan [di sini](https://api-docs.oyindonesia.com/#biller-api). 


### Alur Transaksi

![Transacation Flow](../images/claim-fund-flow.png)

### Fitur Utama



1. **Overbooking**

    OY! memungkinkan Anda untuk menggunakan dana langsung dari rekening Mandiri atau CIMB untuk kebutuhan pengiriman uang. Anda cukup melakukan top up saldo sebesar biaya admin, bukan sejumlah yang ingin dikirimkan. Untuk informasi lebih lanjut mengenai fitur ini, silakan hubungi [tim kami](partner@oyindonesia.com).

2. **Cek status transaksi dan _callback_**

    Anda akan mendapat pemberitahuan setiap tagihan dibayarkan, baik ketika transaksi tersebut berhasil, gagal, atau tertunda. Kami juga menyediakan API untuk mengecek status transaksi secara manual. Selain itu, kami juga menyediakan IP proxy untuk meningkatkan keamanan dan integritas _callback_ yang akan Anda terima.

3. **Cek saldo tersedia**

    Anda dapat memeriksa saldo yang tersedia kapan saja untuk memastikan bahwa saldo Anda cukup untuk melakukan pengiriman uang.



### Cara Mengaktifkan Produk API Pembayaran Tagihan



1. Buat akun OY! Indonesia
2. Selesaikan proses verifikasi bisnis (KYB)
3. Tunggu hingga akun Anda terverifikasi oleh tim kami
4. Sediakan IP yang akan di-_whitelist _dan link _callback _ke tim kami
5. Dapatkan _Key _API dari kami
6. Integrasikan dengan [API kami](https://api-docs.oyindonesia.com/#biller-api)  


### Pengujian

Setelah berhasil membuat akun OY!, Anda dapat segera melakukan pengujian melalui API. Ikuti langkah-langkah berikut untuk menguji alur API Pembayaran Tagihan: 



1. Masuk ke akun OY! Anda
2. Masuk ke mode “Demo”
3. Setelah Anda masuk ke mode Demo, akan ada key API staging yang tersedia di sudut kiri bawah halaman.
4. Sebelum melakukan transaksi pembayaran tagihan, periksa saldo yang tersedia melalui API GET[ https://api-stg.oyindonesia.com/api/balance](https://api-stg.oyindonesia.com/api/balance) 
5. Buat transaksi pembayaran tagihan dengan mengirimkan permintaan ‘POST’ ke[ https://api-stg.oyindonesia.com/api/v2/bill](https://api-stg.oyindonesia.com/api/remit%20(https://api-stg.oyindonesia.com/api/remit)) menggunakan _Key _API Anda. Isi kolom yang diperlukan, seperti yang tercantum di[ dokumentasi API OY!](https://api-docs.oyindonesia.com/#bill-inquiry-biller-api).  
6. Isi ID pelanggan, Nama Produk, serta ID Transaksi Partner. Anda akan mendapatkan informasi detail tentang tagihan yang ingin Anda bayar.
7. Setelah berhasil melakukan pengecekan tagihan, Anda harus melanjutkan proses pembayaran dengan mengirim permintaan 'POST' ke [https://api-stg.oyindonesia.com/api/v2/bill/payment](https://api-stg.oyindonesia.com/api/v2/bill/payment). Isi kolom yang diperlukan dan opsional sesuai dengan yang tercantum di [dokumentasi API OY!](https://api-docs.oyindonesia.com/#pay-bill-biller-api)).
8. Untuk mendapatkan status permintaan pembayaran tagihan, Anda dapat memanggil API [https://api-stg.oyindonesia.com/api/v2/bill/status](https://api-stg.oyindonesia.com/api/v2/bill/status). 
9. Jika pengiriman berhasil atau gagal, kami akan mengirimkan _callback_ ke URL _callback_ yang terdaftar pada mode demo. URL _callback_ dapat didaftarkan melalui tim kami.
10. Transaksi API Kirim Uang dapat Anda pantau melalui Dashboard di menu Kirim Uang - API Pembayaran Tagihan.


### Cara Menggunakan API Pembayaran Tagihan

Untuk mengirimkan uang, pastikan Anda mempunyai saldo OY! yang cukup di akun Anda. Anda bisa baca cara melakukan top up [di sini](https://docs.oyindonesia.com/#top-up-oy-dashboard-tutorial). 

Sebelum Anda mengirimkan uang, Anda dapat memvalidasi informasi tagihan dari _[endpoint inquiry ](https://api-docs.oyindonesia.com/#bill-inquiry-biller-api)_kami.

Selanjutnya, kirim _request body_ untuk membayar tagihan yang akan dikirim ke  _[endpoint kami](https://api-docs.oyindonesia.com/#pay-bill-biller-api)_.

Selain itu, terdapat juga _endpoint_ untuk [memeriksa transaksi](https://api-docs.oyindonesia.com/#get-bill-payment-status-biller-api) yang dapat diakses kapan saja.

_Callback_ dengan informasi berikut akan dikirim ke _endpoint_ _callback_ yang dapat Anda daftarkan.

Anda juga dapat [memeriksa saldo](https://api-docs.oyindonesia.com/#get-balance) Anda kapan saja untuk memastikan Anda memiliki saldo yang cukup melalui _endpoint_ kami. 

Semua transaksi dapat dipantau melalui dashboard OY! yang mencakup semua detail transaksi.



<p id="gdcalert15" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image15.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert16">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image15.png "image_tooltip")


Untuk detail lebih lanjut tentang definisi parameter dan penggunaannya, silakan pelajari di [Dokumentasi API kami](https://api-docs.oyindonesia.com/#biller-api). 


## Kirim Ulang Callback


### Fitur Utama

Kirim Ulang _Callbac_k memungkinkan Anda untuk mengirim ulang _callbac_k transaksi ke sistem Anda. Awalnya, OY! akan mengirimkan _callback_ ke sistem Anda setelah status transaksi Anda diperbarui. Jika sistem Anda gagal menerima _callback_, fitur ini dapat membantu Anda dalam mengulangi proses _callback_. Proses ini dapat dilakukan dengan dua cara:



1. **Kirim ulang _callback_ otomatis**: Jika _callback_ tidak berhasil diterima pada percobaan pertama, sistem akan secara otomatis mengulangi pengiriman _callbac_k. Jika _callback _tersebut masih belum diterima oleh sistem klien, sistem akan secara otomatis mengulangi hingga 5 kali dengan interval proses pengiriman yang akan dijelaskan di bagian Interval _Callback_. Jika semua Kirim Ulang Callback otomatis sudah terkirim tetapi tetap gagal, sistem akan mengirimkan notifikasi melalui email ke alamat email Anda.
2. **Kirim ulang _callbac_k manual:** Anda juga dapat meminta _callback_ secara manual melalui dashboard.


### Cara Mengaktifkan Fitur Kirim Ulang Callback

Ikuti langkah-langkah berikut untuk mengaktifkan fitur Kirim Ulang Callback: 



1. Masuk ke akun OY! Anda dan pergi ke dashboard
2. Buka “Pengaturan”, pilih menu “Opsi Developer”, kemudian pilih “Konfigurasi Callback”
3. isi kolom URL _callback_ di produk terkait yang ingin Anda aktifkan dan pastikan formatnya benar. Anda dapat mengklik tombol “Validasi String URL” untuk memvalidasi format URL
4. Jika Anda ingin mengaktifkan kirim ulang _callback_ otomatis, centang kotak Aktifkan “Retry Callback Otomatis” dan isi kolom email. Email tersebut akan digunakan untuk menerima pemberitahuan jika semua upaya _callback_ otomatis telah dilakukan tetapi masih gagal
5. Klik "Simpan Perubahan". Konfigurasi tidak dapat disimpan jika format URL _callbck_ dan/atau email tidak valid



<p id="gdcalert16" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image16.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert17">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image16.png "image_tooltip")


Jangan lupa untuk memasukkan IP ini ke dalam _whitelist_ agar dapat menerima _callback _dari OY: 54.151.191.85 dan 54.179.86.72.

Jika Anda ingin mengirim ulang _callback_ secara manual, ikuti petunjuk di bawah ini:



1. Masuk ke akun OY! Anda dan pergi ke dashboard
2. Buka menu API Kirim Uang
3. Klik tombol "Kirim Ulang Callback" pada transaksi terkait



<p id="gdcalert17" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image17.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert18">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image17.png "image_tooltip")



### Interval Callback

Percobaan pertama: _real-time _(setelah log kegagalan pertama diterima)

Percobaan kedua: 1 menit (setelah log gagal _callback_ untuk percobaan pertama diterima)

Percobaan ketiga: 2 menit (setelah log gagal _callback_ untuk percobaan kedua diterima)

Percobaan keempat: 13 menit (setelah log gagal _callback_ untuk percobaan ketiga diterima)

Percobaan kelima: 47 menit (setelah log gagal _callback_ untuk percobaan keempat diterima)

Jika semua percobaan Kirim Ulang Callback Otomatis (semua 5 percobaan) sudah dikirimkan tetapi kami masih menerima respons gagal dari sisi Anda, sistem kami akan mengirimkan pemberitahuan otomatis melalui email ke alamat yang terdapat di konfigurasi Anda.


### Idempotency Key

Untuk mengimplementasikan kirim ulang _callback_ otomatis, Anda perlu menerapkan _idempotency logic_ di sistem Anda menggunakan _key_ berikut:

API Disburse: trx_id


## Invoice Pembelian

Invoice Pembelian adalah produk yang memungkinkan Anda untuk 


### Cara Menggunakan Invoice Pembelian via Dashboard

Anda dapat membuat invoice baru dan mengatur pembayaran dengan mengikuti langkah berikut:



1. Masuk ke dashboard OY! Anda.
2. Pilih mode “Production”
3. Klik "Daftar Invoice" di menu Invoice Pembelian
4. Pilih "Buat Invoice Baru"
5. Anda dapat menggunakan fitur “Isi Otomatis” untuk mengisi data invoice Anda dengan cara menggunggah file invoice Anda
6. Anda juga dapat mengisi informasi invoice secara manual

<table>
  <tr>
   <td>
<strong>Detail</strong>
   </td>
   <td><strong>Deskripsi</strong>
   </td>
  </tr>
  <tr>
   <td>Tipe Pembelian
   </td>
   <td>Anda dapat memilih di antara pesanan pembelian, biaya jasa, tagihan, biaya langganan, atau penggantian dana.
   </td>
  </tr>
  <tr>
   <td>No. Invoice
   </td>
   <td>Nomor invoice yang Anda dapatkan dari vendot atau supplier Anda.
   </td>
  </tr>
  <tr>
   <td>Tanggal Invoice
   </td>
   <td>Tanggal penerbitan invoice
   </td>
  </tr>
  <tr>
   <td>Tanggal Jatuh Tempo
   </td>
   <td>Tanggal jatuh tempo pembayaran invoice. Approver Anda akan dapat notifikasi pengingat setiap H-7, H-3, dan H-1 dari tanggal jatuh tempo.
   </td>
  </tr>
  <tr>
   <td>No. PO/PR (opsional)
   </td>
   <td>Nomor PO (<em>Purchase order</em>) / PR (<em>Purchase requisition</em>) dari perusahaan Anda untuk melacak transaksi ini.
   </td>
  </tr>
  <tr>
   <td>Catatan
   </td>
   <td>Tambahan catatan untuk invoice yang dibuat.
   </td>
  </tr>
  <tr>
   <td>Vendor
   </td>
   <td>Nama vendor yang akan menerima permbayaran invoice. Anda dapat memilih vendor dari yang sudah terdaftar. Untuk menambah daftar vendor baru, silakan baca di sini.
   </td>
  </tr>
  <tr>
   <td>Deskripsi Produk
   </td>
   <td>Nama dan deskripsi produk Anda.
   </td>
  </tr>
  <tr>
   <td>Kuantitas
   </td>
   <td>Jumlah produk.
   </td>
  </tr>
  <tr>
   <td>Harga
   </td>
   <td>Harga produk Anda per piece.
   </td>
  </tr>
  <tr>
   <td>Total
   </td>
   <td>Total harga produk (harga x kuantitas).
   </td>
  </tr>
  <tr>
   <td>Subtotal
   </td>
   <td>Total harga seluruh produk sebelum ditambah pajak.
   </td>
  </tr>
  <tr>
   <td>PPn
   </td>
   <td>PPn yang harus dibayarkan kepada vendor, dihitung dari jumlah subtotal. Anda dapat mengatur pajak tersebut saat menambahkan vendor atau mengeditnya di menu 'Manajemen Vendor' di menu Invoice Pembelian.
   </td>
  </tr>
  <tr>
   <td>PPh
   </td>
   <td>PPh yang harus dibayarkan kepada vendor, dihitung dari jumlah subtotal. Anda dapat mengatur pajak tersebut saat menambahkan vendor atau mengeditnya di menu 'Manajemen Vendor' di menu Invoice Pembelian.
   </td>
  </tr>
  <tr>
   <td>Total Bayar ke Vendor
   </td>
   <td>Total nominal yang harus dibayarkan ke vendor sebelum tanggal jatuh tempo.
   </td>
  </tr>
  <tr>
   <td>Dokumen Referensi
   </td>
   <td>Dokumen pendukung yang ingin Anda cantumkan terkait invoice ini. Kami hanya menerima format PDF dan Maksimal 7 dokumen (masing-masing maksimal 2.5MB).
   </td>
  </tr>
</table>


Catatan: Maksimal 20 jumlah produk per invoice


<p id="gdcalert18" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image18.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert19">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image18.png "image_tooltip")




7. Lanjutkan untuk mengatur 'Detail pembayaran Invoice'. Pilih metode pembayaran invoice Anda, tersedia metode pembayaran dengan ‘Saldo OY!” dan “Kartu Kredit”. Anda dapat membayar dengan sekali pembayaran dengan memilih “Bayar Lunas”, atau membayar dengan cara mencicil.

<table>
  <tr>
   <td>
<strong>Detail</strong>
   </td>
   <td><strong>Deskripsi</strong>
   </td>
  </tr>
  <tr>
   <td>Nominal Pembayaran 
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Tanggal Jatuh Tempo
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Status
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Pembayaran Terjadwal
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Sisa Nominal Cicilan
   </td>
   <td>
   </td>
  </tr>
</table>



 

<p id="gdcalert19" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image19.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert20">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image19.png "image_tooltip")




<p id="gdcalert20" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image20.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert21">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image20.png "image_tooltip")




<p id="gdcalert21" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image21.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert22">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image21.png "image_tooltip")




8. Terdapat beberapa status untuk invoice pembelian Anda, yaitu Belum Dibayar, Belum Dikonfirmasi, Dibatalkan, Dibayar, Diisi Otomatis, Ditolak, Dibayar Sebagian, dan Tidak Selesai.

<table>
  <tr>
   <td>
<strong>Detail</strong>
   </td>
   <td><strong>Deskripsi</strong>
   </td>
  </tr>
  <tr>
   <td>Belum Dibayar 
   </td>
   <td>Invoice sedang menunggu pembayaran Anda.
   </td>
  </tr>
  <tr>
   <td>Belum Dikonfirmasi
   </td>
   <td>Invoice sudah terisiotomatis dan membutuhkan konfirmasi Anda.
   </td>
  </tr>
  <tr>
   <td>Dibatalkan
   </td>
   <td>Invoice Anda telah dibatalkan atau kedaluwarsa.
   </td>
  </tr>
  <tr>
   <td>Dibayar
   </td>
   <td>Semua transaksi di invoice telah selesai dibayar.
   </td>
  </tr>
  <tr>
   <td>Diisi Otomatis
   </td>
   <td>Invoice Anda sedang diisi secara otomatis oleh sistem OY!
   </td>
  </tr>
  <tr>
   <td>Ditolak
   </td>
   <td>Invoice Anda telah ditolak oleh approver.
   </td>
  </tr>
  <tr>
   <td>Dibayar Sebagian
   </td>
   <td>Transaksi di dalam invoice belum sepenuhnya dibayarkan.
   </td>
  </tr>
  <tr>
   <td>Tidak Selesai
   </td>
   <td>Terdapat transaksi di invoice Anda yang dibatalkan atau gagal.
   </td>
  </tr>
</table>




<p id="gdcalert22" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image22.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert23">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image22.png "image_tooltip")



### Cara Menambah, Mengubah, dan Menonaktifkan Data Vendor


#### Tambah Vendor untuk Invoice Pembelian



1. Pilih “Tambah” saat Anda mengisi kolom Vendor untuk pembuatan invoice baru
2. Isi informasi yang dibutuhkan
3. Klik “Tambah Vendor” setelah Anda mengisi semua informasi

<table>
  <tr>
   <td>
<strong>Detail</strong>
   </td>
   <td><strong>Deskripsi</strong>
   </td>
  </tr>
  <tr>
   <td>ID Vendor 
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Nama Vendor
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Alamat Vendor
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Nama Bank
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Nama Akun
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Nama PIC (penanggung jawab)
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Email PIC
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>WhatsApp PIC (opsional)
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>PPh (opsional)
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>NPWP Vendor (opsional)
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Dokumen NPWP (opsional)
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>PPn (opsional)
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Dokumen SKB (opsional)
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Tidak kena PPh
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Tidak kena PPn
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Termasuk PPn
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Di luar PPn
   </td>
   <td>
   </td>
  </tr>
</table>


**Setiap vendor hanya memiliki 1 jenis pengaturan PPh dan 1 jenis pengaturan PPn.**

Setiap bulan pada tanggal 1 akan dikirim email yang berisi PPh dari vendor Anda pada bulan sebelumnya. Laporan ini dapat membantu perusahaan dalam pembayaran dan pelaporan pajak, serta pembuatan 'Faktur Pajak' untuk vendor Anda.

**Buat vendor baru**



<p id="gdcalert23" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image23.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert24">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image23.png "image_tooltip")


**Daftar vendor**

**​​**

<p id="gdcalert24" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image24.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert25">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image24.png "image_tooltip")


**Detail vendor**



<p id="gdcalert25" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image25.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert26">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image25.png "image_tooltip")



### Cara Mengatur Approval Invoice

Anda dapat mengatur multi level approval dari invoice Anda. Terdapat 4 jenis peran dari tiap akun: Super Admin, Admin, Approver, dan Maker.


#### Membuat Level Approval

Anda dapat membuat level approval pada menu 'Manajemen Pengguna' di bawah menu 'Akun'. Ketika Anda pertama kali membuat akun, akun Anda akan otomatis menjadi Super Admin. Sebagai Super Admin, Anda memiliki kemampuan untuk membuat sub-akun baru dan menetapkan peran yang berbeda kepada tim Anda seperti Admin, Maker, dan Approver. Super Admin dan Admin juga dapat mengedit atau menghapus sub-akun yang telah dibuat. 

Catatan: tidak perlu membuat sub-akun baru untuk menggunakan Invoice Pembelian. Peran Super Admin dan Admin memungkinkan Anda untuk langsung membuat dan menyetujui invoice pembelian serta multitransfer. 


#### Mengatur Level Approval

Multi level approval akan meningkatkan kendali Anda terhadap transaksi multitransfer Anda, terutama untuk jumlah uang yang besar. Anda dapat mengatur hingga 3 level approver sebelum transaksi dikirimkan. Dengan menetapkan approver yang tepat dan batasan nominal transaksi, Anda dapat menghindari kesalahan dalam operasional bisnis Anda akibat transfer nominal yang salah.

Approval default: Super Admin, Admin, dan Approver.


## Kartu Virtual

Kartu Virtual OY! merupakan kartu yang dapat digunakan oleh bisnis Anda untuk melakukan pembelian atau _subscription _dengan mudah dan efisien. Kartu virtual OY! dapat dibuat melalui dashboard tanpa harus melakukan integrasi API.


### Fitur Utama



1. **Pembuatan Kartu**

    Gunakan saldo OY! Anda untuk kebutuhan kartu virtual. Anda dapat mengisi saldo OY! Anda sesuai dengan limit kartu Anda. Silakan hubungi perwakilan bisnis kami (https://docs.oyindonesia.com/partner@oyindonesia.com) untuk informasi lebih lanjut tentang fitur ini.

2. **Kelola Kartu**

    Buat dan kelola kartu sesuai dengan kebutuhan Anda. Anda dapat mengatur nominal, periode aktif, dan limit transaksi langsung melalui dashboard. Selain itu, Anda dapat memblokir dan menonaktifkan kartu virtual secara _real-time_.

3. **Transaksi secara _real-time_**

    Transaksi Anda dapat dilacak dengan mudah melalui dashboard secara _real-time_. Tidak perlu menunggu hingga akhir bulan untuk mendapatkan laporan transaksi.



### Cara Menggunakan Kartu Virtual via Dashboard

Anda dapat membuat kartu virtual baru dengan mengikuti langkah berikut:



1. Masuk ke dashboard OY! Anda.
2. Pilih mode “Production”
3. Pilih “Kartu Virtual” di menu “Kirim Uang”
4. Klik “Tambah Kartu Baru”
5. Pilih "Tipe Kartu" antara penggunaan sekali pakai atau penggunaan berulang, lalu klik "Selanjutnya"
6. Isi rincian pemegang kartu dan deskripsi kartu
7. Setelah dikirimkan, Kartu Virtual akan berada dalam status "menunggu persetujuan"
8. Setelah tahap persetujuan, kartu siap digunakan untuk transaksi
9. Setelah kartu digunakan untuk transaksi, akan muncul di halaman "Kartu Virtual" dan dikirim melalui email kepada pemegang kartu

    **Catatan: **Saldo OY! Anda akan ditahan setelah kartu dibuat sesuai limit kartu.


Dashboard Kartu Virtual



<p id="gdcalert26" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image26.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert27">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image26.png "image_tooltip")


Tipe kartu



<p id="gdcalert27" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image27.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert28">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image27.png "image_tooltip")


Formulir deskripsi kartu



<p id="gdcalert28" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image28.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert29">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image28.png "image_tooltip")




<p id="gdcalert29" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image29.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert30">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image29.png "image_tooltip")


Informasi kartu virtual



<p id="gdcalert30" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image30.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert31">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image30.png "image_tooltip")




<p id="gdcalert31" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image31.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert32">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image31.png "image_tooltip")




<p id="gdcalert32" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image32.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert33">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image32.png "image_tooltip")



#### Status Kartu


<table>
  <tr>
   <td><strong>Status</strong>
   </td>
   <td><strong>Deskripsi</strong>
   </td>
  </tr>
  <tr>
   <td>Menunggu Persetujuan
   </td>
   <td>Kartu telah diminta tetapi persetujuan belum diberikan. Permintaan hanya berlaku selama 14 hari.
   </td>
  </tr>
  <tr>
   <td>Aktif
   </td>
   <td>Kartu siap digunakan untuk transaksi.
   </td>
  </tr>
  <tr>
   <td>Aktif dengan Peringatan
   </td>
   <td>Kartu aktif dengan saldo, tetapi hanya tersisa &lt;15% saldo.
   </td>
  </tr>
  <tr>
   <td>Tidak Aktif
   </td>
   <td>Kartu telah dinonaktifkan, tetapi masih memiliki limit.
   </td>
  </tr>
  <tr>
   <td>Butuh Isi Saldo
   </td>
   <td>Kartu telah dibuat, tetapi dengan limit Rp0 atau limit kartu kembali menjadi Rp0 dan melewati waktu perpanjangan karena saldo yang tidak mencukupi.
   </td>
  </tr>
  <tr>
   <td>Kedaluwarsa
   </td>
   <td>Kartu sudah kedaluwarsa atau diarsipkan secara permanen.
   </td>
  </tr>
  <tr>
   <td>Ditolak
   </td>
   <td>Kartu ditolak oleh approver.
   </td>
  </tr>
</table>



#### Status Transaksi


<table>
  <tr>
   <td><strong>Status Transaksi</strong>
   </td>
   <td><strong>Deskripsi</strong>
   </td>
  </tr>
  <tr>
   <td>Sukses
   </td>
   <td>Transaksi berhasil dilakukan menggunakan kartu.
   </td>
  </tr>
  <tr>
   <td>Gagal
   </td>
   <td>Transaksi ditolak.
   </td>
  </tr>
</table>



### Cara Mengatur Approver



1. Saat aktivasi produk untuk pertama kali, akan ada tampilan untuk mengisi data approver.
2. Isi kolom rincian approver.
3. Centang Syarat dan Ketentuan dan konfirmasikan rincian approver Anda.
4. Approver akan menerima email konfirmasi.

Tambah approver baru



<p id="gdcalert33" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image33.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert34">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image33.png "image_tooltip")


Kolom rincian approver



<p id="gdcalert34" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image34.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert35">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image34.png "image_tooltip")


**Catatan:** Data approver tidak dapat ditambahkan atau diedit melalui dashboard untuk alasan keamanan. Silakan hubungi perwakilan bisnis kami untuk bantuan.


<table>
  <tr>
   <td><strong>Kolom</strong>
   </td>
   <td><strong>Deskripsi</strong>
   </td>
  </tr>
  <tr>
   <td>Nama
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Posisi/Jabatan
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Email
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>No. HP
   </td>
   <td>
   </td>
  </tr>
</table>



### Cara Mengelola Kartu



1. Klik “Lihat Semua Kartu”
2. Klik kartu yang akan dikelola



<p id="gdcalert35" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image35.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert36">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image35.png "image_tooltip")



<table>
  <tr>
   <td><strong>Aksi</strong>
   </td>
   <td><strong>Deskripsi</strong>
   </td>
  </tr>
  <tr>
   <td>Kirim Info Kartu
   </td>
   <td>a
   </td>
  </tr>
  <tr>
   <td>Edit Informasi
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>Blokir 
   </td>
   <td>Untuk sementara mengunci kartu, limit tetap ada di kartu tersebut.
   </td>
  </tr>
  <tr>
   <td>Arsipkan
   </td>
   <td>Untuk mengunci kartu secara permanen, limit kartu akan menjadi 0.
   </td>
  </tr>
  <tr>
   <td>Ubah Limit
   </td>
   <td>Untuk memperbarui limit dengan jumlah yang telah disetujui approver. Berlaku untuk kartu baru dengan limit 0, atau kartu yang sudah ada dengan limit kurang dari 100%.
   </td>
  </tr>
  <tr>
   <td>Kirim Ulang Request Approval
   </td>
   <td>Untuk mengingatkan approver untuk menyetujui permintaan kartu.
   </td>
  </tr>
  <tr>
   <td>Hapus
   </td>
   <td>Menghapus kartu, dan hanya berlaku untuk kartu dalam status "Menunggu Persetujuan"
   </td>
  </tr>
</table>



### Pengaturan Kartu



1. Klik "Pengaturan Kartu Virtual"
2. Pilih Departemen / Kategori / Approver
3. Anda dapat memilih apakah ingin menambahkan yang baru, mengedit yang ada, atau menghapus
4. Klik simpan perubahan

Edit Departemen



<p id="gdcalert36" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image36.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert37">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image36.png "image_tooltip")



### Cara Bertransaksi dengan Kartu Virtual

Untuk bertransaksi secara online:



1. Akses informasi kartu Anda melalui email dan masukkan OTP (One-Time Password).
2. Setelah berhasil mengakses, masukkan semua informasi kartu Anda pada sisi merchant di opsi "Kartu Kredit/Debit".
3. Masukkan nomor kartu 16 digit, tanggal kedaluwarsa (MM/YY), dan CVV.
4. Setelah itu, konfirmasi informasi tersebut dan lanjutkan dengan transaksi. Jika transaksi berhasil, maka transaksi selesai.

**Alasan-alasan yang mungkin menyebabkan transaksi gagal:**



1. Kartu digunakan lebih dari frekuensi yang diminta (penggunaan berulang vs penggunaan sekali pakai).
2. Melampaui limit yang tersedia pada kartu.
3. Kartu tidak aktif.
4. Kartu telah kedaluwarsa.
5. Nomor kartu tidak valid.
6. Tanggal kedaluwarsa tidak valid.
7. CVV tidak valid.
8. Jaringan penerbit kartu tidak didukung.

**Catatan: **



1. Transaksi akan diselesaikan mengikuti instruksi dari bank.
2. Penggunaan kartu akan langsung mengurangi limit kartu dan menahan saldo OY! Anda.
3. Untuk pengembalian dana, harap hubungi merchant tempat Anda melakukan pembelian. OY! tidak bertanggung jawab untuk melakukan pengembalian dana sebelum menerima dana kembali dari merchant. \
- Durasi pengembalian dana akan tergantung pada merchant dan bank.

    - Setelah pengembalian dana dilakukan, saldo akan dikembalikan ke saldo OY! Anda.

4. Jika ada transaksi penipuan, itu merupakan tanggung jawab pengguna. OY! tidak bertanggung jawab atas transaksi tersebut.


## Transfer Internasional

Produk Transfer Internasional memberikan kemampuan kepada Anda untuk melakukan transfer uang antar negara dari Indonesia secara fleksibel. Anda dapat membuat transaksi melalui dashboard OY! tanpa perlu adanya integrasi API. 


### Fitur Utama



1. **Manajemen Pengguna**

    Ketika Anda pertama kali membuat akun, akun Anda akan otomatis menjadi Super Admin. Sebagai Super Admin, Anda memiliki kemampuan untuk membuat sub-akun baru dan menetapkan peran yang berbeda kepada tim Anda seperti Admin untuk Transfer Internasional. Super Admin dan Admin dapat mengedit atau menghapus sub-akun yang telah dibuat. 


    Catatan: tidak perlu membuat sub-akun baru untuk menggunakan Transfer Internasional. Peran Super Admin dan Admin memungkinkan Anda untuk langsung membuat dan menyetujui transaksi.  \


2. **Aksesbilitas Peran**

    Hanya peran Super Admin dan Admin yang dapat membuat transaksi. Semua peran lainnya hanya diizinkan untuk melihat daftar transaksi, detail transaksi, melakukan filter, unduh data, dan mengedit kolom di dashboard.

3. **Beragam Destinasi Negara**

    Daftar negara yang saat ini tersedia: Singapura.


    Daftar mata uang yang didukung: Dolar Singapura (SGD) dan Dolar Amerika (USD).


    Destinasi negara lain seperti Australia, China, Hong Kong, Malaysia, Korea Selatan, dan Amerika Serikat akan segera tersedia.

4. **Kontak Pengirim/Penerima**

    Jika Anda ingin membuat transaksi transfer internasional atas nama orang lain, Anda dapat membuat kontak pengirim atau penerima individu/bisnis dan memasukkan semua informasi yang diperlukan mengenai pengirim atau penerima. Semua informasi pengirim dan penerima akan disimpan dalam kontak dan dapat digunakan kembali di masa depan.

5. **Dokumen Tambahan**

    Anda dapat mengunggah invoice dan dokumen pendukung lainnya untuk menjelaskan tujuan transfer dan sumber dana.

6. **Detail Transaksi**

    Setelah transaksi berhasil dibuat, semua detail transaksi dan pembaruan dapat Anda lihat dalam dashboard OY!.



### Cara Mengaktifkan Produk Transfer Internasional



1. Buat akun OY! Indonesia
2. Aktivasi akun Anda melalui link konfirmasi yang dikirimkan ke email Anda
3. Selesaikan proses verifikasi bisnis (KYB)
4. Tunggu hingga akun Anda terverifikasi oleh tim kami 


### Pengujian



1. Masuk ke dashboard OY!
2. Masuk ke mode “Demo”
3. Pilih “Transfer Internasional” di menu “Kirim Uang”
4. Klik tombol “Buat Transaksi Baru”
5. Isi detail yang diperlukan dengan mengikuti langkah-langkah yang dijelaskan di bagian “Cara Menggunakan Transfer Internasional”
6. Catatan: Untuk membuat transaksi yang gagal di mode Demo, Anda dapat mengisi rekening penerima dengan 1234567891. Selain nomor rekening itu maka akan menghasilkan transaksi yang berhasil.


### Cara Menggunakan Transfer Internasional

Untuk membuat transaksi transfer internasional, Anda perlu memiliki saldo OY! yang cukup di akun Anda. Jika saldo yang tersedia di akun tidak mencukupi, transaksi tidak dapat dibuat.

Berikut adalah langkah-langkah untuk membuat transaksi baru:



1. Di dashboard OY!, arahkan kursor Anda ke Kirim Uang > Transfer Internasional pada menu bar sebelah kiri.
2. Klik tombol “Buat Transaksi Baru” di sebelah kanan halaman tersebut.



<p id="gdcalert37" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image37.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert38">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image37.png "image_tooltip")




3. Silakan masukkan rincian jumlah transfer Anda dengan dua cara berikut:
1. Isi nominal kirim (dalam Rupiah) yang ingin Anda transfer, lalu pilih mata uang dan negara tujuan. Sistem kami akan secara otomatis mengonversi sesuai dengan kurs valuta asing pada saat itu.

 	atau



2. Isi nominal yang diterima di kolom “Penerima Mendapatkan” (dalam SGD/USD) yang ingin Anda transfer, lalu pilih mata uang dan negara tujuan. Sistem kami akan secara otomatis mengonversi sesuai dengan kurs valuta asing pada saat itu.



<p id="gdcalert38" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image38.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert39">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image38.png "image_tooltip")


**Catatan:** Jika jumlah nominal lebih besar dari saldo yang tersedia, sistem kami akan membatasi Anda untuk melanjutkan. 



<p id="gdcalert39" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image39.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert40">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image39.png "image_tooltip")




4.  Masukkan rincian pengirim:

    Tentukan apakah pengirim atas nama perorangan atau bisnis, Anda akan melihat rincian yang sesuai untuk diisi pada setiap pilihan. Kontak penerima yang telah disimpan sebelumnya akan ditampilkan di bagian bawah halaman ini.


Buat pengirim perorangan baru dengan mengisi formulir ini.



<p id="gdcalert40" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image40.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert41">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image40.png "image_tooltip")


Buat pengirim bisnis baru dengan mengisi formulir ini.



<p id="gdcalert41" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image41.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert42">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image41.png "image_tooltip")




5. Masukkan rincian penerima:

     \
Tentukan apakah penerima atas nama perorangan atau bisnis, Anda akan melihat rincian yang sesuai untuk diisi pada setiap pilihan. Kontak penerima yang telah disimpan sebelumnya akan ditampilkan di bagian bawah halaman ini.


    

<p id="gdcalert42" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image42.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert43">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image42.png "image_tooltip")



    Berikut adalah formulir yang harus Anda isi untuk penerima perorangan.


    Buat penerima perorangan baru dengan mengisi formulir ini.


    

<p id="gdcalert43" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image43.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert44">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image43.png "image_tooltip")



Buat penerima bisnis baru dengan mengisi formulir ini.


    

<p id="gdcalert44" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image44.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert45">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image44.png "image_tooltip")



    5. Tambah data pendukung. Pada langkah ini, kami perlu mencatat sumber dana dan tujuan transfer untuk transaksi tersebut. Anda juga dapat melampirkan dokumen pendukung untuk memenuhi persyaratan transaksi. 


    

<p id="gdcalert45" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image45.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert46">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image45.png "image_tooltip")




6. Ringkasan transaksi Anda akan ditampilkan. Jika semua informasi sudah benar, Anda dapat mengklik tombol "Kirim" di pojok kanan bawah layar. 



<p id="gdcalert46" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image46.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert47">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image46.png "image_tooltip")


Catatan: Kurs Anda akan ditetapkan sejak pengisian rincian pengirim dan akan diperbarui setiap 30 menit. Jika nilai kurs kedaluwarsa, akan muncul sebuah pop-up untuk memperoleh nilai kurs terbaru.



<p id="gdcalert47" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image47.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert48">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image47.png "image_tooltip")


Jika saldo yang tersedia tidak mencukupi untuk nilai kurs baru, Anda akan diminta untuk mengubah jumlah transfer atau melakukan pengisian saldo.



<p id="gdcalert48" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image48.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert49">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image48.png "image_tooltip")




7. Masukkan Kata Sandi: Untuk keamanan bertransaksi, OY! akan meminta Anda untuk memasukkan kata sandi sebelum bertransaksi.



<p id="gdcalert49" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image49.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert50">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image49.png "image_tooltip")


Anda memiliki 5 kesempatan untuk memasukkan kata sandi yang benar. Jika Anda gagal memasukkan kata sandi yang benar sebanyak 5 kali, transaksi akan secara otomatis dibatalkan.



<p id="gdcalert50" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image50.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert51">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image50.png "image_tooltip")




8. Status Transaksi: Diproses, Sukses, dan Gagal
1. Diproses

Setelah transaksi berhasil dibuat, transaksi tersebut akan muncul di dashboard Anda dengan status "Diproses" pada kolom status.



<p id="gdcalert51" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image51.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert52">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image51.png "image_tooltip")




2. Sukses

Setelah transaksi Anda berhasil diproses, kolom status akan diperbarui menjadi "Sukses". Baik pengirim maupun penerima akan menerima email "Transfer Sukses" dengan rincian transaksi. 



<p id="gdcalert52" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image52.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert53">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image52.png "image_tooltip")




3. Gagal

Jika transaksi Anda gagal diproses, kolom status akan diperbarui menjadi "Gagal". Baik pengirim maupun penerima akan menerima email "Transfer Gagal".



<p id="gdcalert53" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image53.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert54">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image53.png "image_tooltip")


Anda dapat memeriksa rincian transaksi dengan mengklik ID transaksi pada daftar transaksi di dashboard Transfer Internasional.



<p id="gdcalert54" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image54.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert55">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image54.png "image_tooltip")




<p id="gdcalert55" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image55.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert56">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image55.png "image_tooltip")

