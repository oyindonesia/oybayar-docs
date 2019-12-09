---
title: Payment Checkout Reference

language_tabs: # must be one of https://git.io/vQNgJ
  - javascript
  - java
  - swift

toc_footers:
  - <a href='https://business.oyindonesia.com/oybayar'>Sign Up for Trial</a>

includes:
  - responsecodes

search: true
---

# Introduction

Our mission is to enable world-class financial services to Indonesia. We help
with accepting money, disbursing money and user verification. We have a wide
variety of clients ranging from e-commerce, fintech and everything in-between.

This webpage serves as the documentation of the services that we offer.

<a href='mailto:business@oyindonesia.com'>Contact us if you have any questions!</a>

# Payment Checkout

Payment Checkout service enables business owners like you to receive payments from customers, either **from your Application** or independently **by sending your Payment URL to your customers**.

With quick and easy integration, your business can start accepting payments on Day 1 after registration.

Payment Checkout supports multiple payment methods, including *Direct Debit*, *Credit Cards*, and *Bank Virtual Accounts*.

## Quick Integration

> To open Payment Checkout webview, use following code from your platform:

```javascript
window.open("https://pay.oyindonesia.com/username", "_blank");
```

```java
Intent intent = new Intent(context, YourWebviewActivity.class);
intent.putExtra("url", "https://pay.oyindonesia.com/username")
startActivity(intent)
```

```swift
let controller = OyWebViewController()
controller.url = "https://pay.oyindonesia.com/username"
let navigationController = UINavigationController(rootViewController: controller)
present(navigationController, animated: true, completion: nil)
```

> Make sure to replace `username` with your account username, given on the email.

### Get Payment URL for your business
![Signup for Trial](images/img_signup.png)

1. Register for a unique payment URL here: [https://business.oyindonesia.com/oybayar](https://www.oyindonesia.com/oybayar)
2. You will receive an email containing a unique payment URL for *trial version* of the checkout page. From here, you can immediately start the integration.

<aside class="warning">
Limitation of Payment Checkout (Trial Version)
</aside>

Payment URL for the *trial version* will have several limitations, including:

* Amount of payment is locked to Rp 10.000
* It contains BIG watermark mentioning unverified account (note: you are not supposed to use this for production)
* You don't get API Callback for payment result. However, you will notice that money will be sent to your bank account in real time

You can upgrade to OY! business partner to remove above limitations, by sending reply to the email that you receive. Our team will response your email quickly.

### How Does It Work?
![Integration flow](images/img_integration.png)

1. **Put the logic of opening webview** on your app button, so that whenever buyer clicks on "Payment" button, it will open Payment Checkout checkout webview
2. You implement your own **Product details page**
3. You implement your **Order System to create transactionId** for buyers to checkout their order
4. Your App/Web **opens Payment Checkout** Checkout page with additional parameters required
5. Buyer pays using any of *Direct Debit*, *Credit Cards*, or *Bank Virtual Accounts*.
6. You **receive money on your receiving account** and OY! will **send Payment status Callback** to your end point (note: Only available for non-trial account)

## Payment Checkout Webview

### Request With Parameters

```javascript
let params = 'open=true';
params += (txid !== null) ? '&txid='+txid : '';
params += (amount !== null) ? '&amount='+amount : '';
params += (description !== null) ? '&description='+encodeURIComponent(description) : '';
params += (show_contact !== null) ? '&show_contact='+show_contact : '';
params += (show_account !== null) ? '&show_account='+show_account : '';
params += (send_notif !== null) ? '&send_notif='+send_notif : '';

window.open("https://pay.oyindonesia.com/username?" + params, "_blank");
```

> Sample curl command:

```shell
curl -X GET http://pay.oyindonesia.com/username -H 'content-type: application/json' -d '{"txid": "partner000001", "amount": 10000, "description": "Mohon dikirim segera", "show_contact": "true", "show_account": "true", "send_notif": "true", "enable_payment_cc": "false", "enable_payment_va": "false"}'
```

Open this URL as webview to open Payment Checkout Checkout page, optionally with additional parameters.

### Open Webview

`GET http://pay.oyindonesia.com/username`

<aside class="success">
Remember — Make sure to replace `username` with your account username, given on the email.
</aside>

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
txid | not set | If set to specific ID, OY! will echo back the transactionID label via the Payment Result Callback (parameter name `txid`)
amount | not set | If set to certain amount, will lock the amount of payment that Buyer can pay. Otherwise, Buyer needs to input the amount
description | not set | If set, description text will be shown the main page of Payment Checkout webview. Otherwise, it will show blank description
show_contact | true | If set to true, Payment Checkout webview will show Contact Form asking details of the Buyer
show_account | true | If set to true, Payment Checkout webview will show your bank account number
send_notif | true | Whether OY! should send payment notification to the Buyer via SMS/Push Notif
enable_payment_cc | false | Whether OY! should enable payment using Credit Card
enable_payment_va | false | Whether OY! should enable payment using Bank Virtual Accounts

### Payment Result Callback

> The above command returns JSON structured similar like this:

```json
{
  "txid": "partner000001",
  "oy_txid": "1234567",
  "nominal": 10000,
  "name": "Joko Widodo",
  "phone_number": "+6281111111",
  "note": "Mohon dikirim segera",
  "result": "success"
}
```

Non-trial Account can register specific end point URL (web hook) to receive callback whenever payment occurs.

<aside class="warning">You need to register an end point URL to receive this callback. Note that Trial Account would not get access to this feature</aside>

### Callback Parameters

The data on the callback will be sent using JSON format via POST data to your web hook.
Check here for example: [example](/?json#payment-result-callback)

Parameter | Type | Description
--------- | ---- | -----------
txid | String | (Optional) TransactionID which partner set on the initial Payment Checkout URL
oy_txid | String | Internal TransactionID from OY! system
nominal | BigDecimal | Amount of payment by the Buyer
name | String | Name of Buyer
phone_number | String | Phone Number of Buyer
note | String | (Optional) This is note from the Buyer
result | String | Payment Status of Buyer. Can be either "success" or "failed"

# Fund Disbursement

Fund disbursement enables business to disburse fund to any bank accounts in Indonesia easily and real-time. Businesses can disburse the fund via [API](https://api-docs.oyindonesia.com/#fund-disbursement) or Excel uploads.

These disbursements are processed instantly and 24/7, including weekends and public holidays. We currently support disbursements to 90+ local banks and their virtual accounts.

## Credit Line

For businesses who are interested in having a credit line, let us know and we will connect you to a lending institution at a competitive rate.

## International Remittance (Coming Soon)

<a href='mailto:business@oyindonesia.com'>Contact us if you are interested!</a>

## Bank Codes

Supported Bank Codes to be used in the Disbursement Request

Bank Code | Bank Name
------------- | -------
002 | Bank BRI
008 | Bank Mandiri
009 | Bank BNI
011 | Bank Danamon
013 | Bank Permata
014 | Bank BCA
016 | BII Maybank
019 | Bank Panin
022 | CIMB Niaga
022 | CIMB Rekening Ponsel
036	| Bank Windu Kentjana International
045	| Bank Nusantara Parahyangan
046 | Bank DBS
050 | Standard Chartered
061	| ANZ Indonesia
076	| Bank Bumi Arta
087	| Bank Ekonomi Raharja
088	| Bank Antardaerah
089	| Bank Rabobank
110 | Bank Jawa Barat
112	| Bank BPD DIY
114 | Bank Jatim
115	| Bank Jambi
116	| Bank Aceh
117	| Bank SUMUT
119	| Bank Riau
120	| BANK SUMSEL BABEL
121	| Bank Lampung
124	| Bank BPD Kaltim
125	| Bank BPD Kalteng
126	| BANK SULSELBAR
127	| Bank Sulut
128	| Bank NTB
129	| Bank BPD Bali
130	| Bank NTT
131	| Bank Maluku
132	| Bank BPD Papua
133	| Bank Bengkulu
134	| BANK SULTENG
135	| Bank Sultra
145	| BNP
146	| Bank Of India Indonesia
147 | Bank Muamalat
151	| Bank Mestika
153 | Bank Sinarmas
157	| Bank Maspion
161	| Bank Ganesha
164	| BANK ICBC
167	| Bank QNB indonesia
200 | Bank BTN
212	| Bank Woori Saudara
213 | Bank BTPN
405	| Bank Victoria Syariah
422 | Bank BRI Syariah
425	| Bank Jabar Banten Syariah
426 | Bank Mega
441 | Bank Bukopin
451 | Bank Syariah Mandiri
472 |	Bank Jasa Jakarta
494 |	Bank Rakyat Indonesia AGRONIAGA
498 |	Bank SBI Indonesia (Indomonex)
501 |	Bank Royal
503 |	Bank National Nobu
513 |	Bank INA
523 |	Bank Sahabat Sampoerna
535 |	BANK KESEJAHTERAAN EKONOMI
547 |	BANK BTPN SYARIAH
553 |	Bank Mayora
555 |	BANK INDEX
558 |	Bank Pembangunan Daerah Banten
559	| CNB
567	| HARDA
889	| BPR KS
945 |	Bank Agris
949 |	Bank CTBC Indonesia

# KYC (Coming Soon)

Our KYC system will allow you to verify whether the user-supplied identity card is valid or not.

<a href='mailto:business@oyindonesia.com'>Contact us if you are interested!</a>
