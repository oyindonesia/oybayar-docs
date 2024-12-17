# Accepting Payments
## Payment Methods

### Bank Transfer - Virtual Account
#### Introduction 
To receive payments digitally from your customers, you can create a virtual account (VA) number for your transactions. Your customers can directly transfer the payment to the generated VA number and you will receive a notification (i.e. callback) from OY! once the transaction is considered complete. 

Currently, we offer VA service for 8 banks: 

1. Bank Central Asia (BCA) 
1. Bank Rakyat Indonesia (BRI) 
1. Bank Mandiri 
1. Bank Negara Indonesia (BNI) 
1. Bank CIMB & CIMB Syariah
1. Bank SMBC 
1. Bank Syariah Indonesia (BSI)
1. Bank Permata & Permata Syariah

#### Main Features Availability
|VA Features|Payment Link|VA Aggregator|E-Wallet Aggregator|Payment Routing|
| :- | :-: | :-: | :-: | :-: |
|Open Amount|❌|✅|❌|❌|
|Closed Amount |✅|✅|❌|✅|
|Multiple Use VA Number |❌|✅|❌|✅|
|Single Use VA Number|✅|✅|❌|✅|
|Static (Lifetime)|❌|✅|❌|✅|
|Dynamic  |✅(set to 24 hours after VA number is generated)|✅|❌|✅|
|Customizable Number|❌|✅|❌|❌|


Regardless of the parameters of the Payment Link (e.g. open amount payment link, lifetime payment link, etc), your customers need to input the specific amount in the link to be able to choose a payment method successfully and proceed to payment. This is why if your customers choose to pay via VA - Payment Link, then the VA number generated can only accept the specified amount (i.e. closed amount) and can only be used for that particular transaction only (i.e. single use VA number). The expiry time for the VA generated via Payment Link is 24 hours after payment method confirmation from your customers.

If you want to add a personal touch to your customer’s VA payment journey, you may do so by creating a customized VA number. With this feature, you can custom the suffix of the VA number according to your customer’s billing number or phone number. For example, if you customer’s phone number is 08123456789, then when you create a customized VA number, the VA number result will be 23088123456789. 

To create customized VA numbers, you need to hit a different URL endpoint than the usual VA creation endpoint, the [API Create Customized VA](https://api-docs.oyindonesia.com/#create-customized-va-va-aggregator). The API endpoints to [update](https://api-docs.oyindonesia.com/#update-customized-va-va-aggregator) and [deactivate](https://api-docs.oyindonesia.com/#deactivate-customized-va-va-aggregator) the customized VA number are also different from the non-customized VA number. In general, the customized VA numbers can receive multiple payments and have lifetime validity. Currently, this feature is only supported for BRI and CIMB. To activate this feature, you may contact your business representative for assistance. 

#### Transaction Amount Details 

Minimum amount per transaction



|Product Type|Min. VA Transaction Amount|
| :-: | :-: |
|Payment Link (non CIMB, Mandiri, Permata, BNI, BRI) |Rp 10,000 |
|Payment Link (VA CIMB, Mandiri, Permata, BNI, BRI) |Rp 15,000 |
|Payment Routing|Rp 10,000 |
|VA Aggregator (Closed Amount)|Rp 10,000 |
|VA Aggregator (Open Amount)|No minimum amount |

Maximum amount per transaction 


|Banks|Max. Amount per transaction |
| :-: | :-: |
|Bank Central Asia (BCA) |Rp 50,000,000|
|Bank Negara Indonesia (BNI) |Rp 50,000,000|
|Bank Rakyat Indonesia (BRI) |Rp 500,000,000|
|Bank Mandiri |Rp 500,000,000|
|Bank CIMB |Rp 500,000,000|
|Bank SMBC |Rp 100,000,000|
|Bank Syariah Indonesia (BSI)|Rp 50,000,000|
|Bank Permata|Rp 500,000,000|

#### Product Availability

|Payment Link|VA Aggregator|E-Wallet Aggregator|Payment Routing|
| :-: | :-: | :-: | :-: |
|✅|✅|❌|✅|


#### Payment Flow 
![Bank Transfer Virtual Account Flow](images/acceptingPayments/payment-methods/bank-transfer-virtual-account/payment-flow.webp)
#### Activation 
1. Banks non BCA 
   - Generally, you do not need extra onboarding steps to activate VAs for each bank (non-BCA). Once you are allowed to use Receive Money products, you should be able to use the VAs without additional documents required. Kindly let your business representative know about the banks that you will need 
1. BCA 
   - In addition to your onboarding documents, you also need to submit additional documents to be able to use VA for BCA (including, but not limited to, Taxpayer Registration Number (NPWP), and Nationality ID) 
   - Onboarding process to the bank will take around 14 to 30 working days, depending on the document completion and assessment from the bank 

#### Available Payment Channels for VA 


Your end-users may use the below payment channels to pay for their bills via VA


| Bank (Virtual Account) | SKN  | RTGS  | ATMs | Intrabank Mobile Banking & Internet Banking | Interbank Internet Banking | Interbank Mobile Banking |
| ---------------------- | ---  |----  |---- | ------------------------------------------- | --------------------------| ---------------------------- |
| Bank Mandiri           | Yes  | Yes  | Yes | Yes                                            | Yes                       | Yes                          |
| BRI                    | Yes  | Yes  | Yes | Yes                                            | No                       | Yes                           |
| BNI                    | Yes  | Yes  | Yes | Yes                                            | No                       | Yes                           |
| Permata                | Yes  | Yes  | Yes | Yes                                            | No                       | Yes 
| CIMB Niaga / CIMB Niaga Syariah | Yes  | Yes | Yes | Yes (Mobile Banking), No (Internet Banking)| No                       | Yes                          |
| BCA                    | No   | No   | Yes | Yes      | No                                  | No                       |
| SMBC                   | Yes  | No   | Yes | Yes (Mobile Banking), No (Internet Banking)     | No                       | Yes                          |
| BSI                    | No   | No   | Yes | Yes      | Yes                                 | Yes                      |



#### Simulating Callback 
1. To simulate a successful payment, ensure that you are in our staging environment. Click “Try in Demo” button that will redirect you to our staging environment
1. Scroll down to “Settings” tab → Callback Bank Transfer 
1. Choose the “Virtual Account” as the Transaction Type 
1. Select the Bank Name of the VA number that you have previously created 
1. Enter the VA number and amount. For Closed VA, you need to enter the exact amount of the VA as created 
1. Enter the payment date and time. Ensure that payment date and time are greater than created but less than expiration time 
1. You may use this feature for all your VA transactions across all of OY! Receive Money products (VA Aggregator, Payment Link, and Payment Routing) 

![Bank Transfer - Virtual Account Simulate Payment](images/acceptingPayments/payment-methods/bank-transfer-virtual-account/simulating-callback.webp)


### Bank Transfer - Unique Code
#### Intro
Unique Code is a type of bank transfer payment that adds/subtracts a unique amount (between Rp 1-999) to your billed amount. The unique amount acts as an identifier to complete transactions. Unlike virtual accounts where each customer gets a different account number, unique code always uses the same account number for all transactions. The destination account is under OY! Indonesia’s name (PT. Dompet Harapan Bangsa) and you can not modify the destination account with your account. Unique code also has operational hours where you can only create unique code transactions between 3 AM - 8.30 PM GMT+7. 

There are two approaches that you can use on unique code transactions: addition or subtraction approach. 

1. Addition Approach
   - By using the addition approach, the unique amount is added to your billed amount, meaning your customer will pay Rp 1-999 more than the billed amount. The additional amount will not be settled to your balance.
1. Subtration Approach
   - By using the subtraction approach, the billed amount is subtracted by the unique amount. In this case, your customer will pay Rp 1-999 less than the billed amount. However, worry not, as the amount settled to your balance is not deducted by the unique amount. The default approach is addition, but you can request to change the approach via your business representative.

As an example, if you create a unique code transaction with an amount of Rp 100.000, then OY! will generate a unique amount for that transaction. Let’s assume the unique amount generated for that transaction is Rp 100. If you use the addition approach, then your customer pays a total of Rp 100.100. However, if you use the subtraction approach, your customer pays a total of Rp 99.900. Using either approach, the amount settled to your balance is Rp 100.000.

#### Unique Code Payment Details

|Banks|Bank Code|Open Amount |Closed Amount |Max. Expiration Time|Operational Hours|
| :-: | :-: | :-: | :-: | :-: | :-: |
|Bank Central Asia (BCA) |014|No|Yes|3 hours|03\.00 - 20.30 GMT + 7|

#### Feature Availability

|Banks|Refund Feature|
| :- | :- |
|BCA|No|


#### Product Availability

|Bank |Payment Link|VA Aggregator|E-Wallet Aggregator|Payment Routing|
| :- | :-: | :-: | :-: | :-: |
|BCA |✅|❌|❌|✅|

#### Transaction Amount Details 

|Approach Type|Min. Transaction Amount|Max. Transaction Amount|
| :-: | :-: | :-: |
|Subtraction|Rp 11,000 |Rp 500,000,000|
|Addition|Rp 10,000 |Rp 499,999,000|

#### Payment Flow
![Bank Transfer - Unique Code Flow](images/acceptingPayments/payment-methods/bank-transfer-unique-code/payment-flow.webp)
#### Activation
You can only use one type of bank transfer (virtual account / unique code) per bank. By default, all banks use virtual accounts. In order to accept payments using unique code, you need to submit a request to OY! via your business representative or our business support. 
#### Payment

[Click here to see the payment journey](https://drive.google.com/file/d/1D8cJEPFmVEN8-QVppiSm9RPa2vpb-b2H/view?usp=drive_link)

#### Simulate Payments
To get more understanding of unique code transactions behavior, you can simulate unique code transactions that are created in the Demo environment. Here are the steps to simulate unique code payments via OY! Dashboard:

1. Open OY! Dashboard and navigate to the Demo environment
1. Open the “Settings” menu and click “Callback Bank Transfer”.
1. Insert the payment detail of the transaction you want to simulate:
   - Transaction Type: Choose “Unique Code” 
   - Bank: Choose the destination bank.
   - Account Number: Insert OY! Indonesia’s bank account number that you receive during creation
   - Amount: Insert the billed amount and the unique amount that you receive during creation
   - Payment Date and Time: Choose the date & time that you want the payment to occur
1. Once you input all the fields, you can simulate the payment by clicking “Send Callback”. If the payment is successful, a success notification will be shown inside the dashboard. OY! will also send the callback to your specified callback URL. If for some reason you did not receive any callback, please contact the customer service to help you solve the problem.

![Bank Transfer - Unique Code Simulate Payment](images/acceptingPayments/payment-methods/bank-transfer-unique-code/simulating-callback.webp)

![Bank Transfer - Unique Code Amount Detail](images/acceptingPayments/payment-methods/bank-transfer-unique-code/payment-link-view.webp)


### QR Code (QRIS)
#### Intro
Quick Response Code Indonesian Standard (QRIS) is a standardized QR payments in Indonesia that are developed by Bank Indonesia. Payments are performed by the customers scanning the QR on their m-banking/e-wallet application. QR payments are highly suitable for low-value transactions since they offer an affordable price (0.7% per transaction). 

#### Feature Availability

|QRIS Provider|Refund Feature|
| :- | :- |
|QRIS|No|

#### Product Availability

|QRIS Provider|Payment Link|VA Aggregator|API E-Wallet Aggregator|Payment Routing|
| :- | :- | :- | :- | :- |
|QRIS|Yes|No|No|Yes|

#### Transaction Amount Details 

The maximum amount per transaction for QRIS is Rp 10,000,000. The minimum amount per transaction is Rp 10,000, both in Payment Link and Payment Routing. Should you have any request to receive payments below Rp 10,000, please contact your Business Representative 
#### Payment Flow
![QRIS Flow](images/acceptingPayments/payment-methods/qr-code-qris/payment-flow.webp)
#### Activation
In order to accept payments using QRIS, you need to register your merchant to the QRIS providers first. You can do the registration via OY! Dashboard by opening the Payment Method page and clicking the Payment Method tab. OY! offers real time registration, so you can directly accept payments once you finish submitting your application.

Here are the requirements that must be fulfilled in order to submit a registration: 

<table>
  <tr>
    <th colspan="2" valign="top" style="text-align:center">
      <p></p>
      <p><b>Requirement</b></p>
    </th>
    <th valign="top" halign="center" ><b>QRIS</b></th>
  </tr>
  <tr>
    <td colspan="2" valign="top">Business Ownership</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td rowspan="11" valign="top">Owner/Shareholder ID Card</td>
    <td valign="top">ID Card Number</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Full Name</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Date of Birth</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Occupation </td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Gender</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Province</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">City</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">District </td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Village</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Postal Code</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Full Address</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Owner/Shareholder Email Address</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Owner/Shareholder Phone Number</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td rowspan="2" valign="top">NPWP</td>
    <td valign="top">NPWP Number</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Document (in .jpg or .png)</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td rowspan="2" valign="top">Person in Charge (PIC) - Director</td>
    <td valign="top">Full Name</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">
      <p>Position</p>
      <p></p>
      <p></p>
    </td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td rowspan="4" valign="top">Person in Charge (PIC) - Non Director</td>
    <td valign="top">Full Name</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">
      <p>Position</p>
      <p></p>
      <p></p>
    </td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Email Address</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Phone Number</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Payment Flow</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Business Logo (in Google Drive URL format)</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Website URL</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Business Permit Number (According to the legality document)</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Date of Business Establishment (According to the legality document)</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Place of Business Establishment (According to the legality document)</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Projected turnover per month using QRIS</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Projected number of transactions per month using QRIS</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
</table>


#### Payments
[Click here to see the payment journey](https://drive.google.com/file/d/1nwoMKH8iKaq8S89an0_bPlNQ11xMyo7T/view?usp=sharing)

#### Simulate Payments
Simulating QRIS payments for demo transactions is currently not available.

### E-Wallet
#### Intro
E-wallet is a type of electronic payment that allows you to pay for goods and services without requiring bank accounts or cash. E-wallet plays a significant role in the rapid growth of e-commerce since it enables users to make payments easily without having to interact with banks or other third parties. OY! currently supports payment from several top e-wallets in Indonesia, including OVO, DANA, ShopeePay, and LinkAja.

#### E-wallet Payment Details

|E-wallet Provider|E-wallet Code|Allowed Expiration Time|Flow Type|Payments via desktop|Payments via mobile browser|Payments via provider’s mobile app|
| :- | :- | :- | :- | :-: | :-: | :-: |
|ShopeePay|shopeepay\_ewallet|1 - 60 minute(s)|Redirection (JumpApp)|❌|❌|✅|
|OVO|ovo\_ewallet|55 seconds|Push notification|❌|❌|✅|
|DANA|dana\_ewallet|1 - 60 minute(s)|Redirection (JumpApp)|✅|✅|✅|
|LinkAja|linkaja\_ewallet|5 minutes|Redirection (JumpApp)|❌|❌|✅|

The maximum amount per transaction for all e-wallet providers is Rp 10,000,000 for customers who have performed KYC on the provider’s app and Rp 2,000,000 for customers who have not. 

#### Feature Availability

|E-wallet Provider|Refund Feature|Account Linking Feature|Linking Expiry Time|Linking Renewal|
| :- | :- | :- | :- | :- |
|ShopeePay|Full|Supported|5 Years|After Expiry Time|
|OVO|Not Supported|Not supported|-|-|
|DANA|Full, Partial|Supported|10 Years|After Expiry Time|
|LinkAja|Full|Not supported|-|-|

#### Product Availability

<table>
  <tr>
    <th rowspan="2" valign="top"><b>E-Wallet Provider</b></th>
    <th valign="top"><b>Payment Link</b></th>
    <th valign="top"><b>VA Aggregator</b></th>
    <th valign="top"><b>API E-Wallet Aggregator</b></th>
    <th colspan="2" valign="top"><b>Payment Routing</b></th>
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

#### Payment Type & Flow
##### Single Payment
Single payment is a type of payment that allows your customer to complete payments using e-wallet easily. 

There are two types of payment flow for Single Payment: Redirection (JumpApp) or Push Notification.

![E-wallet Redirection Flow](images/acceptingPayments/payment-methods/e-wallet/payment-flow-single-payment-redirection.webp)

![E-wallet Push Notification Flow](images/acceptingPayments/payment-methods/e-wallet/payment-flow-single-payment-push-notification.webp)

##### Direct Payment
Direct payment requires account linking, meaning that your customer must connect their e-wallet account to your system before completing payments. Direct payments offer a more seamless payment experience, as your customer does not need to open or get redirected to the e-wallet provider application to complete payments.

Direct Payments offers both payment with and without authorization (auto-debit). Direct Payment with authorization requires the customer to input a PIN or OTP on every transaction, while Direct Payment without authorization allows your system to deduct your customers balance without the need to enter a PIN or OTP. Direct payment without authorization is suitable for subscription use cases.

![E-wallet Direct Payment Flow](images/acceptingPayments/payment-methods/e-wallet/payment-flow-direct-payment.webp)

#### Activation
In order to accept payments using e-wallets, you need to register your merchant to the e-wallet providers first. You can do the registration via OY! Dashboard by opening the Payment Method page, Payment Method - OY! Dashboard. OY! offers real time registration, so you can directly accept payments once you finish submitting your application.

Here are the requirements that must be fulfilled in order to submit a registration: 
<table>
  <tr>
    <th colspan="2" rowspan="2" valign="top" style="text-align:center">
      <p></p>
      <p><b>Requirement</b></p>
    </th>
    <th colspan="4" valign="top" style="text-align:center"><b>E-wallet Provider</b></th>
  </tr>
  <tr>
    <th valign="top"><b>ShopeePay</b></th>
    <th valign="top"><b>LinkAja</b></th>
    <th valign="top"><b>DANA</b></th>
    <th valign="top"><b>OVO</b></th>
  </tr>
  <tr>
    <td rowspan="11" valign="top">Owner/Shareholder ID Card</td>
    <td valign="top">ID Card Number</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Full Name</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Date of Birth</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Occupation </td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Gender</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Province</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">City</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">District </td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Village</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Postal Code</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Full Address</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Owner/Shareholder Email Address</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Owner/Shareholder Phone Number</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">NPWP</td>
    <td valign="top">NPWP Owner Type</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">❌</td>
  </tr>
  <tr>
    <td rowspan="8" valign="top"></td>
    <td valign="top">NPWP Number</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Document (in .jpg or .png)</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Province</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">❌</td>
  </tr>
  <tr>
    <td valign="top">City</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">❌</td>
  </tr>
  <tr>
    <td valign="top">District </td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">❌</td>
  </tr>
  <tr>
    <td valign="top">Village</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">❌</td>
  </tr>
  <tr>
    <td valign="top">Postal Code</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">❌</td>
  </tr>
  <tr>
    <td valign="top">Full Address</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">❌</td>
  </tr>
  <tr>
    <td rowspan="4" valign="top">Person in Charge (PIC) - Non Director</td>
    <td valign="top">Full Name</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">
      <p>Position</p>
      <p></p>
      <p></p>
    </td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Email Address</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td valign="top">Phone Number</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Does your business license have a validity?</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Payment Flow</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Business Logo (in Google Drive URL format)</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Website URL</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Business Permit Number (According to the legality document)</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Business Identification Number / Company Registration Certificate</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">❌</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Date of Business Establishment (According to the legality document)</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Place of Business Establishment (According to the legality document)</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Projected turnover per month using QRIS</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
  <tr>
    <td colspan="2" valign="top">Projected number of transactions per month using QRIS</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
    <td valign=”center” style="text-align:center">✅</td>
  </tr>
</table>


#### Payments
ShopeePay (Single Payment)

[Click here to see the payment journey](https://drive.google.com/file/d/162WY4oEKwEcvgF7p_1lQ6VLHS4XGS-yI/view?usp=drive_link)

DANA

[Click here to see the payment journey](https://drive.google.com/file/d/1c65gLG1gZdGKWhM6FazlqRA5qJVRhOYf/view?usp=drive_link)

LinkAja

[Click here to see the payment journey](https://drive.google.com/file/d/1bN4-fVS0i1ygK96UVo7XcdnIhhQqzZi3/view?usp=drive_link)

OVO

[Click here to see the payment journey](https://drive.google.com/file/d/1b_ImuHTQPGF1UE6jrtxhqRAShpbx8DDi/view?usp=sharing)

#### Simulate Payments
To get more understanding of e-wallet transactions behavior, you can simulate e-wallet Demo transactions that are created in the Demo environment. Here are the steps to simulate e-wallet payments via OY! Dashboard:

1. Open OY! Dashboard and navigate to the Demo environment
1. Open the “Settings” menu and click “E-wallet Callback”.
1. Insert the payment detail of the transaction you want to simulate:
   1. Choose the e-wallet provider: Shopeepay, DANA, LinkAja, or OVO.
   1. Insert the Transaction Reference Number. For e-wallet transactions that are created via API E-wallet, you can find the Ref Number inside “E-Wallet API menu”. Please look at the image below to guide you
   1. Input the amount of transaction
1. Once you input all the fields, you can simulate the payment by clicking “Send Callback”. If the payment is successful, a success notification will be shown inside the dashboard. OY! will also send the callback to your specified callback URL. If for some reason you did not receive any callback, please contact our customer service to help you solve the problem.

![E-wallet Simulate Callback](images/acceptingPayments/payment-methods/e-wallet/simulating-callback.webp)
![E-wallet See Reference Number](images/acceptingPayments/payment-methods/e-wallet/preview-dashboard.webp)

Specifically for Payment Link transactions, you can directly simulate the payment on the Payment Link by clicking “Bayar Tagihan''.

![E-wallet Simulate Callback Payment Link](images/acceptingPayments/payment-methods/e-wallet/simulating-callback.webp)

### Cards
#### Introduction 
OY! offers both debit and credit cards as a payment method for your customers. We currently accept VISA, Mastercard, and JCB. 

#### Feature Details 
1. Transactions are protected by 3DS – protecting you and your customers from fraudulent transactions 
1. Support multiple global network (Visa, Mastercard, JCB) – enabling you to process local and overseas transactions

To increase the chance of successful transactions, please ensure that your customers: 

1. Have enabled 3DS as an authentication method for each transaction made on their card
1. Have sufficient balance or credit limit for each transaction 
1. (Especially for overseas transactions) Have notified their card issuer (i.e. the bank or entity that issues the card) of their intention to conduct overseas transactions 

Minimum transaction amount with cards is Rp 15.000. There is no maximum transaction limit for each transaction. The limit depends on the availability of balance or credit limit for each card. 

#### Understanding Overseas Transactions 

Your customers may use credit and/or debit cards issued locally or internationally. If you plan to conduct overseas transactions, it is important to note that OY! can only create the transactions in IDR. This means that your customers can still use their overseas cards for payment, however the card will still be charged in IDR and settlement to your OY! balance will also be done in IDR. The cardholder's billing statement, however, will show the transaction amount in their local currency with foreign exchange rate & extra fees (if any) as applied by their issuer (i.e. the bank or entity that issues the card).

Some card issuers might not allow overseas transactions. Therefore, it is recommended for your customers to check with their issuing bank regarding country restrictions to reduce the chance of the transaction being declined by the issuer.

#### Transactions Declined by Issuer 

When a transaction attempt is submitted to your customer’s issuer (i.e. the bank or entity that issues the card), they usually have an automated system and parameters that help them in deciding whether or not to authorize the transaction. The parameters may include, but not limited to, behavior from past transactions, card details such as expiration date and CVV, and availability of funds.

Even though all of the card details seem correct, the funds are available and 3DS has been enabled for the card, it is possible that the transaction is declined by the issuer. Unfortunately, sometimes the decline reason provided by the issuer is too “generic”. If that’s the case, you may ask your customers to either use alternative cards or payment methods or to contact their issuer directly for more information on the decline reason. Due to privacy & security concerns, issuers can only discuss the specific reason why a transaction is declined to the respective cardholder. This means that issuer will most likely not entertain decline explanation requests via OY!.

#### Payment Flow 

Flow via Payment Link 

![Cards Flow via Payment Link](images/acceptingPayments/payment-methods/cards/payment-flow-via-payment-link.webp)

Flow via Payment Routing

![Cards Flow via Payment Routing](images/acceptingPayments/payment-methods/cards/payment-flow-via-payment-routing.webp)
#### Activation 

If you need to accept payments from your end-users via debit and/or credit cards, you may contact your Business Representative for more information and assistance on the activation process. 

|Requirement |Credit and Debit Cards|
| :-: | :-: |
|Partner Eligibility Form|✅|
|Partner Request Form to Acquiring Bank |✅|
|Partner and OY! Service Agreement |✅|
|Company Profile |✅|
|Operational license (if applicable)|✅|
|KYC Flow |✅|
|List of users|✅| 


#### Simulate Payments
1. Open OY! Dashboard and and navigate to the Demo environment
1. Create a Payment Link transaction. Make sure you select “Cards” as one of the available payment method options 
1. Open the payment link URL on your browser
1. Choose and confirm “Credit/Debit Card” as your payment method. You will then automatically be redirected to a page to fill your card details. If you are not automatically redirected, then click “Payment with Cards” button 
1. Fill the card details as follow
  1. Card Number: 2223000000000007
  2. Card Expiry Time: 01/39
  3. Card CVN: 100
  4. Cardholder Name: Testing
1. Fill the email and phone number accordingly 
1. Click to pay 
1. You will be directed to a page to mock the 3DS step (i.e. in the actual payment in production environment, you will receive an OTP sent to the phone number registered to your card by your issuing bank). Choose from the dropdown menu to successfully authenticate the transaction (note: you may also choose to simulate rejected transactions by selecting unsuccessful authentication from the dropdown).
1. Transaction will be successful 


## Payment Link
Payment Link is a pre-built checkout page that allows your business to easily and securely accept payments online. You can share the link to your customers and they can choose various payment methods that OY! supports inside the Payment Link. OY! supports up to 17 payment methods– including Bank Transfer, E-Wallet, QR Code (QRIS), Credit and Debit cards. Payment Links can be created without using any code/integration. However, if you need to create Payment Links from your website/application, OY! also provides Payment Link API.

There are two types of Payment Link:

|Payment Link Type|Characteristic|Use Case|
| :- | :- | :- |
|One Time|One link to accept single payment|One-Time payments|
|Reusable|One link to accept multiple payments and support lifetime payments|Top Up, Donation|

![Payment Link Preview](images/acceptingPayments/payment-link/flow/preview-payment-link.webp)

### Flow

![Payment Link One Time Flow](images/acceptingPayments/payment-link/flow/payment-flow-one-time.webp)
![Payment Link Reusable Flow](images/acceptingPayments/payment-link/flow/payment-flow-reusable.webp)

### Features
#### Customize Payment Link transaction configuration
Set your Payment Link configurations depending on the use case of your transactions. There are several things that you can configure:

1. List of Available Payment Methods
   - Set up the list of available payment methods that you allow for your customers. The payment methods available are Bank Transfer (via Virtual Account and Unique Code), Cards (Credit Card/Debit Card), E-Wallet, and QRIS
1. Amount type
   - Open Amount: Accept payments of any amount, or up to specified amount
   - Closed Amount: Only accept payments of the specified amount
1. Admin Fee type:
   - Include Admin Fee: Admin fee will be deducted from the amount once the fund is settled to your balance. Admin fee borne by merchant.
   - Excluded from total amount: Admin fee will be added to the customer's total payment. Admin fee borne by the customer. 
      Total amount to be paid by the customer = Specified Amount + Admin Fee. 
1. Payment Link Expiration Time 
   - By default, Payment Link Expiration Time is 24 hours. You can customize the Payment Link Expiration Time by days and/or hours. The maximum expiration time is 31 days + 23 hours.
   - Specifically for Reusable Payment Link, you can set the expiration time to “Lifetime”, meaning that the link does not have an expiration time and can accept payments any time unless the Payment Link is manually deactivated.

You can define your default configuration, so you will no longer need to fill in these fields again the next time you create a payment link. Save your default configuration by ticking  "Use this configuration for future transaction(s)” option when creating Payment Links. 

![Payment Link Save Configuration](images/acceptingPayments/payment-link/features/default-config.webp)

#### Monitoring transactions via OY! Dashboard
All created Payment Link transactions are shown in the OY! Dashboard. Navigate to “Payment Link” → “One Time”/”Reusable” to see the list of created transactions. Inside the dashboard, you can see the details of the transactions, including all the transaction information inputted during creation, the status of transactions, and the payment reference number\*. The dashboard also has a feature to search, filter, and export the list of transactions in various formats: Excel (.xlsx), PDF (.pdf), and CSV(.csv)

![Payment Link Monitoring Transactions](images/acceptingPayments/payment-link/features/dashboard-view.webp)

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
1. To change the header color in the Payment Link, you can choose a color from the Color Picker or you can type the HEX color code in “Header Color” (e.g. #FFFFFF). 
1. You can choose a different color for the buttons inside the Payment Link. Choose a color from the Color Picker or type the HEX color code in “Button & Link Color”.
1. Save the changes. The changes will be applied to all payment links created in real-time. You can see when the last Payment Link Display was modified.

![Payment Link Customizing Theme](images/acceptingPayments/payment-link/features/dashboard-customized-payment-link.webp)

Here is the example of the Payment Link before and after it is customized. The header’s color is customized using brown color and the button’s color uses green color.

![Payment Link Customized](images/acceptingPayments/payment-link/features/payment-link-after-changes.webp)

#### Share Payment Link to multiple channels
You can share created Payment Link directly to your customers through multiple channels, including email, WhatsApp message, and copy link

***Email*** <br/>
Send created Payment Link up to 6 email recipients per Payment Link. This feature is supported for creation via OY! Dashboard and API. Sending Payment Links via email is free of charge.

You can fill the email recipients in the “Email(s)” field under “Customer Detail” section when creating Payment Links via OY! Dashboard. Separate multiple emails using semicolon (;) characters. Example: <email1@company.com>;email2@company.com;email3@company.com

If you use Payment Link API, you can insert the email recipients under the “customer\_email” parameter when creating Payment Links. Please refer to the [Payment Link Creation](https://api-docs.oyindonesia.com/#api-create-payment-link-fund-acceptance) section in the API Docs for further details.

***WhatsApp*** <br/>
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

***Copy Link*** <br/>
After creating Payment Links, you will receive a URL link that can be copied and shared to your customers

If you create the Payment Link via OY! Business App, you can use the built-in share feature from your mobile device when sharing Payment Link. 

![Payment Link Sharing Capabilities](images/acceptingPayments/payment-link/features/copy-link.webp)

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

![Payment Link Notifications to Payer](images/acceptingPayments/payment-link/features/dashboard-notif-for-sender.webp)

Note: If you do not put any of your customer’s email during Payment Link creation, OY! will not send any receipt via email even though you enabled the notification configuration

You can also receive the receipt to your email once payment is made by the customer. Configure sending receipt via emails to your customers by going through this steps:

1. Log in to your OY! Dashboard account
1. Go to “Settings” → “Notifications”
1. Click “Receive Money (To Receiver)”
1. Choose “Enable Success Notification” for Payment Link and/or Invoice Link
1. You can fill up to 3 email recipients. Separate the emails using semicolon (;) characters. Example: <email1@company.com>;email2@company.com;email3@company.com
1. Save the changes by clicking “Save Changes”
1. You will receive an email for every successful Payment Link payments made by your customers 

![Payment Link Notifications to Merchant](images/acceptingPayments/payment-link/features/dashboard-notif-for-receiver.webp) 

#### Embedding Payment Link to your website/application
Create a seamless payment experience for your customers by inserting a created Payment Link to your website or application. Customers can stay on your page without being redirected to another page to complete the payments. There are many ways that you can show a Payment Link inside your page, and here are several suggestions that you can use: Pop Up - Center, Pop Up - Right, Pop Up - Left, and Slide - Right. Please refer to [Embed Payment Link](https://api-docs.oyindonesia.com/#pop-seamless-payment-experience-fund-acceptance) in the API Docs to see detailed implementation of inserting Payment Link to your application.
#### Refund payments to customer
When your customer receives a defective product or the product is not delivered, they might request to refund the payment. You can directly refund payments to your customer’s account via OY! Dashboard. A refund can either be full or partial. A full refund gives your customers the entire amount back (100%). A partial refund returns the amount partially. 

Refunds are free of charge. However, the admin fee charged for the original payment is not refunded by OY! to your balance.

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

By enabling Retry Callback, OY! will try to resend another callback to your system if your system does not receive the callback successfully. You can request to resend a callback using Manual Retry Callback or Automatic Retry Callback. 

##### Manual Retry Callback

Manual Retry Callback allows you to manually send callbacks for each transaction from OY! Dashboard. Here are the steps to do so:

1. Login to your account in OY! Dashboard
1. Open “Payment Link” and choose "One Time"/"Reusable" depending on the transaction
1. Search the record of the transaction and click 3 dots button under “Action” column
1. Make sure that you have set up your Callback URL via “Settings” → “Developer Option” → “Callback Configuration”
1. Make sure to whitelist OY’s IP to receive callbacks from OY! 
   - 54.151.191.85
   - 54.179.86.72
1. Click “Resend Callback” to resend a callback and repeat as you need

![Payment Link Manual Retry Callback](images/acceptingPayments/payment-link/features/dashboard-resend-callback.webp) 

##### Automatic Retry Callback
Automatic Retry Callback allows you to receive another callback within a certain interval if the previous callback that OY! sent is not received successfully on your system. OY! will try to resend other callbacks up to 5 times. If your system still does not receive any callbacks after 5 retry attempts from OY, OY! will notify you via email. You can input up to 6 email recipients and it is configurable via OY! Dashboard. 

Callback Interval: Realtime → 1 minute (after the initial attempt)→ 2 minutes (after the first retry attempt)→ 13 minutes (after the second retry attempt) → 47 mins (after the third retry attempt) 

OY! sends the first callback to your system once the transaction is successful on OY!’s side. If your system fails to receive the callback, OY! will send the first retry callback attempt to your system immediately. If your system still fails to receive the callback, OY! will send the second retry callback attempt 1 minute after timeout or getting a failed response from your side. The process goes on until you successfully receive the callback or all retry callback attempts have been sent.

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

![Payment Link Automatic Retry Callback](images/acceptingPayments/payment-link/features/dashboard-developer-option.webp) 

#### Multi Entity Management
Multi Entity Management is a feature that can help you handle multiple OY! accounts under one entity. The account that acts as an admin is called a Main Entity and the accounts that can be controlled by the admin are called Sub Entity. 

Using this feature, you are able to accept payments from your customers through Payment Link that is created on behalf of a Sub Entity. When your users make a successful transaction, the transaction will be recorded in the Sub Entity’s balance. As a Main Entity, you are equipped with the ability to view the Sub Entities' balance and transaction list anytime through Multi Entity → Sub Entity Statement.

Please refer to the [Multi Entity Management](https://docs.oyindonesia.com/#how-to-use-multi-account-management) section in this documentation for detailed information

### Registration and Setup
Here are the steps to guide you through registration and set up for creating Payment Link transactions. 

1. Create an account at OY! Dashboard
1. Do account verification by submitting the verification form. Ensure to tick the “Receive Money” product since Payment Link is a part of Receive Money products.
1. OY! team will review and verify the form and documents submitted 
1. Once verification is approved, set up your receiving bank account information. Important Note: Ensure that the receiving bank account information is accurate as you can only set it up once via OY! Dashboard for security reasons
1. By default, you get several payment methods on the get go, including all Bank Transfers (excl. BCA)
1. Other payment methods like QRIS, Ewallets, and BCA need additional onboarding to be available to use. Please refer to this section for detail guidelines:
   - [E-wallet Activation](https://docs.oyindonesia.com/#e-wallet-payment-methods)
   - [QRIS Activation](https://docs.oyindonesia.com/#qris-payment-methods)
   - [VA BCA Activation](https://docs.oyindonesia.com/#bank-transfer-virtual-account-payment-methods)

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

![Payment Link Creation](images/acceptingPayments/payment-link/creating-payment-link/creation.webp) 

|Field|Description|
| :- | :- |
|Amount|The amount that will be displayed in the payment link. You must fill this field if you use a closed amount.  |
|Description (Optional)|You can describe the payment context to customers through the description. |
|Partner Transaction ID|A unique transaction ID that you can assign to a transaction|
|Balance Destination|<p>Only available if you use Multi Entity Management.</p><p></p><p>You can choose between “My Balance” or “My Sub Entity’s Balance”</p><p></p><p>My Balance: Once a transaction is successful, the fund will be settled to your balance account</p><p>My Sub Entity’s Balance: Once a transaction is successful, the fund will be settled to your selected Sub Entity’s balance account. </p>|
|Customer Detail|Customer details that can be specified (optional): Customer Name, Phone Number, Email, and Notes. We will send the payment link to the specified email address (if email address is filled in)|
|Amount Type|<p>You can choose between “Open Amount” and “Closed Amount”.</p><p></p><p>Open Amount: Accept payments of any amount, OR up to specified amount (if Amount is filled during creation ). </p><p>Closed Amount: Only accept payments of the specified amount</p>|
|Payment Method|<p>The payment method that you can choose to enable/disable for your customers. The payment methods available are Bank Transfer (via Virtual Account and Unique Code), Cards (Credit Card/Debit Card), E-Wallet, and QRIS</p><p></p>|
|Admin Fee Method|<p>You can choose between "Included in total amount" or "Excluded from total amount". </p><p></p><p>Included in total amount:  Admin fee will be deducted from the amount</p><p>Excluded from total amount: Admin fee will be added to the customer's total payment. Total Amount = Specified Amount + Admin Fee</p>|
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
   - For e-wallet Transactions, the customers can be automatically redirected to the e-wallet’s app (DANA, LinkAja, ShopeePay) or receive notification from the e-wallet’s app (OVO)
   - For Credit & Debit Cards, customers will be redirected to fill the card number, card expiry date, and CVV
1. You have to be aware that each Payment Method has a different expiry time to complete payments. Please refer to the table below for information
1. To simulate demo transactions, please refer to these sections:
   - [Simulate Virtual Account payments](https://docs.oyindonesia.com/#bank-transfer-virtual-account-payment-methods)
   - [Simulate Unique Code payments](https://docs.oyindonesia.com/#bank-transfer-unique-code-payment-methods)
   - [Simulate E-wallet payments](https://docs.oyindonesia.com/#e-wallet-payment-methods)
   - [Simulate Cards payments](https://docs.oyindonesia.com/#cards-payment-methods-payment-methods)
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


## VA Aggregator
Businesses are struggling to manage hundreds or even thousands of physical bank accounts that are used for different purposes. It causes significant overhead costs in terms of the amount of account maintenance and manhours needed for reporting and reconciliation purposes, combining different information from different accounts.

Virtual Account (VA) is essentially a dummy account that is linked to a physical account and has all the physical account characteristics that enable a much easier reporting and reconciliation process by centralizing the money flow into the physical account. By issuing VAs, you can assign each VA for a specific person and/or purposes.

Virtual Account (VA) Aggregator is a feature that is specifically designed to generate Virtual Account that enable you to receive payments from your end-users via virtual account (VA) bank transfer. If you intend to use multiple payment methods to receive payment for one transaction, you should consider Payment Link and Payment Routing instead. 

Generally, you may create a VA number for your customers via API VA Aggregator. However, if you prefer to create VA without API integration, then you may do so via OY! Dashboard by clicking the Virtual Account (Created VA) tab under the “Receive Money” section. 

### Flow 
![VA Aggregator Flow](images/acceptingPayments/va-aggregator/payment-flow.webp)


### Features 
1. Flexible creation – either via Dashboard or API 
   - You can create the VA number either by OY! Dashboard or API. Don’t worry if you don’t have the resources to conduct API integration since you can still create VA number and receive payment from your customers through OY! Dashboard 
1. Support VA payments from multiple banks. Currently we support VA payments from 8 banks: 
    1. Bank Central Asia (BCA) 
    1. Bank Rakyat Indonesia (BRI) 
    1. Bank Mandiri 
    1. Bank Negara Indonesia (BNI) 
    1. Bank CIMB & CIMB Syariah
    1. Bank SMBC 
    1. Bank Syariah Indonesia (BSI)
    1. Bank Permata & Permata Syariah
1. Quick settlement for majority of the banks 
   - We understand that you need the funds to be as quickly as possible to be settled to you. We offer real-time settlement for majority of the banks listed so you should not worry about your cashflow.
1. Customizable VA types 


<table>
  <tr>
    <th valign="top"><b>Category</b></th>
    <th valign="top"><b>Feature</b></th><th valign="top"><b>Description</b></th>
  </tr>
  <tr>
    <td rowspan="2" valign="top">Validity Period</td>
    <td valign="top">Static (Lifetime) </td>
    <td valign="top">VA that has a lifetime validity. It will always be active and available to receive payment until it is manually deactivated.</td>
  </tr>
  <tr>
    <td valign="top">Dynamic </td>
    <td valign="top">VA that has a specific validity period. It will always be active until it is expired or manually deactivated.</td>
  </tr>
  <tr>
    <td rowspan="2" valign="top">Usage Frequency</td>
    <td valign="top">Single Use</td>
    <td valign="top">VA that expires after a single payment. A single-use configuration can only be set up for a dynamic VA.</td>
  </tr>
  <tr>
    <td valign="top">Multiple Use</td>
    <td valign="top">VA that only expires when the expiration date is reached or when it is manually deactivated. You may also customize the limit of maximum payment. VA Multiple Use with customized maximum payment number will expire after the payment number limit is exceeded even if it has not reached the expiration time yet.</td>
  </tr>
  <tr>
    <td rowspan="2" valign="top">Amount</td><td valign="top">Closed Amount</td>
    <td valign="top">VA that only accepts payment of a specific amount as set when you create the VA number.</td>
  </tr>
  <tr>
    <td valign="top">Open Amount</td>
    <td valign="top">VA that accepts payment of any amount. You do not need to specify the amount when creating the VA number. </td>
  </tr>
  <tr>
    <td rowspan="2" valign="top">VA Number</td>
    <td valign="top">Customizable</td>
    <td valign="top"><p>You may personalize the VA suffix using the numbers you want (e.g. your end-users' phone number or billing number). To enable VA number customization, please contact your business representative. You may refer to the  <a href="https://api-docs.oyindonesia.com/#create-customized-va-va-aggregator">API Docs - Create Customized VA Number</a></p><p></p><p>Specifically for this feature, we currently only support BRI and CIMB. </p></td>
    </tr>
  <tr>
    <td valign="top">Predetermined</td>
    <td valign="top">OY! will create the VA number combination on your behalf. You may refer to the <a href="https://api-docs.oyindonesia.com/#create-va-va-aggregator">API Docs - Create VA Number</a>
    </td>
    </tr>
</table>

5. Capability to Update VA 
   1. After you have created the VA number, you are still able to modify the parameters below: 
      - VA Amount (amount) 
      - Multiple Use / Single Use (is\_single\_use) → you may update a single use VA to be a multiple use VA and vice versa 
      - Email (email)
      - Transaction Counter (trx\_counter) → you may update the number of payments a VA number can accept
      - Transaction Expired Time (trx\_expired\_time) → the expiration time of a transaction of a VA number
      - Expired Time (expired\_time) → the expiration time of a VA number. The VA expiration time must be at least equal or greater than the transaction expiration time 
      - Username Display (username\_display) → the VA name that is displayed when your customer inputs the VA number in their mobile/internet banking application 
   1. Once a VA is updated, the new set of configuration will apply for that VA and the previous configuration is no longer applicable
1. Automatic Callback & Retry Callback
   - You will get a callback for each successful VA payment from your customers via API. In addition, you may activate our “Enable Automatic Retry Callback” via OY! Dashboard (Settings → Developer Option → Callback Configuration tab). By activating this feature, if on the first try the callback is not successfully received by your system, then OY! system will automatically retry the callback delivery until 5 attempts. If all callback attempts still returned failed, OY! system will send email notification to email address that has been set in your configuration.
   - You will also get a callback for each successful transaction fund settlement to your OY! balance 
1. Minimum & Maximum Amount 
   - Minimum amount for each VA transaction is Rp 10,000 (for closed amount) 
   - Maximum amount for VA transactions depends on the banks: 


|Banks|Max. Amount per transaction |
| :-: | :-: |
|Bank Central Asia (BCA) |Rp 50,000,000|
|Bank Negara Indonesia (BNI) |Rp 50,000,000|
|Bank Rakyat Indonesia (BRI) |Rp 500,000,000|
|Bank Mandiri |Rp 500,000,000|
|Bank CIMB |Rp 500,000,000|
|Bank SMBC |Rp 500,000,000|
|Bank Syariah Indonesia (BSI)|Rp 50,000,000|
|Bank Permata|Rp 500,000,000|


### Use Cases 

![VA Aggregator Use Case](images/acceptingPayments/va-aggregator/use-cases.webp)

### Registration and Set Up 
Here are the procedures to activate VA Aggregator feature: 

1. Create an OY! account 
1. Do account verification by submitting the verification form. Ensure to tick the “Receive Money” product since VA Aggregator is a part of Receive Money products.
1. OY! team will review and verify the form and documents submitted
1. Once verification is approved, set up your receiving bank account information. Important Note: Ensure that the receiving bank account information is accurate as you can only set it up once via OY! Dashboard for security reasons
1. You may need to submit additional documents to be able to use VA for BCA (including, but not limited to, Taxpayer Registration Number (NPWP), and Nationality ID) 
1. If you have any questions or concerns during this process, feel free to contact your business representative or email <business.support@oyindonesia.com> 


If you plan to use VA Aggregator by API, then you need to do additional steps: 

1. Submit your IP address(es) & callback URL to your business representative or send an email to [business.support@oyindonesia.com](mailto:business.support@oyindonesia.com). The maximum number of IP addresses that can be registered are 5 addresses. 
1. OY! will send the Production API Key as an API authorization through your business representative. 
   Note: Staging/Demo API Key can be accessed via OY! Dashboard by going to the “Demo” environment and the key can be found on the bottom left menu. 
1. Integrate API VA Aggregator to your system. Please follow the API documentation to guide you through[ ](https://api-docs.oyindonesia.com/#api-create-payment-checkout)[API Docs - VA Aggregator](https://api-docs.oyindonesia.com/#create-customized-va-va-aggregator)


### Testing 
1. Create VA Number via API 
1. After creating an account, log on to OY! Dashboard and click “Try in Demo” button that will redirect you to our staging environment 
1. Scroll down to the bottom left of the navigation bar and copy the API staging key for your perusal 
1. Using the API staging key, create a VA number by sending a POST request to <https://api-stg.oyindonesia.com/api/generate-static-va>. Enter the required parameters stated in the API Docs 
1. OY! system will respond to your request with a created VA number 
1. Create VA via Dashboard 
   1. After creating an account, log on to OY! Dashboard and click “Try in Demo” button that will redirect you to our staging environment 
   1. Scroll down to “Receive Money” tab → Virtual Account → Created VA
   1. Click the top right button “Create Virtual Account” 
   1. You may choose to create the VA number(s) by uploading an Excel file (with the format as the template) or by inputting the VA number manually (in this case, you may click the “Add Virtual Account Details Manually” button) 
   1. After you have successfully uploaded the file or filled in the fields (if manual), click “Validate” button on the bottom right corner 
   1. After you have successfully validated your entries, click “Submit” button on the bottom right corner 
   1. Once you have successfully submitted your request, you will be redirected to Created VA page where you can see your newly created VA numbers
   1. Your created VA numbers should be ready to use 
1. Simulating Successful Callback 
   1. To simulate a successful payment, ensure that you are in our staging environment. Click “Try in Demo” button that will redirect you to our staging environment
   1. Scroll down to “Settings” tab → Callback Bank Transfer 
   1. Choose the “Virtual Account” as the Transaction Type 
   1. Select the Bank Name of the VA number that you have previously created 
   1. Enter the VA number and amount. For Closed VA, you need to enter the exact amount of the VA as created 
   1. Enter the payment date and time. Ensure that payment date and time are greater than created but less than expiration time 

### How to Use 
1. Viewing list of Created VA 
   1. You can monitor your created VA numbers through the “Receive Money” tab → Virtual Account → Created VA
   1. You can also see their payment status, amount, VA type, and count of completed transactions. You may also click to export these details to your device as PDF, Excel or CSV 
   ![VA Aggregator Monitor Created Transactions](images/acceptingPayments/va-aggregator/viewing-list-of-created-va.webp)
1. Viewing list of VA Payment 
   1. For all successful VA transactions, you can monitor them through the “Receive Money” tab → Virtual Account → Incoming Payment 
   1. You can also see the transaction timestamp, status, amount, admin fee and other information.  You may also click to export these details to your device as PDF, Excel or CSV 
   ![VA Aggregator Monitor Incoming Transactions](images/acceptingPayments/va-aggregator/viewing-list-of-incoming-payment.webp)


### VA Bank Details 
Capabilities 


|Banks|Bank Code|Open Amount |Closed Amount |Max. Expiration Time|
| :-: | :-: | :-: | :-: | :-: |
|Bank Central Asia (BCA) |014|Yes|Yes|Lifetime|
|Bank Negara Indonesia (BNI) |009|Partial*|Yes|Lifetime|
|Bank Rakyat Indonesia (BRI) |002|Yes|Yes|Lifetime|
|Bank Mandiri |008|Yes|Yes|Lifetime|
|Bank CIMB |022|Yes|Yes|Lifetime|
|Bank SMBC |213|Yes|Yes|Lifetime|
|Bank Syariah Indonesia (BSI)|451|No|Yes|70 days after creation|
|Bank Permata|013|Yes|Yes|Lifetime|

*contact our business representative for further information

Note: there is no minimum expiration time for VAs. However, you are recommended to set a reasonable expiration time, enabling your customers to complete their payments conveniently.


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
| SMBC                   | Yes  | No   | Yes | Yes (Mobile Banking), No (Internet Banking)     | No                       | Yes                          |
| BSI                    | No   | No   | Yes | Yes      | Yes                                 | Yes                      |





## API E-Wallet Aggregator 
E-Wallet API allows clients to charge and receive payments directly from Indonesia's top e-wallet providers. With one integration, they are able to get access to all of OY’s available e-wallets.

### Flow

![E-wallet Aggregator Flow](images/acceptingPayments/api-e-wallet-aggragator/payment-flow.webp)

### Features
#### Support multiple E-wallets
Our E-wallet Aggregator product support e-wallet transactions from these issuers:

- ShopeePay
- LinkAja
- DANA
- OVO

#### Monitor transactions via OY! Dashboard
All created e-wallet transactions are shown in OY! Dashboard. Navigate to “E-Wallet” to see the list of transactions. Inside the dashboard, you can see the details of the transactions, including all the transaction information inputted during creation, status of transactions, and the payment reference number. The dashboard also has a feature to search, filter, and export the list of transactions in various formats: Excel (.xlsx), PDF (.pdf), and CSV (.csv)

![Monitor E-wallet Aggregator Transaction](images/acceptingPayments/api-e-wallet-aggragator/dashboard-selesai.webp)

#### Receipt for successful payments
Customers can receive receipt of successful payments via email(s) that you provided during the creation process. Configure sending receipt via emails to your customers by going through these steps:

1. Log in to your OY! Dashboard account
1. Go to “Settings” → “Notifications”
1. Click “Receive Money (To Sender)”
1. Choose “Enable Success Notification” for E-Wallet API
1. Input your logo to be put on the email in URL format (<https://example.com/image.jpg>) 
    - If you do not have the URL for your logo, you can use online tools like [snipboard.io](https://snipboard.io/) or [imgbb](https://imgbb.com/).
    - Once you convert your logo to a URL, the correct URL should look like this:
      - Snipboard.io: <https://i.snipboard.io/image.jpg>
      - Ibbmg: <https://i.ibb.co/abcdef/image.jpg>
1. Save the changes by clicking “Save”
1. Create an E-Wallet transaction via API  and input the customer’s email address in the “email” parameter. 
1. Your customer will receive successful receipt to the emails once payment is made

![Receipt for successful Payment](images/acceptingPayments/payment-link/features/dashboard-notif-for-sender.webp)

Note: If you do not put any of your customer’s email during transaction creation, OY! will not send any receipt via email even though you enabled the notification configuration
#### Retry notification/callback for successful payments
OY! will send a notification/callback to your system once a transaction is marked successful. Therefore, you will be notified if the customer has already completed the payment. There might be a case where your system does not receive the notification successfully. 

By enabling Retry Callback, OY! will try to resend another callback to your system if your system does not receive the callback successfully. You can request to resend a callback using Manual Retry Callback or Automatic Retry Callback. 

##### Manual Retry Callback
Manual Retry Callback allows you to manually send callbacks for each transaction from OY! Dashboard. Here are the steps to do so:

1. Log in to your account in OY! Dashboard
1. Navigate to “E-Wallet API ”
1. Search the record of the transaction and click 3 dots button under “Action” column
1. Make sure that you have set up your Callback URL via “Settings” → “Developer Option” → “Callback Configuration”
1. Make sure to whitelist OY’s IP to receive callbacks from OY! 
   - 54.151.191.85
   - 54.179.86.72
1. Click “Resend Callback” to resend a callback and repeat as you need

![Manual Retry Callback](images/acceptingPayments/api-e-wallet-aggragator/dashboard-callback.webp)

##### Automatic Retry Callback
Automatic Retry Callback allows you to receive another callback within a certain interval if the previous callback that OY! sent is not received successfully on your system. OY! will try to resend other callbacks up to 5 times. If your system still does not receive any callbacks after 5 retry attempts from OY, OY! will notify you via email. You can input up to 6 email recipients and it is configurable via OY! Dashboard. 

Callback Interval: Realtime → 1 minute (after the initial attempt)→ 2 minutes (after the first retry attempt)→ 13 minutes (after the second retry attempt) → 47 mins (after the third retry attempt) 

OY! sends the first callback to your system once the transaction is successful on OY!’s side. If your system fails to receive the callback, OY! will send the first retry callback attempt to your system immediately. If your system still fails to receive the callback, OY! will send the second retry callback attempt 1 minute after timeout or getting a failed response from your side. The process goes on until you successfully receive the callback or all retry callback attempts have been sent.

Automatic Retry Callback is not activated by default. You can see the guideline below to enable Automatic Retry Callback:

1. Login to your account in OY! Dashboard
1. Go to “Settings” and choose “Developer Option". 
1. Choose “Callback Configuration” tab
1. Input your callback URL in the related product that you want to activate. Make sure you input the correct URL format. Please validate your callback URL by clicking “URL String Validation”
1. If you want to activate automated retry callback, tick the Enable Automatic Retry Callback for related products. You must input the email recipient(s) to receive a notification if all the callback attempts have been made but still failed in the end.
1. Make sure to whitelist OY’s IP to receive callbacks from OY
   - 54.151.191.85
   - 54.179.86.72
1. Make sure to implement the idempotency logic in your system. Use “tx\_ref\_number” parameter as the idempotency key to ensure that multiple callbacks under “tx\_ref\_number”  key should not be treated as multiple different payments.
1. Save the changes

![Automatic Retry Callback](images/acceptingPayments/api-e-wallet-aggragator/dashboard-developer-option.webp)

#### Refund transactions to customer
When your customer receives a defective product or the product is not delivered, they might request to refund the transaction. You can directly refund transactions to your customer’s account via OY! Dashboard. A refund can either be full or partial. A full refund gives your customers the entire amount back (100%). A partial refund returns the amount partially. 

Refunds are free of charge. However, the admin fee charged for the original transaction is not refunded by OY! to your balance.

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
1. Follow the registration process for each e-wallet that you want to use. Please refer to this section for detailed guidelines: [e-wallet Activation](https://docs.oyindonesia.com/#e-wallet-payment-methods)
1. Submit your IP address(es) & callback URL to your business representative or send an email to our support team, <business.support@oyindonesia.com> .
1. OY! will send the Production API Key as an API authorization through your business representative. 
   Note: Staging/Demo API Key can be accessed via OY! Dashboard by going to the “Demo” environment and the key can be found on the bottom left menu. 
1. Integrate E-wallet API to your system. Please follow the API documentation to guide you through.[ E-wallet - API Docs](https://api-docs.oyindonesia.com/#create-e-wallet-transaction-api-e-wallet-aggregator) 

### Creating E-wallet transactions
Create E-wallet Transactions: Use this API to create an E-wallet transaction for your user

You can create E-Wallet transactions via API only. Here are the guidelines to create E-wallet transactions via API:

1. Integrate API Create E-wallet transactions to your system. [Create E-wallet - API Docs](https://api-docs.oyindonesia.com/#https-request-create-e-wallet-transaction)
1. Hit OY!’s API to Create E-wallet transaction.
1. OY! will return the information to complete the payment
   - For e-wallets that use the redirection method (i.e. ShopeePay, DANA, LinkAja), OY! will return the e-wallet URL to complete the payment. You can share the URL to your customer.
   - For e-wallets that use the push notification method (i.e. OVO), the e-wallet provider will send a notification to your customer’s e-wallet app to complete the payment

Note: When you hit Create E-Wallet Transaction endpoint in Staging/Demo environment, it will always return the same ewallet_url & success_redirect URL in the response: https://pay-dev.shareitpay.in/aggregate-pay-gate. You cannot simulate payment by clicking this URL.

In order to be able to simulate payment, please refer to this section: Simulate [E-Wallet Payments - Product Docs](https://docs.oyindonesia.com/#e-wallet-payment-methods)

### Completing transaction
Each e-wallet provider has a different method to complete the transaction, redirection or push notification method. ShopeePay, LinkAja, and DANA use a redirection method. Meanwhile, OVO uses a push notification method. Please refer to these guidelines for completing transactions based on each provider:

1. Complete e-wallet transactions via ShopeePay [ShopeePay Payment Journey](https://docs.oyindonesia.com/#e-wallet-payment-methods)
1. Complete e-wallet transactions via LinkAja [LinkAja Payment Journey](https://docs.oyindonesia.com/#e-wallet-payment-methods)
1. Complete e-wallet transactions via DANA [DANA Payment Journey](https://docs.oyindonesia.com/#e-wallet-payment-methods)
1. Complete e-wallet transactions via OVO [OVO Payment Journey](https://docs.oyindonesia.com/#e-wallet-payment-methods)

To simulate demo transactions, please refer to this section: Simulate [E-Wallet Payments - Product Docs](https://docs.oyindonesia.com/#e-wallet-payment-methods)

### Checking transaction status
All created E-wallet transactions are shown in OY! Dashboard. Navigate to “E-Wallet” to see the list of transactions. Inside the dashboard, you can see the details of the transactions, including all the transaction information inputted during creation, status of transactions, and the payment reference number. The dashboard also has a feature to search, filter, and export the list of transactions in various formats: Excel (.xlsx), PDF (.pdf), and CSV(.csv)

There might be times when your customer already completed the payments but the transaction status is not updated to success. Therefore, we also recommend you to check the transaction status periodically via the Check Status E-wallet API. [Check Status E-Wallet - API Docs](https://api-docs.oyindonesia.com/#https-request-check-e-wallet-transaction-status)

### Receiving fund to balance
Once a transaction is paid by the customer, OY! updates the transaction status and sends callback to your system that the transaction has been paid. OY! also sends/settles the funds to your OY! balance. Each provider has a different settlement time, varying from D+1 to D+2 working days. 

## API Payment Routing
Payment Routing API is a service that allows you to receive payments & send money in one integrated API. It enables you to automatically send money to several recipients once you receive payments from your customers. You can save development time by integrating with Payment Routing API as it provides two services at once

<table>
  <tr>
    <th colspan="2" valign="top">Payment Routing Type</th>
    <th valign="top">Features </th>
  </tr>
  <tr>
    <td rowspan="2" valign="top">Transaction Type</td>
    <td valign="top">Payment Aggregator</td>
    <td valign="top"><p>Receive payments only</p><p></p><p>All-in-one API to receive payments via bank transfers, e-wallets, QRIS, and cards.</p></td>
  </tr>
  <tr>
    <td valign="top">Payment Routing</td>
    <td valign="top">Receive payments and automatically send the money to several recipients</td>
  </tr>
  <tr>
    <td rowspan="2" valign="top">Receive Money Type</td>
    <td valign="top">Without UI</td>
    <td valign="top">
      <p>You have your own checkout page and OY! provides the payment details</p>
      <p></p>
      <p>OY! provides the payment details information after creation (e.g. VA number, e-wallet URL, QR code URL, etc)</p>
      <p></p>
      <p>Support one payment method only (Single Payment & Direct Payment)</p>
    </td>
  </tr>
  <tr>
    <td valign="top">With UI</td>
    <td valign="top">
      <p>Use OY! built-in checkout page (Payment Link) </p>
      <p></p>
      <p>OY! provides the Payment Link after creation</p>
      <p></p>
      <p>Support multiple payment methods in one transaction</p>
    </td>
  </tr>
</table>

#### Use Cases
**Payment Aggregator**

1. Single Payments
    - Single payment is a type of payment that allows your customer to complete payments easily. Available for Bank Transfer (Virtual Account & Unique Code), E-Wallet, QRIS, and Cards.
1. Direct Payments
    - Direct payment requires account linking, meaning that your customer must connect their payment account to your system before completing payments. You can do this by using our API Account Linking. Direct payments offer a more seamless payment experience. After successful linkage, your customer does not need to open or get redirected to the payment provider application to complete payments. This feature is currently only available for e-wallet ShopeePay. 

**Payment Routing**

1. Investment 
    - OJK regulation does not allow investment applications to keep users balance. Use payment routing to receive funds from investors and directly send the funds to custodian banks.
2. E-Commerce
    - Receive goods payments from customers and directly send the merchant’s share to the merchant’s bank account. 
3. Education
    - Receive tuition payments from parents and directly send the admin fee to the school’s bank account 
4. Loan Application
    - Receive loan repayments from the borrower and directly disburse the money to the lender’s pooling account or the borrower’s pooling account.


### Flow

![Payment Routing Aggregator Scheme](images/acceptingPayments/api-payment-routing/payment-flow-without-ui-scheme.webp)

![Payment Routing Payment Link Scheme](images/acceptingPayments/api-payment-routing/payment-flow-with-ui-scheme.webp)

### Features

#### Support multiple payment methods
OY! supports various payment methods in the Payment Routing API, including: 

1. Bank Transfer 
   - Virtual Account: BCA, BNI, BRI, Mandiri, CIMB, SMBC, BSI, Permata
   - Unique Code: BCA
1. E-wallet
   - Single Payments: ShopeePay, DANA, LinkAja
   - Direct Payments: ShopeePay
1. Cards: Visa, Mastercard, JCB
1. QRIS 

#### Send money to multiple recipients in a real-time manner
Once you receive payments from the customer, OY! can directly send the money up to 10 recipients without waiting for the settlement, as long as you have enough balance in your OY! account. Depending on the payment methods used, some transactions might not be settled real-time to your balance (e.g. QRIS, e-wallet). Therefore, you must  keep enough balance to cater the sending money process.

#### Use Payment Links to receive money
There are two types of receiving money: With UI and Without UI. The Without UI scheme can be used if you have your own checkout page and you only need the payment details information to complete the payments. Here are the payment information you will receive after successful transaction creation:

1. Bank Transfer - Virtual Account: destination bank, VA number, and amount of transaction
1. Bank Transfer - Unique Code: destination bank, bank account number, bank account name, billed amount (original amount), unique amount, and total amount (final amount)
1. QRIS: URL to access the QR code
1. E-wallets: link to redirect your customer to the respective e-wallet selected
1. Cards:  link to redirect your customer to fill in card details and proceed to payment

However, if you do not have your own checkout page, no need to worry as you can use OY’s checkout page (Payment Link) for Payment Routing transactions. You can do so by filling the “need\_frontend” parameter with “TRUE” in the creation API. 

Read more about payment link in [Payment Link - Product Docs](https://docs.oyindonesia.com/#payment-link-accepting-payments).


#### Create E-Wallet Direct Payment transactions
Payment Routing API supports Direct Payment transactions where your customer is not redirected to an external payment provider’s application/website to complete payments, resulting in a more seamless transaction and better payment experience. This feature is currently only supported for e-Wallet ShopeePay

Refer to this section to understand how e-Wallet One-Time payments differs from Direct Payments: [E-Wallet Payment Type](https://docs.oyindonesia.com/#e-wallet-payment-methods)

#### Transaction tracking and monitoring capability
All created Payment Routing transactions are shown in the OY! Dashboard. Navigate to “Payment Routing” to see the list of created transactions. Inside the dashboard, you can see the details of the transactions, including all the transaction information inputted during creation, the transaction status , and the payment reference number\*. The dashboard also has a feature to search, filter, and export the list of transactions in various formats: Excel (.xlsx), PDF (.pdf), and CSV (.csv)

![Payment Routing Monitoring Transactions](images/acceptingPayments/api-payment-routing/dashboard.webp)

\*Payment Reference Number is an identifier of a payment attempt when the customer successfully completes a QRIS payment. The reference number is also displayed in the customer’s receipt/proof of transaction. Only available for QRIS transactions.
#### Use the same Virtual Account number for different transactions
One customer might do payments for multiple transactions and use the same bank each time. By generating the same VA number for different transactions, it makes the payment easier for your customer as they can save the VA number on their mobile banking application. You can only use the same VA number for one active transaction at a time. 
### Registration and Setup
Here are the steps to guide you through registration and set up for creating Payment Routing transactions. 

1. Create an account at OY! Dashboard
1. Do account verification by submitting the verification form. Ensure to tick the “Receive Money” and “Send Money” products since Payment Routing is a part of Receive Money & Send Money products.
1. OY! team will review and verify the form and documents submitted 
1. Once verification is approved, set up your receiving bank account information. Important Note: Ensure that the receiving bank account information is accurate as you can only set it up once via OY! Dashboard for security reasons
1. By default, you get several payment methods on the get go, including all Bank Transfers (excl. BCA)
1. Other payment methods like QRIS, E-wallets, Cards, and BCA need additional onboarding to be available to use. Please refer to this section for detail guidelines:
   1. [E-wallet Onboarding](https://docs.oyindonesia.com/#e-wallet-payment-methods)
   1. [QRIS Onboarding](https://docs.oyindonesia.com/#qris-payment-methods)
   1. [VA BCA Onboarding](https://docs.oyindonesia.com/#bank-transfer-virtual-account-payment-methods)
   1. [Cards Onboarding](https://docs.oyindonesia.com/#cards-payment-methods-payment-methods)
1. Submit your IP address(es) & callback URL to your business representative or send an email to <business.support@oyindonesia.com> 
1. OY! will send the Production API Key as an API authorization through your business representative. 
   Note: Staging/Demo API Key can be accessed via OY! Dashboard by going to the “Demo” environment and the key can be found on the bottom left menu. 
1. Integrate Payment Routing API to your system. Please follow the API documentation to guide you through. [Payment Routing - API Docs](https://api-docs.oyindonesia.com/#payment-routing) 

### Creating Payment Routing transactions
Once you successfully complete the registration process, you can immediately create Payment Routing transactions (via API only). You can create a transaction using the Without UI scheme or With UI scheme, depending on the use case. 

#### Without UI Scheme
1. Integrate API Create Payment Routing transactions to your system. [Create Payment Routing - API Docs](https://api-docs.oyindonesia.com/#https-request-create-and-update-payment-routing)
1. Hit OY!’s API Create Payment Routing transaction
   1. Insert parameter “need\_frontend” with "FALSE"
   1. Choose one payment method to accept the payment. You can choose between BANK\_TRANSFER, EWALLET, QRIS, or CARDS.
   1. Insert the chosen payment method into the “list\_enable\_payment\_method” parameter. Note: Ensure that you only input one payment method since you use the Without UI scheme, otherwise you will get an error message
   1. Choose one bank/payment provider (SOF) based on the payment method. 
      1. BANK\_TRANSFER: 014, 009, 002, 008, 022, 213, 011, 016, 484, 451, 013. Refer to this section to see all supported banks and the bank\_code: Bank Transfer - Payment Method
      1. EWALLET: shopeepay\_ewallet, dana\_ewallet, linkaja\_ewallet
      1. QRIS: QRIS
      1. CARDS: CARDS
   1. Insert the chosen SOF into the “list\_enable\_sof” parameter. Note: Ensure that you only input one SOF since you use the Without UI scheme, otherwise you will get an error message
   1. If you want to use e-wallet Direct Payment, fill “use\_linked\_account” with “TRUE”, otherwise fill the parameter with “FALSE”. Only available for ShopeePay. You must do Account Linking prior to creating direct payment transactions. Refer to this section to understand about [Account Linking](https://docs.oyindonesia.com/#api-account-linking-accepting-payments). 
   1. If you want to send the money once you receive payments, fill in the destination bank account number and the amount of each recipient under the “payment\_routing” object. 
1. OY! will return the information to complete the payment based on the requested payment method
   1. Bank Transfer - Virtual Account: destination bank, VA number, and amount of transaction
   1. Bank Transfer - Unique Code: destination bank, bank account number, bank account name, billed amount (original amount), unique amount, and total amount (final amount)
   1. QRIS: URL to access the QR code
   1. E-wallets: link to redirect your customer to the respective e-wallet selected
   1. Cards:  link to redirect your customer to fill in card details and proceed to payment
1. Show the payment details to your customer inside your application

#### With UI Scheme
1. Integrate API Create Payment Routing transactions to your system. [Create Payment Routing - API Docs](https://api-docs.oyindonesia.com/#https-request-create-and-update-payment-routing)
1. Hit OY!’s API Create Payment Routing transaction
   1. Insert parameter “need\_frontend” with "TRUE"
   1. Choose the list of payment methods to accept the payment. You can choose to insert BANK\_TRANSFER, EWALLET, QRIS, and CARDS.
   1. Insert the list of chosen payment methods into the “list\_enable\_payment\_method” parameter. You can insert multiple payment methods to let your customer choose the preferred payment method
   1. Choose banks/payment providers (SOF) for each payment method. 
      1. BANK\_TRANSFER: 014, 009, 002, 008, 022, 213, 011, 016, 484, 451, 013
      1. EWALLET: shopeepay\_ewallet, dana\_ewallet, linkaja\_ewallet
      1. QRIS: QRIS
      1. CARDS: CARDS
   1. Insert the list of chosen SOFs into the “list\_enable\_sof” parameter. You can insert multiple banks/payment providers to let your customer choose the preferred payment method
   1. If you want to send the money once you receive payments, fill in the destination bank account number and the amount of each recipient under the “payment\_routing” object. 
1. OY! will return the Payment Link URL and you can share this to your customer. 

### Completing payments

#### Without UI Scheme
Each payment method has a different flow to complete the transaction, depending on the nature of each payment method. Please refer to these guidelines for completing transactions based on each payment method:

1. [Complete Bank Transfer - Virtual Account transactions](https://docs.oyindonesia.com/#bank-transfer-virtual-account-payment-methods)
1. [Complete Bank Transfer - Unique Code transactions](https://docs.oyindonesia.com/#bank-transfer-unique-code-payment-methods)
1. [Complete QRIS transactions](https://docs.oyindonesia.com/#qris-payment-methods)
1. [Complete E-wallet transactions](https://docs.oyindonesia.com/#e-wallet-payment-methods)
1. [Complete Cards transactions](https://docs.oyindonesia.com/#cards-payment-methods-payment-methods)

To simulate demo/staging transactions, please refer to this section:

1. [Simulate Bank Transfer - Virtual Account payments](https://docs.oyindonesia.com/#bank-transfer-virtual-account-payment-methods)
1. [Simulate Bank Transfer - Unique Code payments](https://docs.oyindonesia.com/#bank-transfer-unique-code-payment-methods)
1. Simulate QRIS payments\* 
1. [Simulate E-wallet payments](https://docs.oyindonesia.com/#e-wallet-payment-methods)
1. [Simulate Cards payments](https://docs.oyindonesia.com/#cards-payment-methods-payment-methods)

\*currently not available

#### With UI Scheme
Once you successfully create a Payment Routing using With UI scheme, you may share the link to your customers. The steps for your customers to complete a transaction using With UI scheme is the same as completing a Payment Link transaction. Please refer to this section: 
[Completing Payment Link transactions - Product Docs](https://docs.oyindonesia.com/#completing-payments-payment-link) 
### Checking transaction status
All created Payment Routing transactions are shown in OY! Dashboard. Navigate to “Payment Routing” to see the list of created transactions. Inside the dashboard, you can see the details of the transactions, including all the transaction information inputted during creation, transaction status, and the payment reference number\*. The dashboard also has a feature to search, filter, and export the list of transactions in various formats: Excel (.xlsx), PDF (.pdf), and CSV (.csv)

If for some reason you do not receive our transaction callbacks successfully, you may use our API Check Status to get the latest transaction status. [Check Status Payment Routing - API Docs](https://api-docs.oyindonesia.com/#check-status-payment-routing-transaction-payment-routing). 
##
\*Payment Reference Number is an identifier of a payment attempt when the customer successfully completes a QRIS payment. The reference number is also displayed in the customer’s receipt/proof of transaction. Only available for QRIS transactions.
### Receiving fund to balance
Once a transaction is paid by the customer, OY! updates the transaction status and sends notification to your system indicating that the transaction has been paid, and settles the funds to your OY! balance. Each payment method has a different settlement time, varying from real-time to D+2 working days. 
### Sending funds to recipients
Payment Routing allows you to disburse funds automatically once the transaction is paid by the customer. OY! automatically sends the funds to the recipient(s) stated in the creation process once the payment is received. You need to make sure that you have enough balance to carry out the disbursement process, especially for payment methods that have non-real time settlement; otherwise, the disbursement process fails due to insufficient balance. 

## API Account Linking
Account Linking is a feature that allows your customer's payment account to be linked to your system using tokenization. By linking the customer’s account upfront, your customer can see their account balance inside your application and later on can complete payments without being prompted for any card details or e-wallet phone number. The feature is currently supported for e-wallet ShopeePay & DANA. 

Account linking feature is free of charge.

### Flow

![Account Linking Flow](images/acceptingPayments/api-account-linking/payment-flow-api-account-linking.webp)
![Get Account Balance Flow](images/acceptingPayments/api-account-linking/payment-flow-api-get-e-wallet-balance.webp)
![Account Unlinking API Flow](images/acceptingPayments/api-account-linking/payment-flow-unlink-account-via-api-accoung-linking.webp)
![Account Unlinking via App Flow](images/acceptingPayments/api-account-linking/payment-flow-unlink-account-via-e-wallet-app.webp)

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
1. Hit OY!’s [API Get Linking URL](https://api-docs.oyindonesia.com/#get-linking-url-api-account-linking) . You will receive a linking URL as a response. The linking URL is used for the customer to authorize the linking request by giving a permission.
1. Customer gives a permission and inputs PIN to authorize the request
1. Payment provider will process the request and OY! will send you a callback to notify that the account is successfully linked
1. Customer is redirected to the redirect URL you specified when hitting the Get Linking URL API 

### Check customer’s payment account balance
Once the customer linked their payment account, you can get the information of the customer's account balance by hitting the API Get E-wallet balance. You can show the balance inside your application. For instance, show the balance during the checkout process so the customer can know their balance before choosing a payment method. Please refer to the API Docs for more details: [Get Account Balance API - API Docs](https://api-docs.oyindonesia.com/#get-e-wallet-account-balance-api-account-linking)

### Unlink customer’s payment account from your application
Customers who have linked their payment account can unlink their account anytime. They can do so via API Account Unlinking or via Payment Provider Application. Using the API Account Unlinking allows your customers to unlink their account inside your application. Another option that the customer can do is to unlink their account via the payment provider’s application.


Here are the steps to guide you and your customer when unlinking an account:

**API Account Unlinking**

1. Integrate API Account Unlinking to your system. [Account Unlinking - API Docs](https://api-docs.oyindonesia.com/#unlink-account-api-account-linking)
1. Hit OY!’s API Account Unlinking. Once you hit our API, OY! will hit the provider’s system to unlink the customer’s account
1. OY! will send a callback to let you know that the unlinking is successful


**Payment Provider Application**

ShopeePay

1. Open Shopee app
1. Navigate to Setting → Apps Linked to ShopeePay
1. Click unlink account for your merchant

DANA

1. Open DANA app
1. Navigate to Account → Linked Accounts
1. Click remove linking for your merchant
1. If your customer's DANA account is frozen, then their account is temporarily unlinked. Once the account is unfrozen and the token has not expired, their account is automatically linked again.


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
![invoice_creation](images/accountReceivable/invoice_creation_page.png)


* Invoice details inside dashboard
![detail_inv_data](images/accountReceivable/detail_invoice_data.png)


* Invoice preview inside the dashboard
![prev_inv](images/accountReceivable/invoice_preview.png)


### Monitoring the account receivable

All of the created invoices (via API or Dashboard) can be monitored through your dashboard (Invoice List).

![ar_table_data](images/accountReceivable/ar_table_data.png)

![ar_detail_data](images/accountReceivable/ar_detail_data_sidemodal.png)


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
![add_cust_creation](images/accountReceivable/add_cust_ar_creation.png)

* Add Customer from Create Invoice
![add_cust_1](images/accountReceivable/add_cust_ar_creation_step1.png)
![add_cust_2](images/accountReceivable/add_cust_ar_creation_step2.png)

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
![customer_management](images/accountReceivable/cust_mgmt_table.png)

* Create Customer page
![add_cust_1](images/accountReceivable/add_cust_step1.png)
![add_cust_2](images/accountReceivable/add_cust_step2.png)

All of the created customers can be monitored through your dashboard (Customer List). There are several actions that you take for the customer data:

| Actions | Functions |
|------|------|
| Edit | To edit the data of the customer |
| Activate/Deactivate | To deactivate / reactivate the customer |

If you click on the row you selected, you will be able to see the detailed data of the customer, including the list of invoices belonging to that customer.

![detail_cust_data](images/accountReceivable/detail_cust_data.png)

![detail_cust_trx](images/accountReceivable/detail_cust_trx.png)



### Amount Customization for Account Receivable

OY! has a feature that allows you to add the price of the subtotal (addition) and/or deduct the price from subtotal. For example, if you want to apply a discount for your customers, or if you want to add shipping fee,service fee, or any other charges that you would like to add or deduct from the subtotal of the invoice. You may refer to the steps below:

1. Click "add column" below the subtotal
1. Choose "addition" or "subtraction" from the dropdown
1. Fill in the description
1. Fill in the amount

* Invoice Creation page
![invoice_creation](images/accountReceivable/invoice_creation_page.png)

* Add Column page
![add_column](images/accountReceivable/add_column.png)


### How to Use Account Receivable via API

OY! allows invoices creation via API. Here are the steps:

1. Create the customer data first by sending a request to https://partner.oyindonesia.com/api/account-receivable/customers. Enter the required and optional fields, as referenced in the [API reference docs](https://api-docs.oyindonesia.com/#https-request-create)
1. Then, you can try to create an account receivable by sending a request to https://partner.oyindonesia.com/api/account-receivable/invoices. Enter the required and optional fields, as referenced in the [API reference docs](https://api-docs.oyindonesia.com/#create-amp-send-invoice-api-account-receivable)
1. An endpoint to [check your account receivable invoice](https://api-docs.oyindonesia.com/#https-request-get-invoice-details) data is also available and can be accessed at any time.
1. Lastly, we provide an endpoint to [cancel your account receivable invoice](https://api-docs.oyindonesia.com/#https-request-cancel-invoice) based on id (unique payment id). The invoice must still be active, a payment method must not have been selected, and status must still be in “WAITING_PAYMENT”.

Just like the account receivable creation from OY! dashboard you can see the transactions and their details from the OY! dashboard. This report will include all payment links generated both via OY! dashboard and API. Data can be differentiate by column “Created Via” on Account Receivable table, if your invoice is created via API then it will fills with “API”, otherwise it will fills with “Dashboard”.

![ar_table](images/accountReceivable/ar_table_data.png)


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

![ar_config](images/accountReceivable/ar_table_data_config.png)

![ar_config_set_appearance](images/accountReceivable/config_set_appearance.png)

* Payment Link Display Settings

![PL_config](images/accountReceivable/payment_link_config.png)


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

![ar_config](images/accountReceivable/ar_table_data_config.png)

![ar_config_set_appearance](images/accountReceivable/config_set_appearance.png)

* Invoice Template Configuration page

![invoice_template_config](images/accountReceivable/invoice_template_config_page.png)

### How to Set Automated Invoice Number

For your convenience, you have the option to auto-generate invoice numbers. No more worrying about the sequence of invoice numbers. The invoice number template has been pre-defined by OY!.

1. Log onto your OY! dashboard
1. Go to Payment Link or Account Receivable section in the dashboard
1. Click the 'Settings" icon located at the top right next to “Create New Invoice” button
1. Turn the toggle on. You can now adjust the automatic invoice number format
1. Click “Save” to continue

* Account Receivable Configuration page

![ar_config](images/accountReceivable/ar_table_data_config.png)

* Configuration Invoice Number page

![ar_config_invoice_no](images/accountReceivable/config_inv_no.png)


**Note:** this changes will not impact your previously created invoices


### Sending Account Receivable Invoice with Payment Link via WhatsApp

For your convenience, you can now distribute invoices to your users via WhatsApp using the default message template. If you are interested in using this feature, please kindly contact our business representative or [customer service team](https://www.oyindonesia.com/en/contact-us).

There will be 2 different ways to distribute the invoice via Whatsapp and there is a maximum of one Whatsapp message per unpaid invoice. When the status is paid, customers will get a payment confirmation from Whatsapp too.

* Option 1 - via Create New Invoice

![WA_creation](images/accountReceivable/send_wa_creation.png)


* Option 2 - via Invoice Table

![WA_table](images/accountReceivable/send_wa_table.png)


* Option 3 - via Invoice Details

![WA_detail](images/accountReceivable/send_wa_detail.png)
