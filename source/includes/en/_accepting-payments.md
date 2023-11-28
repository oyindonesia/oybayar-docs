# Accepting Payments

## VA Aggregator

Businesses are struggling to manage hundreds or even thousands of physical bank accounts that are used for different purposes. It causes significant overhead cost in terms of the amount of account maintenance and man hours needed for reporting and reconciliation purposes, combining different information from different accounts.

Virtual Account (VA) is essentially a dummy account that is linked to a physical account and has all the physical account characteristics that enables a much easier reporting and reconciliation process by centralizing the money flow into the physical account. By issuing VAs, you can assign each VA for specific person and/or purposes.

![API VA Aggregator](images/va_diagram_1.png)

From the example above, it shows how payments made through the VAs are merely pass-throughs for the physical accounts to receive money. Without VAs, the above example might require up to 8 physical accounts from 2 different banks rather than 2 physical accounts from 2 different banks.

**OY! API VA Aggregator**

Our API VA Aggregator product provides you with the capabilities to create unique Virtual Account (VA) numbers as a bank transfer payment method for your customers while the fund movements take place through OY!'s physical account. It provides you with the capabilities to receive payments from your customers via bank transfer without having each respective bank account across multiple banks.

Our virtual accounts are adjustable according to your needs. We offer options of static or dynamic accounts, single or mutli use accounts, opened or closed amounts, and determinable expiration dates. You can also track all created virtual accounts, incoming payments, and their respective details either through our API callback or the OY! dashboard.

![API VA Aggregator](images/va_diagram_2.png)

### Key Features

1. **Create VA number via API** - Create VA automatically by integrating your applications with our API VA. For more information, visit our [API Docs](https://api-docs.oyindonesia.com/).

2. **Create VA number via Dashboard** - Do not have enough resources to integrate with API VA? Do not worry, you can create a VA number easily via OY! Dashboard. No need to write some codes!

3. **Support multiple banks** - Currently, we support virtual accounts (VA) at 11 banks: BCA, BNI, Mandiri, BRI, Permata, CIMB Niaga, BTPN, KEB Hana, Danamon, Maybank and Bank Syariah Indonesia (BSI)

4. **Real-time settlement for majority of the banks** - Payment into a VA will settle in your OY! dashboard on a real-time basis for the majority of the banks (note: for BCA, the settlement will take place H+2 after payment is made into the VA)

5. **Transaction tracking and monitoring capability** - You can track all created VA, incoming payments, and their respective details through our API callback or the OY! dashboard. You will receive a callback all incoming transactions.

6. **Customizable VA types** - You can customize the VA numbers you want to create. Each VA would consist of three categories you can define in the creation process. Refer to the table below for more information on various types of VA:

| Category        | Type/Feature                  | Description                                                                                                  |
| --------------- | ----------------------------- | ------------------------------------------------------------------------------------------------------------ |
| Validity Period | Static Virtual Account        | VA that has a lifetime validity. It will always be active until it is manually deactivated                   |
| Validity Period | Dynamic Virtual Account       | VA that has a specific validity period. It will always be active until it is expired or manually deactivated |
| Amount Type     | Closed Amount Virtual Account | VA that only accepts payment of a specific amount/declared amount                                            |
| Amount Type     | Opened Amount Virtual Account | VA that accepts payment of any amount                                                                        |
| Usage Frequency | Single Use Virtual Account    | VA that expires after a single payment. A single use configuration can only be set up for a dynamic VA       |
| Usage Frequency | Multiple Use Virtual Account  | VA that only expires when expiration date is reached or when it is manually deactivated                      |
| VA Number       | Customized or predetermined   | You may personalize the VA suffix using the numbers you want (e.g. your end-users' phone number or billing number). To enable VA number customization, please contact your Business Representative. Currently, this customizable VA number feature is only available for BRI and CIMB.        |

7. **Capability to update VA** Attribute that can be updated:
   * amount
   * is_single_use
   * email
   * trx_counter
   * expired_time
   * trx_expired_time
   * username_display

Example:

* A static VA with a closed amount can be updated with a new closed amount hence it can work as a bill to be paid for a particular customer
* A static VA can be updated to a single use so it will be the last payment received from a particular customer

All of the VA information, even after they are updated, is available on the OY! dashboard or via API. Once a VA is updated, the new set of configuration will apply for that VA and the previous configure is overridden and no longer applicable

### Use Cases

![API VA Aggregator](images/va_use_case_new.png)

### Registration and Set Up

Follow the below check-list to ensure you're all set up to use our VA Aggregator API service:

1. Create an account
2. Upgrade your account by submitting the required documentations
3. Have your upgrade request approved
4. Set up your receiving bank account information (note: ensure that the receiving bank account information is accurate as it cannot be changed via OY! dashboard for security reasons)
5. Submit your IPs and callback URLs to your business representative or to partner@oyindonesia.com
6. Receive an API Key from us (note: it is required for API authorization purpose)
7. Integrate with our Virtual Account Aggregator API

### Testing

#### Create VA number via API

Once you successfully create an OY! account, you can immediately simulate VA payments via API.

Follow the below steps to test the VA flow:

1. Create an account

2. Send a request to activate API VA Aggregator product and obtain staging API Key to your business representative

3. Create a VA number by sending a ‘POST’ request to https://api-stg.oyindonesia.com/api/generate-static-va using your staging API key. Enter the required and optional fields, as referenced in the [API reference docs](https://api-docs.oyindonesia.com/#create-va)

4. After VA number is generated, partner can simulate VA payment through your dashboard (in Demo environment) by going to Settings, and choose "Bank Transfer Callback". ![Bank Transfer Callback](images/bank_transfer_callback_va.png)

5. Choose Virtual Account and fill in the bank name associated with the generated VA number, the generated VA number, amount, payment date & time

6. If payment is successful, we will send a callback to the registered demo callback URL destination

7. The payment made to the VA can be monitored through OY! dashboard. Go to "Virtual Account" menu, and choose "Incoming Payment"

#### Create VA via Dashboard

Once you successfully create an OY! account, you can immediately create VA number and simulate VA payments via Dashboard.

Follow the instruction below:

1. Create an Account.

2. Select ‘Staging’ environment.

3. Click menu Virtual Account, then click ‘Create VA’.

4. In the top right, click ‘Create Virtual Account’ button.

5. You can choose between creating VA by uploading a CSV file (template available) or creating manually one by one.

6. Fill out the requirements: Partner User ID, Partner Transaction ID, Bank Name, VA Name, VA Type, Amount, usage, Usage Limit, VA Expiration Type, VA Expiration Date & Time, Transaction Expiration Date & Time, and Email.

7. Validate and Submit your request.

8. VA number(s) that you created will appear in the Create VA menu.

9. To simulate VA payment and see status changing, tap ‘Send Callback’ button in the right section of the table

### How to Use

Send us instructions to generate a new VA number, or create a VA number via dashboard.

> Below is an example of a request body to execute your request:

```shell
curl --location --request POST https://partner.oyindonesia.com/api/generate-static-va
--header 'content-type: application/json' \
--header 'accept: application/json' \
--header 'x-oy-username: username' \
--header 'x-api-key: apikey' \
-d '{
    "partner_user_id":"51200021",
    "bank_code": "014",
    "amount": 150000,
    "is_open" : false,
    "is_single_use" : false,
    "is_lifetime": false,
    "expiration_time": 5,
    "username_display" : "va name",
    "email": "email@mail.com"
    }'
```

> It will return an [error message](https://api-docs.oyindonesia.com/#va-aggregator-response-codes) if the request is not valid. Otherwise, below is the sample response parameters that will be returned:

```json
{
  "id": "12345b1-23be-45670-a123-5ca678f12b3e",
  "status": {
    "code": "000",
    "message": "Success"
  },
  "amount": 15000,
  "va_number": "700707760000000003",
  "bank_code": "014",
  "is_open": false,
  "is_single_use": false,
  "expiration_time": 1582783668175,
  "va_status": "WAITING_PAYMENT",
  "username_display": "va name",
  "trx_expiration_time": 1582783668175,
  "partner_trx_id": "TRX0001"
}
```

>

Once a VA is created, its details can be seen and monitored through the OY! dashboard.

- For Create VA via API, an endpoint to [check your VA information](https://api-docs.oyindonesia.com/#get-va-info) is also available and can be accessed at any time.
- If you wish to change the details of your VA, you can do so by [updating your VA](https://api-docs.oyindonesia.com/#update-va) at any time.

![API VA Aggregator](images/va_waiting_payment.png)

> Below is an example of the request body:

```shell
curl --location --request GET https://partner.oyindonesia.com/api/static-virtual-account/12345b1-23be-45670-a123-5ca678f12b3e
--header 'content-type: application/json' \
--header 'accept: application/json' \
--header 'x-oy-username: username' \
--header 'x-api-key: apikey'
```

> Below is the sample response parameters that will be returned:

```json
{
  "id": "12345b1-23be-45670-a123-5ca678f12b3e",
  "status": {
    "code": "000",
    "message": "Success"
  },
  "amount": 150000.0000,
  "va_number": "700707760000000003",
  "bank_code": "014",
  "is_open": false,
  "is_single_use": false,
  "expiration_time": 1582783668175,
  "va_status": "WAITING_PAYMENT",
  "username_display": "va name",
  "amount_detected": 0,
  "partner_user_id": "123456",
  "trx_expiration_time": 1582783668175,
  "partner_trx_id": "TRX0001"
}
```

>

> Below is an example of the request body:

```shell
curl --location --request PUT https://partner.oyindonesia.com/api/static-virtual-account/12345b1-23be-45670-a123-5ca678f12b3e
--header 'content-type: application/json' \
--header 'accept: application/json' \
--header 'x-oy-username: username' \
--header 'x-api-key: apikey' \
-d '{"is_open" : true,"amount": 50000,"is_single_use" : false,"expiration_time": 30,"username_display" : "va name","bank_code": "014","trx_expiration_time":5,"partner_trx_id":"TRX0001"}'
```

> Below is the sample of response parameters that will be returned:

```json
{
  "id": "12345b1-23be-45670-a123-5ca678f12b3e",
  "status": {
    "code": "000",
    "message": "Success"
  },
  "amount": 50000,
  "va_number": "700707760000000003",
  "bank_code": "014",
  "is_open": true,
  "is_single_use": false,
  "expiration_time": 1582802205412,
  "va_status": "WAITING_PAYMENT",
  "username_display": "va name",
  "partner_user_id": "123456",
  "trx_expiration_time": 1582802205412,
  "partner_trx_id": "TRX0001"
}
```

>

All details regarding your [created VA](https://api-docs.oyindonesia.com/#get-list-of-created-va) and its payments can be monitored directly from the OY! dashboard.

- Additionally, Create VA via API can be retrieved via our API endpoint.

![API VA Aggregator](images/va_created_va.png)

Similarly, all the details regarding [incoming transactions](https://api-docs.oyindonesia.com/#get-list-of-transaction-for-va) can be monitored directly from the OY! dashboard.

- Additionally, Create VA via API can be retrieved via our API endpoint.

![API VA Aggregator](images/va_incoming.png)

For further details regarding OY!'s extensive API VA Aggregator capabilities and endpoints, please refer to the [OY! API Documentation](https://api-docs.oyindonesia.com/#va-aggregator).

### VA Bank Details

| Bank (Virtual Account) | Capability (Open Amount/Closed Amount)         |
| ---------------------- | ---------------------------------------------- | 
| BNI                    | Closed Amount                                  | 
| Bank Mandiri           | Open Amount, Closed Amount                     |                  
| BRI                    | Open Amount, Closed Amount                     | 
| BCA                    | Open Amount, Closed Amount                     | 
| Bank Permata / Permata Syariah| Open Amount, Closed Amount              |
| CIMB Niaga / CIMB Niaga Syariah| Open Amount, Closed Amount             | 
| BTPN                   | Open Amount, Closed Amount                     | 
| KEB Hana               | Open Amount, Closed Amount                     | 
| Maybank                | Open Amount, Closed Amount                     |
| Bank Danamon           | Open Amount, Closed Amount                     |
| BSI (Bank Syariah Indonesia)| Closed Amount                             |


### Available Payment Channels for VA 

Your end-users may use the below payment channels to pay for their bills via VA


| Bank (Virtual Account) | SKN  | RTGS  | ATMs | Intrabank Mobile Banking & Internet Banking | Interbank Internet Banking | Interbank Mobile Banking |
| ---------------------- | ---  |----  |---- | ------------------------------------------- | --------------------------| ---------------------------- |
| Bank Mandiri           | Yes  | Yes  | Yes | Yes                                            | Yes                       | Yes                          |
| BRI                    | Yes  | Yes  | Yes | Yes                                            | No                       | Yes                           |
| BNI                    | Yes  | Yes  | Yes | Yes                                            | No                       | Yes                           |
| Permata                | Yes  | Yes  | Yes | Yes                                            | No                       | Yes 
| CIMB Niaga / CIMB Niaga Syariah | Yes  | Yes | Yes | Yes (Mobile Banking), No (Internet Banking)| No                       | Yes                          |
| BCA                    | No   | No   | Yes | Yes      | No                                  | No                       |
| BTPN                   | Yes  | No   | Yes | Yes (Mobile Banking), No (Internet Banking)     | No                       | Yes                          |
| Maybank                | Yes  | Yes  | Yes | Yes      | No                                  | No                       |
| Danamon                | Yes  | Yes  | Yes | Yes      | No                                  | No                       |
| KEB Hana               | No   | No   | Yes | Yes      | No                                  | No                       |
| BSI                    | No   | No   | Yes | Yes      | Yes                                 | Yes                      |

## Payment Link
Payment Link is a pre-built checkout page that allows your business to easily and securely accept payments online. You can share the link to your customers and they can choose various payment methods that OY supports inside the Payment Link. OY supports up to 17 payment methods– including Bank Transfer, E-Wallet, QR Code (QRIS), Credit and Debit cards. Payment Links can be created without using any code/integration. However, if you need to create Payment Links from your website/application, OY also provides Payment Link API.

There are two types of Payment Link:

|Payment Link Type|Characteristic|Use Case|
| :- | :- | :- |
|One Time|One link to accept single payment|One-Time payments|
|Reusable|One link to accept multiple payments and support lifetime payments|Top Up, Donation|

![Payment Link Preview](images/acceptingPayments/paymentLink/payment_link_overview_flow.png)

#### Flow
![Payment Link One Time Flow](images/acceptingPayments/paymentLink/payment_link_sequence_diagram_payment_link_one_time.png)
![Payment Link Reusable Flow](images/acceptingPayments/paymentLink/payment_link_sequence_diagram_payment_link_reusable.png)
### Features
#### Customize Payment Link transaction configuration
Set your Payment Link configurations depending on the use case of your transactions. There are several things that you can configure:

1. List of Available Payment Methods
   - Set up the list of available payment methods that you allow for your customers. The payment methods available are Bank Transfer (via Virtual Account and Unique Code), Cards (Credit Card/Debit Card), E-Wallet, and QRIS
1. Amount type
   - Open Amount : Accept payments of any amount, or up to specified amount
   - Closed Amount : Only accept payments of the specified amount
1. Admin Fee type:
   - Include Admin Fee: Admin fee will be deducted from the amount once the fund is settled to your balance. Admin fee borne by merchant.
   - Excluded from total amount: Admin fee will be added to the customer's total payment. Admin fee borne by the customer. 
      Total amount to be paid by the customer = Specified Amount + Admin Fee. 
1. Payment Link Expiration Time 
   - By default, Payment Link Expiration Time is 24 hours. You can customize the Payment Link Expiration Time by days and/or hours. The maximum expiration time is 31 days + 23 hours.
   - Specifically for Reusable Payment Link, you can set the expiration time to “Lifetime”, meaning that the link does not have an expiration time and can accept payments any time unless the Payment Link is manually deactivated.

You can define your default configuration, so you will no longer need to fill in these fields again the next time you create a payment link. Save your default configuration by ticking  "Use this configuration for future transaction(s)” option when creating Payment Links. 

![Payment Link Save Configuration](images/acceptingPayments/paymentLink/payment_link_save_configuration.png)

#### Monitoring transactions via OY! Dashboard
All created Payment Link transactions are shown in the OY! Dashboard. Navigate to “Payment Link” → “One Time”/”Reusable” to see the list of created transactions. Inside the dashboard, you can see the details of the transactions, including all the transaction information inputted during creation, the status of transactions, and the payment reference number\*. The dashboard also has a feature to search, filter, and export the list of transactions in various formats : Excel (.xlsx), PDF (.pdf), and CSV(.csv)

![Payment Link Monitoring Transactions](images/acceptingPayments/paymentLink/payment_link_monitoring_transactions.png)

\*Payment Reference Number is an identifier of a payment attempt when the customer successfully completes a QRIS payment. The reference number is also stated in the customer’s receipt/proof of transaction. Only available for QRIS transactions.

#### Customize theme
By default, Payment Link uses OY’s default theme. However, the default theme might not suit your brand personality. In order to maintain a consistent brand experience for your users, you can customize the look and feel of your Payment Link, where you can do the following things:

1. Upload a custom logo
1. Choose the theme colors
1. Choose the button colors

If you use OY’s Account Receivable product, the customization of Payment Link also applies to the Account Receivable, and vice versa.

You can customize the theme for Payment Link through OY! Dashboard. Here are the steps to guide you in doing so:

1. Log onto OY! Dashboard via Desktop (<https://www.desktop-business.oyindonesia.com>). The menu is currently unavailable in the mobile web version and OY! Business App.
1. Go to the “Settings” menu and click “Payment Link Display”.
1. To customize the logo in the Payment Link, you must input the logo in a URL format (<https://example.com/image.jpg>).
   - If you do not have the URL for your logo, you can use online tools like [snipboard.io](https://snipboard.io/) or [imgbb](https://imgbb.com/).
   - Once you convert your logo to URL, the correct URL should look like this:
      - Snipboard.io: <https://i.snipboard.io/image.jpg>
      - Ibbmg: <https://i.ibb.co/abcdef/image.jpg> 
1. To change the header color in the Payment Link, you can choose a color from the Color Picker or you can type the HEX color code in “Header Color” (ex. #FFFFFF). 
1. You can choose a different color for the buttons inside the Payment Link. Choose a color from the Color Picker or type the HEX color code in “Button & Link Color”.
1. Save the changes. The changes will be applied to all payment links created in real-time. You can see when the last Payment Link Display was modified.

![Payment Link Customizing Theme](images/acceptingPayments/paymentLink/payment_link_customizing_theme.png)

Here is the example of the Payment Link before and after it is customized. The header’s color is customized using brown color and the button’s color uses green color.

![Payment Link Customized](images/acceptingPayments/paymentLink/payment_link_customize_theme.png)

#### Share Payment Link to multiple channels
You can share created Payment Link directly to your customers through multiple channels, including email, WhatsApp message, and copy link

##### Email
Send created Payment Link up to 6 email recipients per Payment Link. This feature is supported for creation via OY! Dashboard and API. Sending Payment Links via email is free of charge.

You can fill the email recipients in the “Email(s)” field under “Customer Detail” section when creating Payment Links via OY! Dashboard. Separate multiple emails using semicolon (;) characters. Example: <email1@company.com>;email2@company.com;email3@company.com

If you use Payment Link API, you can insert the email recipients under the “customer\_email” parameter when creating Payment Links. Please refer to the [Payment Link Creation](https://api-docs.oyindonesia.com/#api-create-payment-link-fund-acceptance) section in the API Docs for further details.

##### WhatsApp
Send Payment Link to unlimited WhatsApp account per Payment Link. This feature is supported for creation via API only, and not supported for creation via OY! Dashboard. By default, this feature is not automatically activated after registration. Please contact your business representative to activate this feature

Once you successfully create Payment Links, hit our API Send WhatsApp to send created Payment Links to your customers. Please refer to [API Send WhatsApp](https://api-docs.oyindonesia.com/#api-send-whatsapp) section for further details

Your customers will receive a WhatsApp message from OY’s WhatsApp account using this format:

Hi {{Customer Name}}, <br/>
Anda memiliki transaksi di {{Your Brand Name}} yang sedang menunggu pembayaran. Lakukan pembayaran sebelum {{Payment Link Expiration Time}}. 
Silakan klik link berikut untuk membayar: {{Payment Link URL}} 

Mohon untuk tidak membalas pesan ini.

Example:
Hi John Doe, <br/>
Anda memiliki transaksi di Jane’s Store yang sedang menunggu pembayaran. Lakukan pembayaran sebelum 1-Feb-2022, 13.28. 
Silakan klik link berikut untuk membayar: <https://pay.oyindonesia.com/123>  

Mohon untuk tidak membalas pesan ini.

##### Copy Link
After creating Payment Links, you will receive a URL link that can be copied and shared to your customers

If you create the Payment Link via OY! Business App, you can use the built-in share feature from your mobile device when sharing Payment Link. 

![Masih ongoing fotonya #todo masukin gambar](images/acceptingPayments/paymentLink/masih_otw.png)
#### Receipt for successful payments
Customers can directly see the receipt of payments inside the Payment Link once payment is made. Customers can also receive the receipt via email(s) that you provided during Payment Link creation. Configure sending receipt via emails to your customers by going through this steps:

1. Log in to your OY! Dashboard account
1. Go to “Settings” → “Notifications”
1. Click “Receive Money (To Sender)”
1. Choose “Enable Success Notification” for Payment Link and/or Invoice Link
1. Input your logo to be put on the email in URL format (<https://example.com/image.jpg>) 
   1. If you do not have the URL for your logo, you can use online tools like [snipboard.io](https://snipboard.io/) or [imgbb](https://imgbb.com/).
   1. Once you convert your logo to URL, the correct URL should look like this:
      1. Snipboard.io: <https://i.snipboard.io/image.jpg>
      1. Ibbmg: <https://i.ibb.co/abcdef/image.jpg>
1. Save the changes by clicking “Save”
1. Create a Payment Link transaction and input the customer’s email address in the “Email(s)” field under “Customer Detail” section when creating Payment Links via OY! Dashboard. Separate multiple emails using semicolon (;) characters. Example: <email1@company.com>;email2@company.com;email3@company.com
1. Your customer will receive successful receipt to the emails once payment is made

![Payment Link Notifications to Payer](images/acceptingPayments/paymentLink/payment_link_notification_to_sender.png)

Note: If you do not put any of your customer’s email during Payment Link creation, OY! will not send any receipt via email even though you enabled the notification configuration

You can also receive the receipt to your email once payment is made by the customer. Configure sending receipt via emails to your customers by going through this steps:

1. Log in to your OY! Dashboard account
1. Go to “Settings” → “Notifications”
1. Click “Receive Money (To Receiver)”
1. Choose “Enable Success Notification” for Payment Link and/or Invoice Link
1. You can fill up to 3 email recipients. Separate the emails using semicolon (;) characters. Example: <email1@company.com>;email2@company.com;email3@company.com
1. Save the changes by clicking “Save Changes”
1. You will receive an email for every successful Payment Link payments made by your customers 

![Payment Link Notifications to Merchant](images/acceptingPayments/paymentLink/payment_link_notification_to_receiver.png) 
#### Embedding Payment Link to your website/application
Create a seamless payment experience for your customers by inserting a created Payment Link to your website or application. Customers can stay on your page without being redirected to another page to complete the payments. There are many ways that you can show a Payment Link inside your page, and here are several suggestions that you can use: Pop Up - Center, Pop Up - Right, Pop Up - Left, and Slide - Right. Please refer to [Embed Payment Link](https://api-docs.oyindonesia.com/#pop-seamless-payment-experience-fund-acceptance) in the API Docs to see detailed implementation of inserting Payment Link to your application.
#### Refund payments to customer
When your customer receives a defective product or the product is not delivered, they might request to refund the payment. You can directly refund payments to your customer’s account via OY! Dashboard. A refund can either be full or partial. A full refund gives your customers the entire amount back (100%). A partial refund returns the amount partially. 

Refunds are free of charge. However, the admin fee charged for the original payment is not refunded by OY to your balance.

There are several requirements that must be met to issue a refund:

1. Refunds can only be issued up to 7 calendar days after the transaction is marked as successful.
1. You have enough balance that allows us to deduct the amount of the transaction that should be refunded. 
1. A refund can only be issued once for each successful transaction, whether it is a full or partial refund.
1. Refunds must be issued during operational hours, depending on the payment method. Refer to the table below.

Currently, refunds are only available for e-wallet payments. 

|Payment Method|Refund Feature|Operational Hours|
| :- | :- | :- |
|<p>DANA	</p><p></p>|Full Refund, Partial Refund|00\.00 - 23.59 GMT+7|
|ShopeePay|Full Refund|05\.00 - 23.59 GMT+7|
|LinkAja |Full Refund|00\.00 - 23.59 GMT+7|
|OVO|Not supported|-|

Here are the steps to do refunds for Payment Link transactions:

1. Log in to your OY! Dashboard with your username and password that you registered with.
1. Open “Payment Link” menu and choose “One Time”/“Reusable”, depending on your transactions
1. Search record of the transaction that wants to be refunded. Under the “Action” column, you can click the three-dots button and click “Refund E-Wallet” to issue a refund.
1. If the refund does not meet the requirement above, an error message will show up and you can not continue the refund process.
1. However, if the transaction is eligible for a refund, a pop up will be shown to continue the refund process
1. For partial refund, you can fill the amount to be refunded
1. Make sure that you have enough balance to issue a refund. If you do not have enough balance, an error message will show up. You can top up your OY’s balance first.
1. Once you successfully issue a refund, the transaction status changes to “Refunded”. 
1. You can see the refunded transaction in the “Account Statement” page by clicking “Transaction Report” → “Account Statement”.

#### Retry notification/callback for successful payments

If you use Payment Link API, OY! sends a notification/callback to your system once a transaction is marked successful. Therefore, you will be notified if the customer has already completed the payment. There might be a case where your system does not receive the notification successfully. 

By enabling Retry Callback, OY will try to resend another callback to your system if your system does not receive the callback successfully. You can request to resend a callback using Manual Retry Callback or Automatic Retry Callback. 

##### Manual Retry Callback

Manual Retry Callback allows you to manually send callbacks for each transaction from OY! Dashboard. Here are the steps to do so:

1. Login to your account in OY! Dashboard
1. Open “Payment Link” and choose "One Time"/"Reusable" depending on the transaction
1. Search the record of the transaction and click 3 dots button under “Action” column
1. Make sure that you have set up your Callback URL via “Settings” → “Developer Option” → “Callback Configuration”
1. Make sure to whitelist OY’s IP to receive callbacks from OY 
   - 54.151.191.85
   - 54.179.86.72
1. Click “Resend Callback” to resend a callback and repeat as you need

![Payment Link Manual Retry Callback](images/acceptingPayments/paymentLink/payment_link_manual_resend_callback.png) 
##### Automatic Retry Callback
Automatic Retry Callback allows you to receive another callback within a certain interval if the previous callback that OY sent is not received successfully on your system. OY! will try to resend other callbacks up to 5 times. If your system still does not receive any callbacks after 5 retry attempts from OY, OY will notify you via email. You can input up to 6 email recipients and it is configurable via OY! Dashboard. 

Callback Interval : Realtime → 1 minute (after the initial attempt)→ 2 minutes (after the first retry attempt)→ 13 minutes (after the second retry attempt) → 47 mins (after the third retry attempt) 

OY! sends the first callback to your system once the transaction is successful on OY!’s side. If your system failed to receive the callback, OY! will send the first retry callback attempt to your system immediately. If your system still fails to receive the callback, OY! will send the second retry callback attempt 1 minute after timeout or getting a failed response from your side. The process goes on until you successfully receive the callback or all retry callback attempts have been sent.

Automatic Retry Callback is not activated by default. You can see the guideline below to enable Automatic Retry Callback:

1. Login to your account in OY! Dashboard
1. Go to “Settings” and choose “Developer Option". 
1. Choose “Callback Configuration” tab
1. Input your callback URL in the related product that you want to activate. Make sure you input the correct URL format. Please validate your callback URL by clicking “URL String Validation”
1. If you want to activate automated retry callback, tick the Enable Automatic Retry Callback for related products. You must input the email recipient(s) to receive a notification if all the callback attempts have been made but still failed in the end.
1. Make sure to whitelist OY’s IP to receive callbacks from OY
   - 54.151.191.85
   - 54.179.86.72
1. Make sure to implement the idempotency logic in your system. Use “tx\_ref\_number” parameter  as idempotency key to ensure that multiple callbacks under “tx\_ref\_number”  key should not be treated as multiple different payments.
1. Save the changes

![Payment Link Automatic Retry Callback](images/acceptingPayments/paymentLink/payment_link_automatic_callback_configuration.png)  
#### Multi Entity Management
Multi Entity Management is a feature that can help you handle multiple OY! accounts under one entity. The account that acts as an admin is called a Main Entity and the accounts that can be controlled by the admin are called Sub Entity. 

Using this feature, you are able to accept payments from your customers through Payment Link that is created on behalf of a Sub Entity. When your users make a successful transaction, the transaction will be recorded in the Sub Entity’s balance. As a Main Entity , you are equipped with the ability to view the Sub Entities' balance and transaction list anytime through Multi Entity → Sub Entity Statement.

Please refer to the [Multi Entity Management](https://docs.oyindonesia.com/#how-to-use-multi-account-management) section in this documentation for detailed information

### Registration and Setup
Here are the steps to guide you through registration and set up for creating Payment Link transactions. 

1. Create an account at OY! Dashboard
1. Do account verification by submitting the verification form. Ensure to tick the “Receive Money” product since Payment Link is a part of Receive Money products.
1. OY! team will review and verify the form and documents submitted 
1. Once verification is approved, set up your receiving bank account information. Important Note: Ensure that the receiving bank account information is accurate as you can only set it up once via OY! Dashboard for security reasons
1. By default, you get several payment methods on the get go, including all Bank Transfers (excl. BCA)
1. Other payment methods like QRIS, Ewallets, and BCA need additional onboarding to be available to use. Please refer to this section for detail guidelines:
   - Ewallet Onboarding #todo hyperlink
   - QRIS Onboarding #todo hyperlink
   - VA BCA Onboarding #todo hyperlink

If you use Payment Link API, then you need to do additional steps, including:

1. Submit your IP address(es) & callback URL to your business representative or send an email to <business.support@oyindonesia.com> 
1. OY! will send the Production API Key as an API authorization through your business representative. 
   Note: Staging/Demo API Key can be accessed via OY! Dashboard by going to the “Demo” environment and the key can be found on the bottom left menu. 
1. Integrate Payment Link API to your system. Please follow the API documentation to guide you through.[ Payment Link - API Docs](https://api-docs.oyindonesia.com/#api-create-payment-checkout) 

Once you completed all the steps above, you are ready to create your Payment Links
### Creating Payment Links
You can create Payment Links via OY! Dashboard. Another way to create a Payment Link is through API, however it is only supported for One Time Payment Link. Here are the guidelines to create Payment Links code-free via OY! Dashboard:

1. Log in to your OY! Dashboard account
1. To create a real transaction, choose the “Production” environment on the sidebar. However, to create a demo transaction for testing purposes, choose the “Try in Demo” environment.
1. Navigate to “Receive  Money” and choose “Payment Link”. Click “One Time”/”Reusable” depending on the type of Payment Link you want to create
1. Click "Create Payment Link"
1. A pop up will be shown for you to fill in the details of the Payment Link. Please refer to the table below to know the explanation of each field.
1. Click “Save”
1. Once a creation is successful, you can see the created Payment Link and share it to your customers. 

![Payment Link Creation](images/acceptingPayments/paymentLink/payment_link_creation.png) 

|Field|Description|
| :- | :- |
|Amount|The amount that will be displayed in the payment link. You must fill this field if you use a closed amount.  |
|Description (Optional)|You can describe the payment context to customers through the description. |
|Partner Transaction ID|A unique transaction ID that you can assign to a transaction|
|Balance Destination|<p>Only available if you use Multi Entity Management.</p><p></p><p>You can choose between “My Balance” or “My Sub Entity’s Balance”</p><p></p><p>My Balance: Once a transaction is successful, the fund will be settled to your balance account</p><p>My Sub Entity’s Balance: Once a transaction is successful, the fund will be settled to your selected Sub Entity’s balance account. </p>|
|Customer Detail|Customer details that can be specified (optional): Customer Name, Phone Number, Email, and Notes. We will send the payment link to the specified email address (if email address is filled in)|
|Amount Type|<p>You can choose between “Open Amount” and “Closed Amount”.</p><p></p><p>Open Amount : Accept payments of any amount, OR up to specified amount (if Amount is filled during creation ). </p><p>Closed Amount : Only accept payments of the specified amount</p>|
|Payment Method|<p>The payment method that you can choose to enable/disable for your customers. The payment methods available are Bank Transfer (via Virtual Account and Unique Code), Cards (Credit Card/Debit Card), E-Wallet, and QRIS</p><p></p>|
|Admin Fee Method|<p>You can choose between "Included in total amount" or "Excluded from total amount". </p><p></p><p>Included in total amount :  Admin fee will be deducted from the amount</p><p>Excluded from total amount : Admin fee will be added to the customer's total payment. Total Amount = Specified Amount + Admin Fee</p>|
|Payment Link Expiration Time|<p>The expiry time of a Payment Link. Once expired, customers can not open the link anymore.</p><p></p><p>By default, Payment Link Expiration Time is 24 hours. You can customize the Payment Link Expiration Time by days and/or hours</p><p></p><p>Specifically for Payment Link Reusable, you can set the expiry time as “Lifetime”, meaning that the link does not have an expiration time and can accept payments any time unless the Payment Link is manually deactivated.</p>|

### Completing payments
Once you successfully create a Payment Link, you may share the link to your customers. Customers can open the link via desktop or mobile browsers. Here are the steps for your customers to complete a payment via Payment Link:

1. Fill or change the amount of transaction (only available for open amount transactions)
1. Choose the desired payment method
1. Fill the customer detail section, including Customer Name, Email, Phone Number, and Notes. All fields are optional except for Customer Name
1. Confirm the payment method to be used by clicking “Pay”
1. OY! will show the payment information for your end users to complete the payment based on the payment method chosen. 
   - For Bank Transfer transactions, Account Number and the Amount to be transferred will be shown
   - For QRIS Transactions, the QR generated from OY! will be shown in the page and can be downloaded or your customer may also directly scan the QR there
   - For Ewallet Transactions, the customers can be automatically redirected to the e-wallet’s app (DANA, LinkAja, ShopeePay) or receive notification from the e-wallet’s app (OVO)
   - For Credit & Debit Cards, customers will be redirected to fill the card number, card expiry date, and CVV
1. You have to be aware that each Payment Method has a different expiry time to complete payments. Please refer to the table below for information
1. To simulate demo transactions, please refer to these sections:
   - Simulate Virtual Account transactions
   - Simulate Unique Code transactions
   - Simulate E-Wallet transactions
   - Simulate Cards transactions
   - Note: Simulate QRIS transactions is currently not available
1. The status on the Payment Link will change to successful once the payment is made. Customers can do a check status on the Payment Link page in case the transaction status is not automatically updated 

<table>
  <tr>
    <th colspan="2" valign="top"><b>Payment Method</b></th>
    <th valign="top"><b>Expiry Time*</b></th>
  </tr>
  <tr>
    <td rowspan="2" valign="top">Bank Transfer</td>
    <td valign="top">Virtual Account</td><td valign="top">Up to 24 hours</td>
  </tr>
  <tr>
    <td valign="top">Unique Code</td>
    <td valign="top">Up to 3 hours</td>
  </tr>
  <tr>
    <td rowspan="4" valign="top">E-Wallet</td>
    <td valign="top">ShopeePay</td><td valign="top">Up to 60 minutes</td>
  </tr>
  <tr>
    <td valign="top">LinkAja</td>
    <td valign="top">5 minutes</td>
  </tr>
  <tr>
    <td valign="top">DANA</td>
    <td valign="top">Up to 60 minutes</td>
  </tr>
  <tr>
    <td valign="top">OVO</td>
    <td valign="top">Up to 55 seconds</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">QRIS</td>
    <td valign="top">Up to 30 minutes</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Credit and Debit Cards</td>
    <td valign="top">60 minutes</td>
  </tr>
</table>

\*Payment method expiration time is different from Payment Link expiration time. Payment method expiration is counted from when the customer confirms a payment method, meanwhile Payment Link expiration time is counted from when the Payment Link is created. You can only customize Payment Link expiration time. 

Example: You create a Payment Link that accepts Virtual Account (VA) and QRIS as Payment Method and set the Payment Link expiration time to 2 hours. Your customer opens the Payment Link and chooses QRIS as the payment method. OY! will generate the QR and the QR can be paid within the next 30 minutes. After 30 minutes, the QR expires and your customer must choose another payment method. This time, your customer chooses VA as payment method. OY! will generate the VA number and the VA validity is 1 hour and 30 minutes because the remaining Payment Link expiry time is 1 hour and 30 minutes. After 2 hours, your customer is not able to open the Payment Link since the Payment Link has expired.

### Checking transaction status
All created Payment Link transactions are shown in OY! Dashboard. Navigate to “Payment Link” → “One Time”/”Reusable” to see the list of created transactions. Inside the dashboard, you can see the details of the transactions, including all the transaction information inputted during creation, status of transactions, and the payment reference number. The dashboard also has a feature to search, filter, and export the list of transactions in various formats: Excel (.xlsx), PDF (.pdf), and CSV(.csv)

There might be times that your customer already completed the payments but the transaction status is not updated to success. In this case, there are several ways to check the status of a transaction:

1. Customers can directly check the status of the transaction by clicking “Check Status” button on the Payment Link page
1. You can check the status of the transaction by hitting API Check Status. Please refer to this section in the API Docs. [Check Status Payment Link - API Docs](https://api-docs.oyindonesia.com/#api-payment-status-fund-acceptance).

### Receiving fund to balance
Once a transaction is paid by the customer, OY! updates the transaction status and sends notification to your system indicating that the transaction has been paid, and settles the funds to your OY! balance. Each payment method has a different settlement time, varying from real-time to D+2 Working Days. 

## Payment Links/Invoice

**Overview**
Payment Link
OY! Payment Link/Invoice is a pre-built payment page that allows your business to easily and securely accept payments online. Currently, our payment link/invoice page supports Credit Card, Debit Card, Bank Transfer, E-Wallet (ShopeePay, DANA, LinkAja, OVO), and QR Code (QRIS) payment methods. You can create payment link/invoice pages through various methods: OY! Dashboard and API.

Creating a payment link/invoice page is free! You will only be charged when you successfully receive a payment made through that checkout/invoice page.

**Payment Flow**

1. You create payment link/invoice page for your customers
2. Your customers make a payment through the payment link/invoice page
3. OY! detects the payments and notifies you about the payments through sending a callback and/or updating the payment status on your dashboard
4. The payments received will settle in your OY! dashboard

**Payment Link Preview**

![Payment Link](images/3p1p_preview.png)

### Key Features

#### Various options of creating payment link/invoice page

**1. Creating payment link/invoice page through dashboard**

**No integration needed**

Offer your customers a seamless way to pay and complete payment channels without the need of an integration. 

**Choose between one-time link and reusable link**

One-time link is a link that can only be paid once.
Reusable link is a link that can receive multiple payments.

**Parameter customization**

| Parameter Type             | Parameter Name                                                                                                                                                                                           | Definition                                                                                                                                                                                                                                                                                                                                    |
| -------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transaction-related        | Amount                                                                                                                                                                                                   | The payment amount that will be displayed in the payment link page                                                                                                                                                                                                                                                                            |
| Transaction-related        | Description                                                                                                                                                                                              | The description of the payment link. Usually this is used to describe the purpose of the payment link page                                                                                                                                                                                                                                    |
| Transaction-related        | Partner Transaction ID                                                                                                                                                                                   | A unique transaction ID that you can assign to a transaction                                                                                                                                                                                                                                                                                  |
| Transaction-related        | Balance Destination.                                                                                                                                                                                     | The balance destination of the fund received from the transaction. Options: 1) "My Balance" (When your users make a successful payment, the transaction will be recorded in your balance/account statement, 2) "My Child's Balance" (When your users make a successful payment, the transaction will be recorded in the selected child's balance/account statement. This field only appears when your account has at least one or more active Child.                                                                                                                                                                                                                        |
| Customer Detail            | Customer details that can be specified (optional): Customer Name, Phone Number, Email, and Notes. We will send the payment link page link to the specified email address (if email address is filled in) | Customer Name, Phone Number, Email, and Notes                                                                                                                                                                                                                                                                                                 |
| Payment Link Configuration | Amount Type                                                                                                                                                                                              | You can choose between Open Amount and Closed Amount. Open Amount = can accept payments of any amount, OR up to the specified amount (if amount is filled in). Closed Amount = only accept payments of the specified amount                                                                                                                   |
| Payment Link Configuration | Payment Method                                                                                                                                                                                           | The payment method that you can choose to enable/disable for your customers. The payment methods available are Bank Transfer (via Virtual Account), Cards (Credit Card/Debit Card), E-Wallet (ShopeePay, DANA, LinkAja, OVO), and QRIS                                                                                                        |
| Payment Link Configuration | Admin Fee Method                                                                                                                                                                                         | You can choose between "Included in total amount" or "Excluded from total amount". "Included in total amount" means the admin fee will be deducted from the payment amount made by the customer. "Excluded from total amount" means the admin fee will be added to the customer's total payment (Total Amount = Specified Amount + Admin Fee) |
| Payment Link Configuration | Payment Link Expiration Date                                                                                                                                                                             | You can choose (specify the day(s) and/or hour(s)) of when the payment link will expire after it is created. For example, if you want the link to expire 1 day after it is created, fill 1 day 0 hour in the Payment Link Expiration Date field.                                                                                              |

**UI customization**

In order to maintain a consistent brand experience for your users, you can customize the look and feel of your payment link in the Dashboard, where you can do the following things;

* Upload a logo
* Choose the button and the theme color of the payment link

**Payment Link Delivery by Email and/or WhatsApp**

You can choose to send the created link to your users through Email and/or WhatsApp for better payment conversion. If you want to share the payment link to your customer's email, you can define the email parameter in our API. No need for you to send a separate email. If you want to share the payment link through WhatsApp, follow the steps [here](https://docs.oyindonesia.com/#sending-the-created-payment-link-through-whatsapp-coming-soon)

**Payment Success Notification for your Users**

When your users make a successful payment, you can choose to send them a success receipt through Email


**2. Creating payment link/invoice page through API**

- **Seamless integration with your customer's purchase journey**
  You can easily call our API - we will take care of the payment link/invoice link creation and feed it back to you so that you can embed the link in your customer journey.

- **Added level of customization**

Below are the things that you can customize:

1. Amount (specify the amount and choose between open amount vs closed amount)

2. Admin fee (choose whether the admin fee will be borne by your customers or borne by you)

3. Payment method (choose the payment methods displayed to your customers among Bank Transfer (via Virtual Account and Unique Code), Cards (Credit Card/Debit Card), E-Wallet (ShopeePay, DANA, LinkAja, OVO), and QR Code options. Additionally, you can choose which banks are enabled for Bank Transfer method.)

4. Payment link expiration date

- **Static VA for Invoice Payment**
  You can enable a static VA option when using the API specifically assigned to your customer.

- **Upload or Create a PDF for your Invoice Billing**
  You can upload an invoice attachment or create an attachment using the OY! PDF templates via our API so you do not need to send a separate email to your customer.

- **Payment Link Delivery by Email and/or WhatsApp**

You can choose to send the created link to your users through Email and/or WhatsApp for better payment conversion. If you want to share the payment link to your customer's email, you can define the email parameter in our API. No need for you to send a separate email. If you want to share the payment link through WhatsApp, follow the steps [here](https://docs.oyindonesia.com/#sending-the-created-payment-link-through-whatsapp-coming-soon)

- **Payment Success Notification for your Users**

When your users make a successful payment, you can choose to send them a success receipt through Email


#### Capability to monitor payment link/invoice details on dashboard

Whether you send your user dashboard-generated link, or an API-generated encapsulated link, each of your distributed payment link can be monitored through the OY! Dashboard. We will also send a callback for all incoming payments.

You will be able to see the details of the payment link including, but not limited to, the payment status, creation and expiration dates and times, amount, description, payment details, and payer details. For further convenience, you can also find and filter through your payment link list by creation date, partner transaction ID, or status.

We also provide an API for you to check the transaction status manually.

![Payment Link](images/payment_checkout_list.png)

#### Support Multi Account Management

With this feature, you will be able to accept payment from your users through Payment Link created on behalf of a child account. When your users make a successful transaction, the transaction will be recorded in the Child Account's balance. As a parent, you are equipped with the ability to view the Child Account's balance and transaction list anytime through Children → Children Statement. 

Click [here](https://docs.oyindonesia.com/#how-to-use-multi-account-management) for more information on this feature. 

### Registration and Set Up

**For dashboard-generated links**

Follow the below check-list to ensure you're all set up to use the above service:

1. Create an account
2. Upgrade your account by submitting the required documentations
3. Have your upgrade request approved
4. Set up your receiving bank account information (note: ensure that the receiving bank account information is accurate as it cannot be changed via OY! dashboard for security reasons)
5. Once your account is approved, you can start creating Payment Link transactions

**For API-generated links**

1. Create an account
2. Upgrade your account by submitting the required documentations
3. Have your upgrade request approved
4. Set up your receiving bank account information (note: ensure that the receiving bank account information is accurate as it cannot be changed via OY! dashboard for security reasons)
5. Submit your IPs and callback URLs to your business representative or to partner@oyindonesia.com
6. Receive an API Key from us (note: it is required for API authorization purpose)
7. Integrate with our Payment Link API (https://api-docs.oyindonesia.com/#api-create-payment-checkout)

### Testing

**Creating dashboard-generated test links**

One-time Link

1. Log on your OY! dashboard
2. Choose "Staging" environment
3. Click "Request Money" menu, and choose "Payment Link"
4. Choose "One Time"
5. Click "Create One-Time Payment Link"
6. Fill in the necessary details

One-time Payment Link consists of 3 parameter types: Transaction-related, Customer Detail, and General Payment Link Configuration.

| Parameter Type             | Parameter Name                                                                                                                                                                                 | Definition                                                                                                                                                                                                                                                                                                                                    |
| -------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transaction-related        | Amount                                                                                                                                                                                         | The payment amount that will be displayed in the payment link page                                                                                                                                                                                                                                                                            |
| Transaction-related        | Description                                                                                                                                                                                    | The description of the payment link. Usually this is used to describe the purpose of the payment link page                                                                                                                                                                                                                                    |
| Transaction-related        | Partner Transaction ID                                                                                                                                                                         | A unique transaction ID that you can assign to a transaction                                                                                                                                                                                                                                                                                  |
| Transaction-related        | Balance Destination.                                                                                                                                                                            | The balance destination of the fund received from the transaction. Options: 1) "My Balance" (When your users make a successful payment, the transaction will be recorded in your balance/account statement, 2) "My Child's Balance" (When your users make a successful payment, the transaction will be recorded in the selected child's balance/account statement. This field only appears when your account has at least one or more active Child.                                                                                                                                                                                                                       |
| Customer Detail            | Customer details that can be specified (optional): Customer Name, Phone Number, Email, and Notes. We will send the payment link to the specified email address (if email address is filled in) | Customer Name, Phone Number, Email, and Notes                                                                                                                                                                                                                                                                                                 |
| Payment Link Configuration | Amount Type                                                                                                                                                                                    | You can choose between Open Amount and Closed Amount. Open Amount = can accept payments of any amount, OR up to the specified amount (if amount is filled in). Closed Amount = only accept payments of the specified amount                                                                                                                   |
| Payment Link Configuration | Payment Method                                                                                                                                                                                 | The payment method that you can choose to enable/disable for your customers. The payment methods available are Bank Transfer (via Virtual Account), Cards (Credit Card/Debit Card), E-Wallet (ShopeePay, DANA, LinkAja, OVO), and QRIS                                                                                                        |
| Payment Link Configuration | Admin Fee Method                                                                                                                                                                               | You can choose between "Included in total amount" or "Excluded from total amount". "Included in total amount" means the admin fee will be deducted from the payment amount made by the customer. "Excluded from total amount" means the admin fee will be added to the customer's total payment (Total Amount = Specified Amount + Admin Fee) |
| Payment Link Configuration | Payment Link Expiration Date                                                                                                                                                                   | You can choose (specify the day(s) and/or hour(s)) of when the payment link will expire after it is created. For example, if you want the link to expire 1 day after it is created, fill 1 day 0 hour in the Payment Link Expiration Date field.                                                                                              |

Note: For Payment Link Configuration-related fields (Amount Type, Payment Method, Admin Fee Method, Payment Link Expiration Date), you can choose to save your selected configuration for the future transactions by ticking the "Use this configuration for future transaction(s) option. By saving it, you will no longer need to fill in the fields again the next time you create a payment link.

![Payment Link](images/create_payment_link_1.png)

![Payment Link](images/create_payment_link_2.png)

![Payment Link](images/create_payment_link_3.png)

Reusable Link

1. Log on your OY! dashboard
2. Choose "Staging" environment
3. Click "Request Money" menu, and choose "Payment Link"
4. Choose "Reusable"
5. Click "Create Reusable Link"
6. Fill in the necessary details

Reusable Payment Link consists of 2 parameter types: Transaction-related and General Payment Link Configuration.

| Parameter Type             | Parameter Name               | Definition                                                                                                                                                                                                                                                                                                                                                                                                      |
| -------------------------- | ---------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transaction-related        | Amount                       | The payment amount that will be displayed in the payment link page                                                                                                                                                                                                                                                                                                                                              |
| Transaction-related        | Description                  | The description of the payment link. Usually this is used to describe the purpose of the payment link page                                                                                                                                                                                                                                                                                                      |
| Transaction-related        | Partner Transaction ID       | A unique transaction ID that you can assign to a transaction                                                                                                                                                                                                                                                                                                                                                    |
| Transaction-related        | Balance Destination.                                                                                                                                                                            | The balance destination of the fund received from the transaction. Options: 1) "My Balance" (When your users make a successful payment, the transaction will be recorded in your balance/account statement, 2) "My Child's Balance" (When your users make a successful payment, the transaction will be recorded in the selected child's balance/account statement. This field only appears when your account has at least one or more active Child.                                                                                                                                                                                                                                                                                           |                      
| Payment Link Configuration | Amount Type                  | You can choose between Open Amount and Closed Amount. Open Amount = can accept payments of any amount, OR up to the specified amount (if amount is filled in). Closed Amount = only accept payments of the specified amount                                                                                                                                                                                     |
| Payment Link Configuration | Payment Method               | The payment method that you can choose to enable/disable for your customers. The payment methods available are Bank Transfer (via Virtual Account and Unique Code), Cards (Credit Card/Debit Card), E-Wallet (ShopeePay, DANA, LinkAja, OVO), and QRIS                                                                                                                                                                          |
| Payment Link Configuration | Admin Fee Method             | You can choose between "Included in total amount" or "Excluded from total amount". "Included in total amount" means the admin fee will be deducted from the payment amount made by the customer. "Excluded from total amount" means the admin fee will be added to the customer's total payment (Total Amount = Specified Amount + Admin Fee)                                                                   |
| Payment Link Configuration | Payment Link Expiration Date | You can choose (specify the day(s) and/or hour(s)) of when the payment link will expire after it is created. You can choose between "Custom" (where you can specify the expiration time as you wish) and "Lifetime" (where a link will last for a lifetime and have no expiration time). If you want the link to expire 1 day after it is created, fill 1 day 0 hour in the Payment Link Expiration Date field. |

Note: For Payment Link Configuration-related fields (Amount Type, Payment Method, Admin Fee Method, Payment Link Expiration Date), you can choose to save your selected configuration for the future transactions by ticking the "Use this configuration for future transaction(s) option. By saving it, you will no longer need to fill in the fields again the next time you create a payment link.

**Creating API-generated test links**

1. Create an account
2. Send a request to activate API Payment Link product and obtain staging API Key to your business representative
3. Create a payment link by sending a ‘POST’ request to https://api-stg.oyindonesia.com/api/payment-checkout/create-v2. Enter the required and optional fields, as referenced in the [API reference docs](https://api-docs.oyindonesia.com/#api-create-payment-checkout)

Note: The link generated via API will always be a one-time link.

**Accessing and monitoring the created test payment links**

Whether you create the link through dashboard or API, you can see the details of your link on the OY! Dashboard. The details that can be checked are the created date of the link, amount billed, amount received, expiration date, and status.

**Mock Amount Values for Testing**

During testing, you can set the transaction amount to a certain mock value to simulate a specific scenario.

| Payment Method       | Scenario                                                                                                                                                                 | Criteria                                          | Expected Result   |
| -------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------- | ----------------- |
| E-Wallet - ShopeePay | Payment already successful on E-Wallet issuer side but failed on OY side (can be due to callback timeout reasons). The transaction is refunded to the end-user's balance | Amount is between 55,000 and 66,000               | Refund Successful |
| QRIS                 | Payment already successful on E-Wallet issuer side but failed on OY side (can be due to callback timeout reasons). The transaction is refunded to the end-user's balance | Amount is between 55,000 and 66,000               | Refund Successful |
| E-Wallet - LinkAja   | Payment already successful on E-Wallet issuer side but failed on OY side (can be due to callback timeout reasons). The transaction is refunded to the end-user's balance | Amount is between 55,000 and 66,000               | Refund Successful |
| E-Wallet - ShopeePay | Failure during refund process                                                                                                                                            | Amount is less than 55,000 or greater than 66,000 | Refund Failed     |
| QRIS                 | Failure during refund process                                                                                                                                            | Amount is less than 55,000 or greater than 66,000 | Refund Failed     |
| E-Wallet - LinkAja   | Failure during refund process                                                                                                                                            | Amount is less than 55,000 or greater than 66,000 | Refund Failed     |


**Mock Credentials for Testing**

Specifically for payment via Credit Card or Debit Card, you may use the below credentials to simulate an end-to-end payment joruney for a successful transaction in staging environment

| Card Details          | Values                     |
| ----------------------| ---------------------------|
|Card Number            | 2223000000000007           |
|Card Expired Month/Year| 01/39                      |
|Card CVN               | 100                        |
|Card Holder Name       | Testing                    |


**Simulate Credit Card / Debit Card Transaction Callback for Testing**
As an alternative to the above, if you would like to simulate the callback for Credit Card or Debit Card transaction, but not necessarily the end-to-end payment journey, you may manually send callback by following these steps: 

1. Log in to your OY! Dashboard 
2. Select Environment: Demo in the top left corner 
3. Make sure to have inputted your staging callback URL on Settings: 'Developer Options' (tab: Callback Configuration - Payment Link)
4. Create a payment link in Demo environment
5. Click on the link and proceed with Credit Card or Debit Card as your payment method 
6. Copy the Reference Number of the transaction - it should be available under "Transaction Details" 
7. Return to OY! Dashboard and click on the Settings: 'CC-DC Callback" 
8. Paste the Reference Number of the transaction and choose whether you would like to simulate a callback for successful transaction or a failed transaction 
8. Click "Send Callback". OY! will only send callback for a successful transaction whether in staging environment or production environment 


### How to Use Payment Link via Dashboard

One-time Link

1. Log on your OY! dashboard
2. Choose "Staging" environment
3. Click "Request Money" menu, and choose "Payment Link"
4. Choose "One Time"
5. Click "Create One-Time Link"
6. Fill in the necessary details

One-time Payment Link consists of 3 parameter types: Transaction-related, Customer Detail, and General Payment Link Configuration.

| Parameter Type             | Parameter Name                                                                                                                                                                                 | Definition                                                                                                                                                                                                                                                                                                                                                                                                        |
| -------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transaction-related        | Amount                                                                                                                                                                                         | The payment amount that will be displayed in the payment link page                                                                                                                                                                                                                                                                                                                                                |
| Transaction-related        | Description                                                                                                                                                                                    | The description of the payment link. Usually this is used to describe the purpose of the payment link page                                                                                                                                                                                                                                                                                                        |
| Transaction-related        | Partner Transaction ID                                                                                                                                                                         | A unique transaction ID that you can assign to a transaction                                                                                                                                                                                                                                                                                                                                                      |
| Transaction-related        | Balance Destination.                                                                                                                                                                            | The balance destination of the fund received from the transaction. Options: 1) "My Balance" (When your users make a successful payment, the transaction will be recorded in your balance/account statement, 2) "My Child's Balance" (When your users make a successful payment, the transaction will be recorded in the selected child's balance/account statement. This field only appears when your account has at least one or more active Child.                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| Customer Detail            | Customer details that can be specified (optional): Customer Name, Phone Number, Email, and Notes. We will send the payment link to the specified email address (if email address is filled in) | Customer Name, Phone Number, Email, and Notes                                                                                                                                                                                                                                                                                                                                                                     |
| Payment Link Configuration | Amount Type                                                                                                                                                                                    | You can choose between Open Amount and Closed Amount. Open Amount = can accept payments of any amount, OR up to the specified amount (if amount is filled in). Closed Amount = only accept payments of the specified amount                                                                                                                                                                                       |
| Payment Link Configuration | Payment Method                                                                                                                                                                                 | The payment method that you can choose to enable/disable for your customers. The payment methods available are Bank Transfer (via Virtual Account and Unique Code), Cards (Credit Card/Debit Card), E-Wallet (ShopeePay, DANA, LinkAja, OVO), and QRIS                                                                                                                                                                            |
| Payment Link Configuration | Admin Fee Method                                                                                                                                                                               | You can choose between "Included in total amount" or "Excluded from total amount". "Included in total amount" means the admin fee will be deducted from the payment amount made by the customer. "Excluded from total amount" means the admin fee will be added to the customer's total payment (Total Amount = Specified Amount + Admin Fee)                                                                     |
| Payment Link Configuration | Payment Link Expiration Date                                                                                                                                                                   | You can choose (specify the day(s) and/or hour(s)) of when the payment link will expire after it is created. You can choose between "Custom" (where you can specify the expiration time as you wish) and "Lifetime" (where a link will last for a lifetime and have no expiration time). If you want the link to expire 1 day after it is created, fill 1 day 0 hour in the Payment Link Expiration Date field. . |

Note: For Payment Link Configuration-related fields (Amount Type, Payment Method, Admin Fee Method, Payment Link Expiration Date), you can choose to save your selected configuration for the future transactions by ticking the "Use this configuration for future transaction(s) option. By saving it, you will no longer need to fill in the fields again the next time you create a payment link.

![Payment Link](images/create_payment_link_4.png)

![Payment Link](images/create_payment_link_5.png)

![Payment Link](images/create_payment_link_6.png)

Reusable Link

1. Log on your OY! dashboard
2. Choose "Staging" environment
3. Click "Request Money" menu, and choose "Payment Link"
4. Choose "Reusable"
5. Click "Create Reusable Link"
6. Fill in the necessary details

Reusable Payment Link consists of 2 parameter types: Transaction-related and General Payment Link Configuration.

| Parameter Type             | Parameter Name               | Definition                                                                                                                                                                                                                                                                                                                                    |
| -------------------------- | ---------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transaction-related        | Amount                       | The payment amount that will be displayed in the payment link page                                                                                                                                                                                                                                                                            |
| Transaction-related        | Description                  | The description of the payment link. Usually this is used to describe the purpose of the payment link page                                                                                                                                                                                                                                    |
| Transaction-related        | Partner Transaction ID       | A unique transaction ID that you can assign to a transaction                                                                                                                                                                                                                                                                                  |
| Transaction-related        | Balance Destination.                                                                                                                                                                            | The balance destination of the fund received from the transaction. Options: 1) "My Balance" (When your users make a successful payment, the transaction will be recorded in your balance/account statement, 2) "My Child's Balance" (When your users make a successful payment, the transaction will be recorded in the selected child's balance/account statement. This field only appears when your account has at least one or more active Child.                                                                                                                                                                                                                       |         
| Payment Link Configuration | Amount Type                  | You can choose between Open Amount and Closed Amount. Open Amount = can accept payments of any amount, OR up to the specified amount (if amount is filled in). Closed Amount = only accept payments of the specified amount                                                                                                                   |
| Payment Link Configuration | Payment Method               | The payment method that you can choose to enable/disable for your customers. The payment methods available are Bank Transfer (via Virtual Account and Unique Code), Cards (Credit Card/Debit Card), E-Wallet (ShopeePay, DANA, LinkAja, OVO), and QRIS                                                                                                        |
| Payment Linkfiguration     | Admin Fee Method             | You can choose between "Included in total amount" or "Excluded from total amount". "Included in total amount" means the admin fee will be deducted from the payment amount made by the customer. "Excluded from total amount" means the admin fee will be added to the customer's total payment (Total Amount = Specified Amount + Admin Fee) |
| Payment Link Configuration | Payment Link Expiration Date | You can choose (specify the day(s) and/or hour(s)) of when the payment link will expire after it is created. For example, if you want the link to expire 1 day after it is created, fill 1 day 0 hour in the Payment Link Expiration Date field.                                                                                              |

Note: For Payment Link Configuration-related fields (Amount Type, Payment Method, Admin Fee Method, Payment Link Expiration Date), you can choose to save your selected configuration for the future transactions by ticking the "Use this configuration for future transaction(s) option. By saving it, you will no longer need to fill in the fields again the next time you create a payment link.

![Payment Link](images/create_reusable_1.png)

![Payment Link](images/create_reusable_2.png)

![Payment Link](images/create_reusable_3.png)

### Monitoring the payment link transactions

One-time Link

All of the created links can be monitored through your dashboard (Payment Link List).

The transaction details that you can see are;

| Column Name           | Definition                                                                                                                                                         |
| --------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Date & Time Created   | The creation timestamp of a child transaction. The timestamp of a user selecting a payment method                                                                  |
| Last Update           | The last update timestamp of a child reusable link. This usually denotes the timestamp of a status change for a child link.                                        |
| Partner Tx ID         | The partner tx ID of a reusable link you just created                                                                                                              |
| Balance Destination   | The destination of the fund received from a transaction. Options: 1) "My Balance" (When your users make a successful payment, the transaction will be recorded in your balance/account statement, 2) "My Child's Balance" (When your users make a successful payment, the transaction will be recorded in the selected child's balance/account statement. This field only appears when your account has at least one or more active Child.                                                  |
| Child Username        | The username of the child (this will only be filled in when Balance Destination = "Child's Balance"                                                                |
| Amount Billed         | The amount billed for that particular transaction                                                                                                                  |
| Admin Fee             | The admin fee charged for that particular transaction                                                                                                              |
| Amount Received       | The amount received / the amount of payment made by the user. This will only be filled in if the user has completed the payment.                                   |
| Payment method used   | The payment method that your user uses to pay the transaction. This will only be filled in if the user has completed the payment                                   |
| Transaction Due Date  | The due date of a transaction.                                                                                                                                     |
| Days Past Due         | How many days a link has gone past the transaction due date. For example, if today’s date is 1 Dec and transaction due date is 30 Nov, the days past due will be 1 |
| Customer Name         | The name of your user/customer                                                                                                                                     |
| Customer Phone Number | The phone number of your user/customer                                                                                                                             |
| Customer Notes        | The transaction notes written by your user/customer                                                                                                                |
| Status                | The transaction status. Possible values are WAITING PAYMENT, FAILED, CHARGE IN PROGRESS, EXPIRED, AND COMPLETE                                                     |

![Payment Link](images/one_time_link_list.png)

Reusable Link

After you successfully create a reusable link, it will become a "Parent" link. The Parent link will appear in the "Created Reusable Link" tab. There, you will see the details of a reusable link you just created.

| Column Name                  | Definition                                                                                                                                                                                                                                                                                                      |
| ---------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Last Update                  | The last update timestamp of a parent reusable link. This usually denotes the timestamp of a status change for a parent link.                                                                                                                                                                                   |
| Partner Tx ID                | The partner tx ID of a reusable link you just created                                                                                                                                                                                                                                                           |
| Balance Destination           | The destination of the fund received from a transaction. Options: 1) "My Balance" (When your users make a successful payment, the transaction will be recorded in your balance/account statement, 2) "My Child's Balance" (When your users make a successful payment, the transaction will be recorded in the selected child's balance/account statement. This field only appears when your account has at least one or more active Child.                                                  |
| Child Username        | The username of the child (this will only be filled in when Balance Destination = "Child's Balance"                                                                |
| Amount Billed                | The billed amount per individual transaction (not a cumulative amount). For example, if the amount is set at Rp 10,000 for a reusable parent link, the amount billed will be filled in with Rp 10,000                                                                                                           |
| Admin Fee                    | The cumulative admin fee received for a particular parent reusable link. If a parent reusable link has peen paid twice, with admin fee Rp 500 each, the admin fee will be filled in with Rp 500 x 2 = Rp 1,000                                                                                                  |
| Amount Received              | The cumulative admin fee received for a particular parent reusable link. If a parent reusable link has peen paid twice, with admin fee Rp 500 each, the admin fee will be filled in with Rp 500 x 2 = Rp 1,000                                                                                                  |
| Count of Complete Tx         | The count of completed transactions under a parent reusable link                                                                                                                                                                                                                                                |
| Payment link expiration date | The date after which a parent reusable link can no longer receive a transaction.                                                                                                                                                                                                                                |
| Status                       | The status of a parent reusable link. Possible status: OPEN FOR PAYMENT (means the link can still receive payments) and EXPIRED (status will be changed to EXPIRED when the payment link has exceeded the expiration date). When status is set as EXPIRED, the payment link can no longer receive a transaction |
| Action                       | The possible actions that you can take on a link: Copy URL, Visit URL, Delete, and Resend Callback                                                                                                                                                                                                              |

![Payment Link](images/reusable_link_parent.png)

When you click the hyperlink in the Partner Tx ID, you will be redirected to a page where you can see the transaction details corresponding to that Parent Reusable Link.

![Payment Link](images/reusable_link_parent_details.png)

The transaction list displayed is the transaction that is linked to a Parent Reusable Link

The transaction details that you can see are;

| Column Name           | Definition                                                                                                                                                         |
| --------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Date & Time Created   | The creation timestamp of a child transaction. The timestamp of a user selecting a payment method                                                                  |
| Last Update           | The last update timestamp of a child reusable link. This usually denotes the timestamp of a status change for a child link.                                        |
| Partner Tx ID         | The partner tx ID of a reusable link you just created                                                                                                              |
| Balance Destination   | The destination of the fund received from a transaction. Options: 1) "My Balance" (When your users make a successful payment, the transaction will be recorded in your balance/account statement, 2) "My Child's Balance" (When your users make a successful payment, the transaction will be recorded in the selected child's balance/account statement. This field only appears when your account has at least one or more active Child.                                                  |
| Child Username        | The username of the child (this will only be filled in when Balance Destination = "Child's Balance"                                                                |
| Amount Billed         | The amount billed for that particular transaction                                                                                                                  |
| Admin Fee             | The admin fee charged for that particular transaction                                                                                                              |
| Amount Received       | The amount received / the amount of payment made by the user. This will only be filled in if the user has completed the payment.                                   |
| Payment method used   | The payment method that your user uses to pay the transaction. This will only be filled in if the user has completed the payment                                   |
| Transaction Due Date  | The due date of a transaction.                                                                                                                                     |
| Days Past Due         | How many days a link has gone past the transaction due date. For example, if today’s date is 1 Dec and transaction due date is 30 Nov, the days past due will be 1 |
| Customer Name         | The name of your user/customer                                                                                                                                     |
| Customer Phone Number | The phone number of your user/customer                                                                                                                             |
| Customer Notes        | The transaction notes written by your user/customer                                                                                                                |
| Status                | The transaction status. Possible values are WAITING PAYMENT, FAILED, CHARGE IN PROGRESS, EXPIRED, AND COMPLETE                                                     |
| Action                | The possible actions that you can take on a link: Copy URL, Visit URL, Delete, and Resend Callback                                                                 |

When your user has opened the parent reusable link and selected a payment method, it will become a "child reusable link" and generate a child transaction ID. The child transaction ID will appear in the "List of All Transactions" tab

The details that you can see are;

| Column Name           | Definition                                                                                                                       |
| --------------------- | -------------------------------------------------------------------------------------------------------------------------------- |
| Date & Time Created   | The creation timestamp of a child transaction. The timestamp of a user selecting a payment method                                |
| Last Update           | The last update timestamp of a child reusable link. This usually denotes the timestamp of a status change for a child link.      |
| Partner Tx ID         | The partner tx ID of a reusable link you just created                                                                            |
| Balance Destination   | The destination of the fund received from a transaction. Options: 1) "My Balance" (When your users make a successful payment, the transaction will be recorded in your balance/account statement, 2) "My Child's Balance" (When your users make a successful payment, the transaction will be recorded in the selected child's balance/account statement. This field only appears when your account has at least one or more active Child.               |
| Child Username        | The username of the child (this will only be filled in when Balance Destination = "Child's Balance"                              |
| Amount Billed         | The amount billed for that particular transaction                                                                                |
| Admin Fee             | The admin fee charged for that particular transaction                                                                            |
| Amount Received       | The amount received / the amount of payment made by the user. This will only be filled in if the user has completed the payment. |
| Payment method used   | The payment method that your user uses to pay the transaction. This will only be filled in if the user has completed the payment |
| Customer Name         | The name of your user/customer                                                                                                   |
| Customer Phone Number | The phone number of your user/customer                                                                                           |
| Customer Notes        | The transaction notes written by your user/customer                                                                              |
| Status                | The transaction status. Possible values are WAITING PAYMENT, FAILED, CHARGE IN PROGRESS, EXPIRED, AND COMPLETE                   |
| Action                | The possible actions that you can take on a link: Copy URL, Visit URL, Delete, and Resend Callback                               |

![Payment Link](images/reusable_link_child.png)


### How to Use Invoice/Account Receivable via Dashboard


1. Log on your OY! dashboard
2. Choose "Production" environment
3. Click "Create Invoice" under Account Receivable menu
4. Click "Create New Invoice"
5. Fill in the necessary details


| Parameter                    | Description                                                                                                                                                                                                                                                                                                                                                          |
| ---------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Invoice Number               | The number of the invoice to be created                                                                                                                                         |
| Invoice Date      | The date of the invoice                                                                                                                                                                                                                                                                                                       |
| Due Date               |  Due date of a transaction. You can choose between 7, 14, 30, 45, or 60 days after created date of the invoice OR you can also input a specific/custom date. Your customer will get reminders to pay on D-1, D-Day, and D+7 from the transaction due date.                                                                                                               
| Link Expiry Datetime          |  You can now set your link expiry date and time for your conveniences. The expiry time selected will also appear on PDF documents. |
| Customer           | The name of the customer that the invoice is addressed to. You can choose the name of the customer from the dropdown. To create a new customer, follow the instruction [here](https://docs.oyindonesia.com/#creating-a-customer-for-account-receivable-invoice-payment-links-invoice).  |
| Product Description| The name and/or description of the product                                                                                                                 |
| Quantity        | The quantity of the product   |
| Unit price            | Unit price of the product                                                                                                                                                                                                                                                                                                                             |
| Amount          | Total amount for the product |
| Notes       | The note to be displayed in the automatically generated invoice file                                                                                                                                                                                                                                                                                          |
| Additional Documents             | The supporting documents that will be attached in the email along with the invoice. Accept PDF & Excel files. Maximum of 4 documents (maximum 5MB each).                                                                                                     |
| Invoice Payment             | You can choose between "Payment Link" (the invoice will be embedded with a payment link that the customer can use to make a payment on) or "Invoice Only" (the invoice will not be embedded with a payment link). For "Invoice Only", invoice status can be adjusted at any time for record purposes.                                                                                                                                                                                                            |
| Payment Method               | The payment method that you can choose to enable/disable for your customers. The payment methods available are Bank Transfer (via Virtual Account and Unique Code), Cards (Credit Card/Debit Card), E-Wallet (ShopeePay, DANA, LinkAja, OVO), and QR Code                                                                                                                            |
| Admin Fee Method             | You can choose between "Included in total amount" or "Excluded from total amount". "Included in total amount" means the admin fee will be deducted from the payment amount made by the customer. "Excluded from total amount" means the admin fee will be added to the customer's total payment (Total Amount = Specified Amount + Admin Fee)                        |




* Create Invoice form with flexible Payment Link Expiry Time
![Invoice](images/accountReceivable/AR_expiry_datetime.png)


* Invoice details inside dashboard.
![Invoice](images/accountReceivable/invoice_detail.jpg)


* Invoice preview inside dashboard
![Invoice](images/accountReceivable/detailpdf.jpg)




### Monitoring the invoices/account receivable


All of the created invoices (via API or Dashboard) can be monitored through your dashboard (Invoice List).


![Invoice](images/accountReceivable/filter.jpg)


The transaction details that you can see are:


| Column Name           | Definition                                                                                                                                                         |
| --------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Invoice Number  | The number of the invoice created                                                                  |
| Customer Name          | The name of the customer whom the invoice belongs to                                        |
| Amount Billed         | The amount billed for that particular transaction                                                                                                                  |
| Admin Fee             | The admin fee charged for that particular transaction                                                                                                              |
| Amount Received       | The amount received / the amount of payment made by the user. This will only be filled in after the user has completed the payment.                                   |
| Invoice Date  | The date of the invoice.                                                                                                                                                        |
| Payment Date        | The date of payment (if the invoice has been successfully paid by the customer) |
| Due Date      | The invoice due date                                                                                                                           |
| Days Past Due | How many days an invoice has gone unpaid past the due date. For example, if due date is 1 July and the invoice is not paid by 4 July, then Days Past Due will be filled in with 3 |
| Payment Link Expiry | Maximum date and time that a payment link can stay valid for before expiring permanently |                                                                                                       
| Status                | The transaction status. Possible values are CREATED, PAID, CANCELLED, and OVERDUE                                                  |


In terms of status, below are the status mapping between API Invoice and status in dashboard


| API Invoice Status         | Dashboard status                                                                                                                                                        |
| --------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| CREATED, WAITING PAYMENT, FAILED  | UNPAID                                                             |
| COMPLETE | PAID                                                           |
| EXPIRED  | CANCELLED                                                          |
| OVERDUE | Late Payment Tab |




There are several actions that you can take for the created invoice:

|Action | Definition |
| ---------| -----------|
| Send invoice | To send the invoice to the customer's defined email |
| Download invoice | To download the PDF file of the invoice |
| Delete | To delete the invoice. Only invoice with status CREATED can be deleted |




### Creating a Customer for Account Receivable/Invoice


There are 2 ways to create a Customer:


Option 1: Through "Create Invoice" menu


![Invoice](images/add_new_customer.png)


1. Click dropdown of the "Customer"
2. Click "Add new customer"
3. Fill in Customer ID, Customer Name (mandatory), PIC Name, Customer Phone Number, Tax Type (mandatory), Customer Email, Address.
4. Click save


For Tax Type, the explanation is as follows:


| Tax Type         | Definition                                                                                                                                                         |
| --------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| No tax           | Tax will not be added to the subtotal  |                                                                                         | PPN 11% Exclusive| PPN 11% of the subtotal will be added upon the subtotal of the invoice. For example is subtotal is 10,000, then the PPN will be 11% of the 10,000 = 1,100                                     |
| PPN 10% Inclusive | Tax will not be added upon the subtotal because the subtotal is assumed to be tax inclusive. 10% is applicable for older than April 2022 transaction |
|PPN 10% Exclusive| Tax will be added separately to the subtotal. 10% is applicable for older than April 2022 transaction
|PPN 11% Inclusive |  Tax will not be added upon the subtotal because the subtotal is assumed to be tax inclusive
|PPN 11% Exclusive| Tax will be added separately to the subtotal.|
|PPh23 Non NPWP 4%| Tax will be substracted from the subtotal|
|PPh 23 NPWP 2% |Tax will be substracted from the subtotal |


Option 2: Through "Customer Management" menu


![Invoice](images/accountReceivable/AR_customer.png)


![Invoice](images/accountReceivable/AR_new_customer.png)




1. Click "Customer Management" sidebar under the "Receive Money" menu
2. Click "Add new customer"
3. Fill in Customer ID, Customer Name (mandatory), PIC Name, Customer Phone Number, Tax Type (mandatory), Customer Email, Address.
4. Click "Save"


![Invoice](images/accountReceivable/AR_new_customer.png)


All of the created customer can be monitored through your dashboard (Customer List). There are several actions that you take for the customer data:


1. Edit --> To edit the data of the customer


1. Activate/Deactivate --> To deactivate / reactivate the customer


If you click on the row you selected, you will be able to see the detailed data of the customer, including the list of invoices belonging to that customer.




![Invoice](images/accountReceivable/customermanagement.png)






### Amount Customization for Account Receivable/Invoice


OY! has a feature that allows you to add the price of the subtotal (addition) and/or deduct the price from subtotal. The step is as follows:


![Invoice](images/add_column_amount_customization.png)




1. Click "add column" below the subtotal
2. Choose "addition" or "substraction" from the dropdown
3. Fill in the description
4. Fill in the amount


![Invoice](images/accountReceivable/AR_kolom.png)


### How to Use Payment Link/Invoice via API

OY! provides 3 different payment link endpoints depending on your requirements and needs. We provide payment link, invoicing, and recurring invoice.

Send us instructions to generate a [payment link](https://api-docs.oyindonesia.com/#api-create-payment-checkout).

> Below is an example of a request body to execute your request:

```shell
curl -X POST \
  https://partner.oyindonesia.com/api/payment-checkout/create-v2 \-H 'cache-control: no-cache' -H 'content-type: application/json' \-H 'X-Api-Key: apikeymu' -H 'X-Oy-Username: yourusername' \-d '{
        "partner_tx_id":"partnerTxId",
        "description":"description",
        "notes":"notes",
        "sender_name":"Sender name",
        "amount":50000,
        "email":"",
        "phone_number":"",
        "is_open":false,
        "step":"input-amount",
        "include_admin_fee":false,
        "list_disabled_payment_methods":"",
        "list_enabled_banks":"",
        "expiration":"2020-08-08 08:09:12"
    }'
```

> Below is the sample response parameters that will be returned:

```json
{
  "success": true,
  "url": "https://pay.oyindonesia.com/id",
  "message": "success",
  "email_status": "PROCESSED",
  "payment_link_id": "id"
}
```

>

Send us instructions to generate a [payment link invoice link](https://api-docs.oyindonesia.com/#api-create-invoicing).

> Below is an example of a request body to execute your request:

```shell
url -X POST \
  https://partner.oyindonesia.com/api/payment-checkout/create-invoice\-H 'cache-control: no-cache' -H 'content-type: application/json' \-H 'X-Api-key: apikeymu' -H 'X-Oy-Username: yourusername' \-d '{
        "partner_tx_id":"partner tx id",
        "description":"desc invoice",
        "notes":"notes satu",
        "sender_name":"Sender Name API",
        "amount":"30000",
        "email":"",
        "phone_number":"",
        "is_open":"true",
        "step":"input-amount",
        "include_admin_fee":false,
        "list_disabled_payment_methods":"",
        "list_enabled_banks":"013",
        "expiration":"2020-07-28 19:15:13",
        "partner_user_id":"partner user id",
          "full_name" : "Raymond",
          "is_va_lifetime": false,
        "attachment": "JVBERi0xLjQKJeLjz9MKMyAwIG9iago8PC9GaWx0ZXIvRmxhdGVEZWNvZGUvTGVuZ3RoIDQ5Nj4+c3RyZWFtCnicrZVdb9MwFIbv/SsOd51EwrHjz0tKhxQk2IciJMS4CG46lbVNyYcE/HqcbNloh5xO8U3OUXJ8Hr/2aweBQkQBQRjhnnZLfpJ5RhIJQhjIluQ8I1eEwYfubVeHMFRnW/LmPQWKkK3I7Cz70dU+lfTN/hnE3ChJY9SPA0U3EPvP1S2ZXXx5Bemnzxfpu/OuGcLtfxp+/ebisp+QH8VkrNjhHJ9QaV23xRKyciKIGuCGjYPmv6cq0idKWuRNEYDlV7VoixAgwcdEXeZVsysqyH5BughA88t6uy3bXQNO3XRbCEq9pKr8sw5gPuXT8zGv7/JNCOeh9mAYMoxQRcyEMJ5KRlEmokkI63lVrSgqi8JEWlsV8ZURkRFMR1pILkVuZcJYCEd69V7vY3eZxYj4GvEkGsaMK5SAMTcauYsKje6aObskUsGWaKr7bPOYHUd7/8XIocZlx9H2DfuSh+Qw2AG4GZLDYMlqmLfHEQIS/XyBaOf++5uoqG213jfrcjfVfAYdi/tY0288noxBrpqpvwoh1AjjslrbqUo6j/kpWdnkG7iZpYvrm7MQmyOe045vBhkhDbFFI6gTz6Jvj9zqCd+frz/5MRMvOvyeBUxGRM3bvIHvRZXvmryGu7Jq901ZhTDJqEweC+xlvkTqX6+ILeYKZW5kc3RyZWFtCmVuZG9iagoxIDAgb2JqCjw8L1RhYnMvUy9Hcm91cDw8L1MvVHJhbnNwYXJlbmN5L1R5cGUvR3JvdXAvQ1MvRGV2aWNlUkdCPj4vQ29udGVudHMgMyAwIFIvVHlwZS9QYWdlL1Jlc291cmNlczw8L0NvbG9yU3BhY2U8PC9DUy9EZXZpY2VSR0I+Pi9Qcm9jU2V0IFsvUERGIC9UZXh0IC9JbWFnZUIgL0ltYWdlQyAvSW1hZ2VJXS9Gb250PDwvRjEgMiAwIFI+Pj4+L1BhcmVudCA0IDAgUi9Sb3RhdGUgOTAvTWVkaWFCb3hbMCAwIDU5NSA4NDJdPj4KZW5kb2JqCjUgMCBvYmoKWzEgMCBSL1hZWiAwIDYwNSAwXQplbmRvYmoKMiAwIG9iago8PC9TdWJ0eXBlL1R5cGUxL1R5cGUvRm9udC9CYXNlRm9udC9IZWx2ZXRpY2EvRW5jb2RpbmcvV2luQW5zaUVuY29kaW5nPj4KZW5kb2JqCjQgMCBvYmoKPDwvS2lkc1sxIDAgUl0vVHlwZS9QYWdlcy9Db3VudCAxL0lUWFQoMi4xLjcpPj4KZW5kb2JqCjYgMCBvYmoKPDwvTmFtZXNbKEpSX1BBR0VfQU5DSE9SXzBfMSkgNSAwIFJdPj4KZW5kb2JqCjcgMCBvYmoKPDwvRGVzdHMgNiAwIFI+PgplbmRvYmoKOCAwIG9iago8PC9OYW1lcyA3IDAgUi9UeXBlL0NhdGFsb2cvUGFnZXMgNCAwIFIvVmlld2VyUHJlZmVyZW5jZXM8PC9QcmludFNjYWxpbmcvQXBwRGVmYXVsdD4+Pj4KZW5kb2JqCjkgMCBvYmoKPDwvTW9kRGF0ZShEOjIwMjAwNzI5MTE1MzE1WikvQ3JlYXRvcihKYXNwZXJSZXBvcnRzIExpYnJhcnkgdmVyc2lvbiBudWxsKS9DcmVhdGlvbkRhdGUoRDoyMDIwMDcyOTExNTMxNVopL1Byb2R1Y2VyKGlUZXh0IDIuMS43IGJ5IDFUM1hUKT4+CmVuZG9iagp4cmVmCjAgMTAKMDAwMDAwMDAwMCA2NTUzNSBmIAowMDAwMDAwNTc4IDAwMDAwIG4gCjAwMDAwMDA4NjQgMDAwMDAgbiAKMDAwMDAwMDAxNSAwMDAwMCBuIAowMDAwMDAwOTUyIDAwMDAwIG4gCjAwMDAwMDA4MjkgMDAwMDAgbiAKMDAwMDAwMTAxNSAwMDAwMCBuIAowMDAwMDAxMDY5IDAwMDAwIG4gCjAwMDAwMDExMDEgMDAwMDAgbiAKMDAwMDAwMTIwNCAwMDAwMCBuIAp0cmFpbGVyCjw8L0luZm8gOSAwIFIvSUQgWzwzZWMyMWUyNjkwNjcxYzViYTliNjUxODNhY2IxOTM3ND48NzZhNzM1MWE1YmY4ZmMxNDNmY2NlZmUwYjRjMzA4MWI+XS9Sb290IDggMCBSL1NpemUgMTA+PgpzdGFydHhyZWYKMTM1OAolJUVPRgo=",
          "invoice_items": [
          {
            "item":"item name",
            "description":"description",
            "quantity": 10,
            "date_of_purchase":"2020-09-20",
            "price_per_item": 33000
          }
        ],
          "attachment": "string base 64 pdf"
    }'
```

> Below is the sample of response parameters that will be returned:

```json
{
  "success": true,
  "url": "https://pay.oyindonesia.com/invoice/id",
  "message": "success",
  "email_status": "PROCESSED",
  "payment_link_id": "id"
}
```

>

Send us instructions to generate a [recurring payment link invoice link](https://api-docs.oyindonesia.com/#api-create-recurring-invoice-coming-soon).

> Below is an example of a request body to execute your request: coming soon

An endpoint to retrieve and/or re-send the latest [callback status](https://api-docs.oyindonesia.com/#api-payment-status) of a transaction is also available and can be accessed at anytime.

> Below is an example of a request body to execute your request:

```shell
curl -X GET 'https://partner.oyindonesia.com/api/payment-checkout/status?partner_tx_id=OY123456&send_callback=false' -H 'x-oy-username:yourusername' -H ' x-api-key:yourapikey'
```

> Below is the sample response parameters that will be returned:

```json
{
  "partner_tx_id": "partner000001",
  "tx_ref_number": "1234567",
  "amount": 15000,
  "sender_name": "Joko Widodo",
  "sender_phone": "+6281111111",
  "sender_note": "Mohon dikirim segera",
  "status": "success",
  "settlement_type": "realtime",
  "sender_bank": "008",
  "payment_method": "DC",
  "va_number": ""
}
```

>

An endpoint to check your [payment or invoice data](https://api-docs.oyindonesia.com/#api-get) is also available and can be accessed at anytime.

> Below is an example of a request body to execute your request:

```shell
curl -X GET \
  https://partner.oyindonesia.com/api/payment-checkout/{payment_link_id_or_partner_tx_id}\
  -H 'cache-control: no-cache' -H 'content-type: application/json' \
  -H 'X-Api-key: apikeymu' -H 'X-Oy-Username: yourusername'
```

> Below is the sample response parameters that will be returned:

```json
{
  "data": {
    "partnerTxId": "abc10",
    "paymentLinkId": "703e05c0-48e3-47bd-9c22-670941d4d5fe",
    "amount": 15000,
    "username": "justkhals",
    "senderName": "John Doe",
    "senderPhoneNumber": null,
    "senderNotes": null,
    "status": "CREATED",
    "txRefNumber": null,
    "description": "testdesc",
    "isOpen": true,
    "step": "input-amount",
    "notes": "testnote",
    "phoneNumber": "085248395555",
    "email": "maskalgrr@gmail.com",
    "includeAdminFee": false,
    "listDisabledPaymentMethods": "",
    "listEnabledBanks": "008",
    "expirationTime": "2020-08-12 00:00:00",
    "invoiceData": {
      "fullName": "John Dooe",
      "isVaLifetime": false,
      "isScheduled": false,
      "recurringStartDate": null,
      "recurringEndDate": null,
      "recurringFrequency": null,
      "invoiceItems": "[{\"item\": \"AK 47\", \"quantity\": 2000, \"description\": \"Untuk Kemanan Negara\", \"price_per_item\": 2250000, \"date_of_purchase\": 1590969600000}]"
    }
  },
  "message": "return payment checkout data",
  "status": true
}
```

>

Lastly, we provide an endpoint to [delete your payment or invoice link](https://api-docs.oyindonesia.com/#api-delete) based on `payment_link_id` or `partner_tx_id`. The payment or invoice link must still be active and a payment method must not have been selected.

> Below is an example of a request body to execute your request:

```shell
curl -X DELETE \
  https://partner.oyindonesia.com/api/payment-checkout/{payment_link_id_or_partner_tx_id}\
  -H 'cache-control: no-cache' -H 'content-type: application/json' \
  -H 'X-Api-key: apikeymu' -H 'X-Oy-Username: yourusername'
```

> Below is the sample of response parameters that will be returned:

```json
{
  "status": true,
  "message": "success delete payment checkout data"
}
```

>

Just like the Payment Link via Link, you can access all your payment links and its details from the OY! dashboard. This report will include all payment links generated both via Link and API.

![Payment Link](images/payment_checkout_list.png)

### Pop!: Seamless Payment Experience

With Pop!, displaying our payment link page on your front-end web environment is now made easier than ever. Our payment link offers a seamless user experience in a way that can be catered to your UI needs.

Click the button below to see a demonstration and a snippet code on how to display a payment link page in 4 styles/locations: Center, Right, Left, and Slide Right.

<a class="lottie" id="learn-more" href="https://api-docs.oyindonesia.com/#pop-seamless-payment-experience-fund-acceptance"></a>


### Customizing the UI of Payment Link & Account Receivable


In order to maintain a consistent brand experience for your users, you can customize the look and feel of your Payment Link & Account Receivable in the Dashboard, where you can do the following things;


- Upload a logo
- Choose the button color and the theme color of the payment link


The updated logo will be reflected in both products.


How to customize the UI via Payment Link or Account Receivable


- Log onto business.oyindonesia.com
- Go to Payment Link section in the dashboard
- Click the 'Settings" icon located at the top right of the page


![Payment Link](images/ui_customization_settings_icon.png)


![Account Receivable](images/accountReceivable/appearance_setting.png)


- You will be redirected to the Settings page


![Payment Link](images/ui_customization_settings_page.png)


- Input the URL for your logo (If you’re using [snipboard.io](https://snipboard.io/), the correct URL should be in “https://i.snipboard.io/image.jpg” format. If you’re using [imgbb.com](https://imgbb.com/), the correct URL should be in “https://i.ibb.co/abcdef/image.jpg” format)


- Select your primary color (you can select from our available color picker tools or you can input the 6 digit #HEX code). This primary color will be the main theme color in your payment link and the color of the text in the header


- Select your secondary color (you can select from our available color picker tools or you can input the 6 digit #HEX code). This secondary color will be the color of CTA button in your payment link and the color of the text outside the header


![Payment Link](images/ui_customization_color_logo.png)


- Click "Save Changes"


Note:


- By saving the changes, the colours will be applied to the payment links previously created (before saving) as well as the payment links created after saving and also account receivable PDF documents.
- Please create new payment link or Account Receivable invoice after you successfully save changes to check the difference.


Illustration;


If we pick green (#HEX code #067610) as the primary color and black (#HEX code #000000) as the secondary color, the look and feel will be as follows;


![Payment Link](images/3p1p_preview.png)


### Customizing Account Receivable Invoice Template and Color


For more personalized touch on the invoice, you can now customize your template look in the Dashboard, where you can do the following things;

- Change invoice logo
- Change Invoice template
- Change Invoice color


How to customize the Account Receivable Invoice UI:

1. Log onto business.oyindonesia.com
2. Go to Account Receivable section in the dashboard
3. Click the 'Settings" icon located at the top right next to “Create New Invoice” button
4. Click Open Configuration for “Invoice Template”
5. Input the URL of your logo. Changing the logo here will automatically update the logo in Payment Link, Invoice and Email Notifications.
6. Select your color theme (you can select from our available color picker tools or you can input the 6 digit #HEX code). This color will be the main theme color in your invoice.
7. Select your template from our template selections. Changes will be reflected immediately in the preview area
8. Click “Save”


![Account Receivable](images/accountReceivable/appearance_setting.png)


![Account Receivable](images/accountReceivable/Templatesettings.png)




### How to Set Automated Invoice Number


For your convenience, you have the option to auto-generate invoice numbers. No more worrying about the sequence of invoice numbers. The invoice number template has been pre-defined by OY!.


1. Log onto business.oyindonesia.com
2. Go to Payment Link or Account Receivable section in the dashboard
3. Click the 'Settings" icon located at the top right next to “Create New Invoice” button
4. Turn the toggle on. You can now adjust the automatic invoice number format
5. Click “Save” to continue


**This update will not impact your existing invoices**


![Account Receivable](images/accountReceivable/invoicenumber.png)



### Sending the Created Payment Link through WhatsApp 

For better payment conversion, you can send the created link to your users through WhatsApp. The message template is pre-defined by OY. Contact our Business Representative if you'd like to activate this feature.

The flow will be as follows:

![WhatsApp Flow](images/flow_whatsapp_notif.png)

Click [here](https://api-docs.oyindonesia.com/#https-request-send-payment-invoice-link-whatsapp-notification) for more information on API Send WhatsApp

### Sending Account Receivable Invoice with Payment Link through WhatsApp

For your convenience, you can now distribute invoice to your users through WhatsApp using default message template. Please kindly contact OY! team if you are interested in using this feature

There will be 3 different ways to distribute the invoice via Whatsapp and there is a maximum of one Whatsapp message per unpaid invoice. When the status is paid, users will get a payment confirmation from Whatsapp too.

* Option 1 - via invoice details
![WhatsApp Flow via detail](images/accountReceivable/AR_WA_Table.png)

* Option 2 - via new invoice creation
![WhatsApp Flow via new invoice](source/images/accountReceivable/AR_WA_Creation.png)

* Option 3 - via invoice table
![WhatsApp Flow via table](images/accountReceivable/AR_WA_Table.png)



### VA Bank Details

| Bank (Virtual Account) | Capability (Open Amount/Closed Amount)         |
| ---------------------- | ---------------------------------------------- | 
| BNI                    | Closed Amount                                  | 
| Bank Mandiri           | Open Amount, Closed Amount                     |                  
| BRI                    | Open Amount, Closed Amount                     | 
| BCA                    | Open Amount, Closed Amount                     | 
| Bank Permata / Permata Syariah| Open Amount, Closed Amount              |
| CIMB Niaga / CIMB Niaga Syariah | Open Amount, Closed Amount            | 
| BTPN                   | Open Amount, Closed Amount                     | 
| KEB Hana               | Open Amount, Closed Amount                     | 
| Maybank                | Open Amount, Closed Amount                     |
| Bank Danamon           | Open Amount, Closed Amount                     |
| Bank Syariah Indonesia (BSI)| Closed Amount                             | 



## API E-Wallet Aggregator 
E-Wallet API allows clients to charge and receive payments directly from top e-wallet providers. With one integration, they are able to get access to all of OY’s available e-wallets and the upcoming e-wallet integrations.
#### Flow
![Ewallet Aggregator Flow](images/acceptingPayments/ewalletAggregator/ewallet_aggregator_sequence.png)
### Features
#### Support multiple E-wallets
We currently support ShopeePay, LinkAja, DANA, and OVO for e-wallet transactions.

#### Monitor transactions via OY! Dashboard
All created e-wallet transactions are shown in OY! Dashboard. Navigate to “E-Wallet” to see the list of transactions. Inside the dashboard, you can see the details of the transactions, including all the transaction information inputted during creation, status of transactions, and the payment reference number. The dashboard also has a feature to search, filter, and export the list of transactions in various formats: Excel (.xlsx), PDF (.pdf), and CSV (.csv)

![Monitor E-wallet Aggregator Transaction](images/acceptingPayments/ewalletAggregator/ewallet_aggregator_monitoring_transactions.png)
#### Receipt for successful payments
Customers can receive receipt of successful payments via email(s) that you provided during the creation process. Configure sending receipt via emails to your customers by going through this steps:

1. Log in to your OY! Dashboard account
1. Go to “Settings” → “Notifications”
1. Click “Receive Money (To Sender)”
1. Choose “Enable Success Notification” for E-Wallet API
1. Input your logo to be put on the email in URL format (<https://example.com/image.jpg>) 
    - If you do not have the URL for your logo, you can use online tools like [snipboard.io](https://snipboard.io/) or [imgbb](https://imgbb.com/).
    - Once you convert your logo to URL, the correct URL should look like this:
      - Snipboard.io: <https://i.snipboard.io/image.jpg>
      - Ibbmg: <https://i.ibb.co/abcdef/image.jpg>
1. Save the changes by clicking “Save”
1. Create an E-Wallet transaction via API  and input the customer’s email address in the “email” parameter. 
1. Your customer will receive successful receipt to the emails once payment is made

![Receipt for successful Payment](images/acceptingPayments/ewalletAggregator/ewallet_aggregator_monitoring_transactions.png)

Note: If you do not put any of your customer’s email during transaction creation, OY! will not send any receipt via email even though you enabled the notification configuration
#### Retry notification/callback for successful payments
OY! will send a notification/callback to your system once a transaction is marked successful. Therefore, you will be notified if the customer has already completed the payment. There might be a case where your system does not receive the notification successfully. 

By enabling Retry Callback, OY will try to resend another callback to your system if your system does not receive the callback successfully. You can request to resend a callback using Manual Retry Callback or Automatic Retry Callback. 

##### Manual Retry Callback
Manual Retry Callback allows you to manually send callbacks for each transaction from OY! Dashboard. Here are the steps to do so:

1. Login to your account in OY! Dashboard
1. Navigate to “E-Wallet API ”
1. Search the record of the transaction and click 3 dots button under “Action” column
1. Make sure that you have set up your Callback URL via “Settings” → “Developer Option” → “Callback Configuration”
1. Make sure to whitelist OY’s IP to receive callbacks from OY 
   - 54.151.191.85
   - 54.179.86.72
1. Click “Resend Callback” to resend a callback and repeat as you need

![Manual Retry Callback](images/acceptingPayments/ewalletAggregator/ewallet_aggregator_manual_retry_callback.png)
##### Automatic Retry Callback
Automatic Retry Callback allows you to receive another callback within a certain interval if the previous callback that OY sent is not received successfully on your system. OY! will try to resend other callbacks up to 5 times. If your system still does not receive any callbacks after 5 retry attempts from OY, OY will notify you via email. You can input up to 6 email recipients and it is configurable via OY! Dashboard. 

Callback Interval: Realtime → 1 minute (after the initial attempt)→ 2 minutes (after the first retry attempt)→ 13 minutes (after the second retry attempt) → 47 mins (after the third retry attempt) 

OY! sends the first callback to your system once the transaction is successful on OY!’s side. If your system failed to receive the callback, OY! will send the first retry callback attempt to your system immediately. If your system still fails to receive the callback, OY! will send the second retry callback attempt 1 minute after timeout or getting a failed response from your side. The process goes on until you successfully receive the callback or all retry callback attempts have been sent.

Automatic Retry Callback is not activated by default. You can see the guideline below to enable Automatic Retry Callback:

1. Login to your account in OY! Dashboard
1. Go to “Settings” and choose “Developer Option". 
1. Choose “Callback Configuration” tab
1. Input your callback URL in the related product that you want to activate. Make sure you input the correct URL format. Please validate your callback URL by clicking “URL String Validation”
1. If you want to activate automated retry callback, tick the Enable Automatic Retry Callback for related products. You must input the email recipient(s) to receive a notification if all the callback attempts have been made but still failed in the end.
1. Make sure to whitelist OY’s IP to receive callbacks from OY
   - 54.151.191.85
   - 54.179.86.72
1. Make sure to implement the idempotency logic in your system. Use “tx\_ref\_number” parameter as idempotency key to ensure that multiple callbacks under “tx\_ref\_number”  key should not be treated as multiple different payments.
1. Save the changes

![Automatic Retry Callback](images/acceptingPayments/ewalletAggregator/ewallet_aggregator_automatic_retry_callback.png)

#### Refund transactions to customer
When your customer receives a defective product or the product is not delivered, they might request to refund the transaction. You can directly refund transactions to your customer’s account via OY! Dashboard. A refund can either be full or partial. A full refund gives your customers the entire amount back (100%). A partial refund returns the amount partially. 

Refunds are free of charge. However, the admin fee charged for the original transaction is not refunded by OY to your balance.

There are several requirements that must be met to issue a refund:

1. Refunds can only be issued up to 7 calendar days after the transaction is marked as successful.
1. You have enough balance that allows us to deduct the amount of the transaction that should be refunded. 
1. A refund can only be issued once for each successful transaction, whether it is a full or partial refund.
1. Refunds must be issued during operational hours, depending on the payment method. Refer to the table below.

Currently, refunds are only available for DANA, ShopeePay, and LinkAja. 

|Payment Method|Refund Feature|Operational Hours|
| :- | :- | :- |
|DANA	|Full Refund, Partial Refund|00\.00 - 23.59 GMT+7|
|ShopeePay|Full Refund|05\.00 - 23.59 GMT+7|
|LinkAja |Full Refund|00\.00 - 23.59 GMT+7|
|OVO|Not supported|-|

If you use Refund API, OY! will send a notification to your system via callback once a transaction is successfully refunded [Refund Callback - API Docs](https://api-docs.oyindonesia.com/#callback-parameters-e-wallet-refund-callback). You can also check the status of your refund request via API Refund Check Status. Refund [Check Status - API Docs](https://api-docs.oyindonesia.com/#get-e-wallet-refund-status-api-e-wallet-aggregator)
### Registration and Setup
Here are the steps to guide you through registration and setup for creating E-wallet Aggregator transactions. 

1. Create an account at OY! Dashboard
1. Do account verification by submitting the verification form. Ensure to tick the “Receive Money” product since E-wallet Aggregator is a part of Receive Money products.
1. OY! team will review and verify the form and documents submitted 
1. Once verification is approved, set up your receiving bank account information. Important Note: Ensure that the receiving bank account information is accurate as you can only set it up once via OY! Dashboard for security reasons
1. Follow the registration process for each Ewallet that you want to use. Please refer to this section for detailed guidelines: e-wallet Onboarding #todo hyperlink
1. Submit your IP address(es) & callback URL to your business representative or send an email to our support team, <business.support@oyindonesia.com> .
1. OY! will send the Production API Key as an API authorization through your business representative. 
   Note: Staging/Demo API Key can be accessed via OY! Dashboard by going to the “Demo” environment and the key can be found on the bottom left menu. 
1. Integrate E-wallet API to your system. Please follow the API documentation to guide you through.[ E-wallet - API Docs](https://api-docs.oyindonesia.com/#create-e-wallet-transaction-api-e-wallet-aggregator) 

### Creating E-Wallet transactions
Create E-Wallet Transactions: Use this API to create an e-wallet transaction for your user

You can create E-Wallet transactions via API only. Here are the guidelines to create E-wallet transactions via API:

1. Integrate API Create E-wallet transactions to your system. [Create E-wallet - API Docs](https://api-docs.oyindonesia.com/#https-request-create-e-wallet-transaction)
1. Hit OY!’s API to Create E-wallet transaction.
1. OY! will return the information to complete the payment
   - For e-wallets that use the redirection method (i.e. ShopeePay, DANA, LinkAja), OY! will return the e-wallet URL to complete the payment. You can share the URL to your customer.
   - For e-wallets that use the push notification method (i.e. OVO), the e-wallet provider will send a notification to your customer’s E-wallet app to complete the payment

### Completing transaction
Each e-wallet provider has a different method to complete the transaction, redirection or push notification method. ShopeePay, LinkAja, and DANA use a redirection method. Meanwhile, OVO uses a push notification method. Please refer to these guidelines for completing transactions based on each provider:

1. Complete e-wallet transactions via ShopeePay #todo hyperlink
1. Complete e-wallet transactions via LinkAja #todo hyperlink
1. Complete e-wallet transactions via DANA #todo hyperlink
1. Complete e-wallet transactions via OVO #todo hyperlink

To simulate demo transactions, please refer to this section: Simulate E-Wallet Payments - Product Docs #todo hyperlink

### Checking transaction status
All created E-wallet transactions are shown in OY! Dashboard. Navigate to “E-Wallet” to see the list of transactions. Inside the dashboard, you can see the details of the transactions, including all the transaction information inputted during creation, status of transactions, and the payment reference number. The dashboard also has a feature to search, filter, and export the list of transactions in various formats: Excel (.xlsx), PDF (.pdf), and CSV(.csv)

There might be times when your customer already completed the payments but the transaction status is not updated to success. Therefore, we also recommend you to check the transaction status periodically via the Check Status E-wallet API. [Check Status E-Wallet - API Docs](https://api-docs.oyindonesia.com/#https-request-check-e-wallet-transaction-status)

### Receiving fund to balance
Once a transaction is paid by the customer, OY! updates the transaction status and sends callback to your system that the transaction has been paid. OY! also sends/settles the funds to your OY! balance. Each provider has a different settlement time, varying from D+1 to D+2 working days. 


## API Payment Routing

Some business have some use cases that require them to receive and disburse the fund. Often times, the operation team is struggling to manage this use case. Limited resource makes it harder to disburse the fund received. Therefore, API Payment Routing is the best solutions to cater this needs. It allows end-to-end process from accepting fund to disburse fund in one flow.

### Description about Payment Routing

Payment Routing is an API that combines receive money and disburse money features. It allows you to immediately disburse the money once you receive from your customers. By integrating to this API, you will get the end-to-end solutions for your business needs.

Through API Payment Routing you may create Payment Link transactions and/or receive money via Bank Transfer (via Virtual Account & Unique Code), E-Wallet (One Time & Direct), QRIS, and Cards.

### Flow

![Payment Routing Flow](/images/Payment_Routing_Flow.png)

### Key Features

1. **Accept and disburse money in a real time manner** - By integrating to this API, you will get end-to-end solutions from receive to disburse money. All in real time manner. Note : Some payment methods have H+1 or H+2 settlement period. You have to keep some balance to cater the settlement from the payment methods.
1. **You can select Payment Link, Bank Transfer, E-Wallet, and QRIS to receive money** - You can choose Bank Transfer (via Virtual Account & Unique Code), E-Wallet (One Time & Direct), Cards, or QRIS as a payment method to receive the money. We provide all banks offered in VA Aggregator for Virtual Accounts, BCA for Unique Code, ShopeePay, DANA, LinkAja as payment method for E-Wallet, and Visa/Mastercard for Cards. However, you don't need to worry if you don't have your own UI. You can use our Payment Link to help your customers to complete the payments.
1. **Transaction tracking and monitoring capability** - You can track all payment routing transactions details through our callback or the OY! dashboard. You will receive callbacks two times, once we have succesfully receive money and once we have successfully disburse money.

### Use Cases

Below are few examples of Payment Routing usage.

1. Mutual Fund Investment - Accept investment money from users and directly disburse to each custodian banks.
1. Borrower and Lender - Accept money from Lender/Borrower and disburse them directly to Rekening Penampungan Lender/Rekening Penampungan Borrower.
1. Put money directly to Your Business Account- Receive money from your customers/buyers and directly put them to your business bank account in order to secure the money and prevent fraud.

### Registration and Setup

Follow the below check-list to ensure you're all set up to use our Payment Routing API service:

1. Create an account
1. Upgrade your account by submitting the required documentations
1. Have your upgrade request approved
1. Set up your receiving bank account information (note: ensure that the receiving bank account information is accurate as it cannot be changed via OY! dashboard for security reasons)
1. Submit your IPs and callback URLs to your business representative or to partner@oyindonesia.com
1. Receive an API Key from us (note: it is required for API authorization purpose)
1. Integrate with our Payment Routing API

### Testing

Once you successfully create an OY! account, you can immediately simulate Bank Transfer (Virtual Account and Unique Code), Ewallet, CC/DC payments via API.
Follow the below steps to test the Payment Routing flow:

1. Create an account
1. Send a request to activate API Payment Routing product and obtain staging API Key to your business representative
1. Send a ‘POST’ request _https://partner.oyindonesia.com/api/payment-routing/create-transaction_ (https://partner.oyindonesia.com/api/payment-routing/create-transaction) using your staging API key. Enter the required and optional fields, as referenced in the API reference docs (https://api-docs.oyindonesia.com/#create-payment-routing).
1. If you use Bank Transfer (via Virtual Account or Unique Code) as the payment method, you can simulate the payment through your dashboard (in Staging environment) by going to Settings, and choose "Bank Transfer Callback". ![Bank Transfer Callback](images/bank_transfer_callback_va.png)
1. If you use Ewallet as the payment method, you can simulate the payment through your dashboard (in Demo environment) by going to Settings, and choose "Ewallet Callback".
1. If you use CC/DC as the payment method, you can simulate the payment through your dashboard (in Demo environment) by going to Settings, and choose "CC/DC Callback".
1. If you use Payment Link as the payment method, you can open the link and simulate payment from there as an alternative.
1. If payment is successful, we will send a callback to the registered staging callback URL destination.
1. You can monitor Payment Routing transaction through OY! Dashboard or call the endpoint API. Go to “Payment Routing” menu to monitor your transactions.


## API Account Linking
Account Linking is a feature that allows your customer's payment account to be linked to your system using tokenization. By linking the customer’s account up front, your customer can see their account balance inside your application and later on can complete payments without being prompted for any card details or e-wallet phone number. The feature is currently supported for e-wallet ShopeePay & DANA. 

Account linking feature is free of charge.
#### Flow

![Account Linking Flow](images/acceptingPayments/accountLinking/account_linking_sequence_linking.png)
![Get Account Balance Flow](images/acceptingPayments/accountLinking/account_linking_sequence_get_ewallet_balance.png)
![Account Unlinking API Flow](images/acceptingPayments/accountLinking/account_linking_sequence_unlinking_api.png)
![Account Unlinking via App Flow](images/acceptingPayments/accountLinking/account_linking_sequence_unlinking_app.png)

### Registration and Setup
Here are the steps to guide you through registration and set up for doing Account Linking. 

1. Create an account at OY! Dashboard
1. Do account verification by submitting the verification form. Ensure to tick the “Receive Money” since Account Linking is a part of Receive Money.
1. OY! team will review and verify the form and documents submitted. 
1. Once verification is approved, set up your receiving bank account information. 
    - Important Note: Ensure that the receiving bank account information is accurate as you can only set it up once via OY! Dashboard for security reasons
1. Submit your IP address(es), callback URL, and redirect URL to your business representative or send an email to <business.support@oyindonesia.com> 
1. OY! will send the Production API Key as an API authorization through your business representative. 
   Note: Staging/Demo API Key can be accessed via OY! Dashboard by going to the “Demo” environment and the key can be found on the bottom left menu. 
1. Integrate Account Linking API to your system. Please follow the API documentation to guide you through.[Account Linking - API Docs](https://api-docs.oyindonesia.com/#api-account-linking) 

### Link customer’s payment account to your application
Customers can link their payment account to your application by hitting the API Account Linking. Here are the steps to guide you and your customer when doing account linking:

1. Integrate API Account Linking to your system. [Account Linking - API Docs](https://api-docs.oyindonesia.com/#get-linking-url-api-account-linking)
1. Hit OY!’s API Account Link. You will receive a linking URL as a response. The linking URL is used for the customer to authorize the linking request by giving a permission.
1. Customer give a permission and input PIN to authorize the request
1. Payment provider will process the request and OY! will send you a callback to notify that the account is successfully linked
1. Customer is redirected to the redirect URL you specify during registration

### Check customer’s payment account balance
Once the customer linked their payment account, you can get the information of the customer's account balance by hitting the API Get E-Wallet balance. You can show the balance inside your application. For instance, show the balance during the checkout process so the customer can know their balance before choosing a payment method. Please refer to the API Docs for more details: [Get Account Balance API - API Docs](https://api-docs.oyindonesia.com/#get-e-wallet-account-balance-api-account-linking)

### Unlink customer’s payment account from your application
Customers who have linked their payment account can unlink their account anytime. They can do so via API Account Unlinking or via Payment Provider Application. Using the API Account Unlinking allows your customers to unlink their account inside your application. Another option that the customer can do is to unlink their account via the payment provider’s application.


Here are the steps to guide you and your customer when unlinking an account:

**API Account Linking**

1. Integrate API Account Unlinking to your system. Account Unlinking - API Docs
1. Hit OY!’s API Account Unlinking. Once you hit our API, OY! will hit the provider’s system to unlink the customer’s account
1. OY! will send a callback to let you know that the unlinking is successful


**Payment Provider Application**

ShopeePay

1. Customer open Shopee app
1. Navigate to Setting → Apps Linked to ShopeePay
1. Click unlink account for your merchant

DANA

1. Customer open DANA app
1. Navigate to Account → Linked Accounts
1. Click remove linking for your merchant
1. If your customer's DANA account is frozen, then their account is temporarily unlinked. Once the account is unfrozen and the token has not expired, their account is automatically linked again.


## Understanding Cards Transaction 

### How to Activate 

If you need to accept payments from your end-users via debit and/or credit cards, you may contact your Business Representative for more information and assistance on the activation process. 


### Products Available 

You may receive credit and/or debit card payments via Payment Link or Payment Routing.


### Supported Networks 

We currently support Mastercard, Visa, and JCB transactions. To protect you and your end-users from fraudulent payment attempts, all transactions will be processed with 3D Secure (i.e. 3DS). 


### Payments via Cards

To increase the chance of successful transaction, please ensure that your end-users:

1. Have sufficient balance or credit limit for the transaction

2. Have enabled 3D Secure (3DS) as a way to authenticate the transaction


### Understanding Overseas Transactions

Your end-users may use credit and/or debit cards issued locally or internationally. If you plan to conduct overseas transactions, it is important to note that OY! can only create the transactions in IDR. This means that your end-users can still use their overseas cards for payment, however the card will still be charged in IDR and settlement will also be done in IDR. The cardholder's billing statement, however, will show the transaction amount in their local currency with foreign exchange rate & extra fees (if any) as applied by their issuer (i.e. the bank or entity that issues the card).


Some cards issuer might not allow overseas transactions. Therefore, it is recommended for your end-users to check with their issuing bank regarding country restrictions to reduce the chance of the transaction being declined by the issuer. 


### Transactions Declined By Issuer 

When a transaction attempt is submitted to your end-user’s issuer (i.e. the bank or entity that issues the card), they usually have an automated system and parameters that help them in deciding whether or not to authorize the transaction. The parameters may include, but not limited to, behavior from past transactions, card details such as expiration date and CVV, and availability of funds. 


If all of the card details seem correct, the funds are available and 3DS has been enabled for the card, it is possible that the transaction is declined by the issuer. Unfortunately, sometimes the decline reason provided by the issuer is too “generic”. If that’s the case, you may ask your end-users to either use alternative cards or payment methods or to contact their issuer directly for more information on the decline reason. Due to privacy & security concerns, issuers can only discuss the specific reason why a transaction is declined to the respective cardholder. This means that issuer will most likely not entertain decline explanation requests via OY!. 




## Feature: Resend Callback

### Key Features

Retry Callback allows you to resend a callback for your successful transaction to your system. Initially, OY! will send a callback to your system after your transaction status has been converted to success. If your system failed to receive the callback, this feature can help you to retry the callback process. The process can be done in two ways


1. Automated retry callback
If on the first try the callback is not successfully received, the system will automatically retry the callback delivery. If that callback still not received by the clients'  system, the system will automatically retry until 5 occurence. The interval of the sending process will be detailed in Callback Interval section. If all automated Retry Callback have been sent but still returned failed, system will send email notification to email address that has been set in the configuration.

2. Manual retry callback
Beside the automated process, you can manually request a callback.

### Registration and Set Up

Follow the instruction below to activate retry callback

1. Login to your account in OY! Dashboard
2. Open “Settings” and choose “Developer Option”. Choose “Callback Configuration”
3. Fill your callback URL in the related product that you want to activate. Make sure the format is right. You can click URL String Validation button to validate the URL format.
4. If you want to activate automated retry callback, check the Enable Automatic Retry Callback and fill in the email. The email will be used to receive a notification if all the automatic callback attempts have been made but still fail
5. Click "Save Changes". The configuration will not able to be saved if the callback URL or/and email format are not valid.


![Resend Callback](images/retry_callback_developer_option.png)

Don't forget to whitelist these IPs in order to be able to receive callback from OY: 54.151.191.85 and 54.179.86.72

If you want to manually resend a callback, you can follow the instruction below

1. Login to your account in OY! Dashboard
2. Open the desired product menu


Payment Link: open "Payment Link" and choose "One Time"/"Reusable"
VA Aggregator: open "Virtual Account" menu and choose "Incoming Payment"
Ewallet Aggregator: open "E-Wallet" menu

3. If the product is VA Aggregator or Ewallet Aggregator, click "Resend Callback" button in the related transaction
4. If the product product is Payment Link, click 3 dots in the related transaction and click "Resend Callback"


![Resend Callback](images/payment_link_resend_callback.png)

![Resend Callback](images/reusable_resend_callback.png)

![Resend Callback](images/va_resend_callback.png)

![Resend Callback](images/ewallet_resend_callback.png)



### Callback Interval
1st retry: realtime (after the first failed log received)
2nd retry: 1 min (after callback failed log for the 1st retry is received)
3rd retry: 2 mins (after callback failed log for the 2nd retry is received)
4th retry: 13 mins (after callback failed log for the 3rd retry is received)
5th retry: 47 mins (after callback failed log for the 4th retry is received)

If all automated Retry Callback (all the 5 attempts) has been sent but we still get a Failed response from your end, our system will send an automated email notification to the  email address that has been set in the configuration earlier


### Idempotency Key
To implement automated retry callback, you need to handle the idempotency logic in your system using the below key:

Payment Link - Invoice: tx_ref_number
VA: trx_id
Ewallet: trx_id OR ref_number

## Feature: Refund E-wallet

### Key Features
Refund features allow you to refund a successful e-wallet transaction to your end-users. A refund can either be full or partial. A full refund will give your end-users or payers their entire payment amount back (100%). A partial refund will return up to the total amount paid to your end-users or payers. These requirements must be met in order for a refund transaction to be issued:

1. Refunds can only be issued up to 7 days after transaction is success/complete.
2. You have enough balance that allows us to deduct the amount of the transaction that should be refunded.
3. A refund can only be issued once, whether it is a full or partial refund.

| E-Wallet Issuer    | Refund Feature     |
| ------------------ | ------------------ |
| OVO                | Not supported      |
| ShopeePay          | Full               |
| Linkaja            | Full               |
| DANA               | Full, Partial      |

### How to Use

1. Log in to your OY! Business dashboard with your username and password that you registered with.
2. Click on the product page you desired.
  - Payment Link : Click “Payment Link” and choose “One Time”/“Reusable”
  - VA Aggregator : Click “Virtual Account” and choose “Incoming Payment”
  - Payment Routing ; Click “Payment Routing”
3. You can see a transaction that should be refunded
4. On “Action” column, you can click the the three-dots button and click “Refund E-Wallet”. ![Refund E-wallet](images/ewallet_refund_action.png)
5. If you try to trigger refund after the time limit or outside operational hours, an error modal will show up and you can not continue the refund process. ![Refund E-wallet](images/ewallet_refund_operational.png)
6. You can fill the amount of refund, only for partial refund. ![Refund E-wallet](images/ewallet_refund_amount.png)
7. Make sure that you have enough balance to issue a refund. If you do not have enough balance, an error message will show up. You can top up your balance via “Top Up” feature. ![Refund E-wallet](images/ewallet_refund_balance.png)
8. The transaction will change to “Refunded” if the refund is successful. You can not trigger another refund after the refund is successful. The refund button will be disabled.
9. You can see the refunded transaction in “Account Statement” page by clicking “Transaction Report” and “Account Statement”. ![Refund E-wallet](images/ewallet_refund_account_statement.png)




