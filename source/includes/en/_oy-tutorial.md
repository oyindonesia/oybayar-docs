# OY! Dashboard Tutorial

## Login

To be able to login to Dashboard;

1. Go to https://desktop-business.oyindonesia.com/login. 
2. Make sure the username and password that you input are correct.

<img data-src="images/desktop_login.png" alt="Login page" loading="lazy" class="lazyload" />

3. You will be redirected to the input the OTP page. The OTP will be sent to the email associated with your username. Then, input the OTP number.

<img data-src="images/desktop_login_otp.png" alt="Login OTP" loading="lazy" class="lazyload" />

<img data-src="images/email_otp.png" alt="Email OTP" loading="lazy" class="lazyload" />

If you tick the 'Remember this device' option, you are not required to input an OTP when you log back in next time. Hence, point 2 is required only when you login for the first time after you create your account.

## Dashboard Analytics

Analytics feature allows you to get some insights about your earning and spending transaction that happened in OY!. With this feature, you can get information about how much money you have spent and how much money you have earned in a time interval. You can see your transaction growth on daily, weekly, or monthly basis. You also can select the time range. You will get some insights about the trend of your business transaction. Therefore, this feature can help you to generate new business decision to grow your business.

<img data-src="images/desktop_analytics_spend_earn.png" alt="Dashboard Analytics Image" loading="lazy" class="lazyload" />

* You can select which time granularity and time period you want to see you transaction growth with. 
* The increase and decrease indicator will compare your transaction performance from the time period you select vs the previous period. 
* If you put your cursor in a line point, the number of transaction volume will be displayed.

For VA, Payment Link, and E-wallet users. Now you can see the comparison of conversion between each payment method your end users are using. This data can be a great insight for you so you know which channel most of your users are using.

<img data-src="images/desktop_analytics_paymethod.png" alt="Dashboard Analytics Payment Method" loading="lazy" class="lazyload" />

## User Management

If you have a Super Admin role, you are able to add account for your team members and define the role for them.

These are the following steps to add new users;

1.  Login to Dashboard.
2.  Go to Accounts -> User Management.
3.  Click the 'Create User' button

<img data-src="images/user_management_1.png" alt="User Management 1" loading="lazy" class="lazyload" />

4.  Fill in the full name, username, email, phone number (optional), and password

<img data-src="images/user_management_2.png" alt="User Management 2" loading="lazy" class="lazyload" />

5.  Choose the role that you want to assign your team member(s) to. You can select between Admin, Approver, and Maker

Aside from adding new users, a Super Admin is also able to edit and delete their existing users through clicking edit/delete button on the User List table.

Here are the access control matrix in OY! Dashboard:

Dashboard features

| Task | Superadmin | Admin | Approver | Maker
|-------|-------|-------|-------|-------|
|Upgrade Account| Can upgrade | Can upgrade | - | - |
|Analytics| Can view | Can view | Can view | Can view |
|Account Statement| Can view and export | Can view and export | Can view and export | Can view and export |
|Settlement Report| Can view and export | Can view and export | Can view and export | Can view and export |
|Top up Balance | Can top up | Can top up | Can top up | Can top up |
|Withdraw Balance | Can withdraw | Can withdraw | Can withdraw | Can withdraw |
|Add User | Can add user | Can add user | - | - |
|User Profile| Can view and edit | Can view and edit | Can view and edit | Can view and edit |
|Business Profile| Can view and edit | Can view and edit | Can view and edit | Can view and edit |
|Authenticator OTP| Has permission | Has permission | Has permission | Has permission |
|Add Payment Method | Can add | Can add | - | - |
|Set up auto report | Can set up | Can set up | - | - |
|Set up auto withdrawal| Can set up | Can set up | - | - |
|Set up multi approval| Can set up | Can set up | - | - |
|Set up notification settings| Can set up | Can set up | - | - |
|Set up developer options| Can set up | Can set up | - | - |
|Add transaction category| Can add | Can add | - | - |
|Config Transaction Receipt | Can config | Can config | Can config | Can config |

Multi Entity Management

| Task | Superadmin | Admin | Approver | Maker
|-------|-------|-------|-------|-------|
|Create Sub-entity| Can create| Can create | - | - |
|Top up Sub-entity via Dashboard| Can top up| Can top up | - | - |
|Disconenct Sub-entity| Can disconnect | Can disconnect | -| -|

Bulk Disbursement Product

| Task | Superadmin | Admin | Approver | Maker
|-------|-------|-------|-------|-------|
|Create Disbursement Campaign| Can create| Can create | - | Can create |
|Approve Disbursement Campaign| Can approve| Can approve | Can approve | - |
|View and Export Bulk Disbursement Report| Can view and export | Can view and export | Can view and export | Can view and export |

Claim Fund Product

| Task | Superadmin | Admin | Approver | Maker
|-------|-------|-------|-------|-------|
|Create Claim Fund | Can create| Can create | - | Can create |
|Approve Claim Fund| Can approve| Can approve | Can approve | - |
|View and Export Claim Fund Report| Can view and export | Can view and export | Can view and export | Can view and export |

Account Payable Invoice

| Task | Superadmin | Admin | Approver | Maker
|-------|-------|-------|-------|-------|
|Create AP Invoice | Can create| Can create | - | Can create |
|Approve AP Invoice | Can approve | Can approve | Can approve | - |
|View and Export AP Report| Can view and export | Can view and export | Can view and export | Can view and export |

Payment Link One time and Reusable Product

| Task | Superadmin | Admin | Approver | Maker
|-------|-------|-------|-------|-------|
|Create Payment Link| Can create| Can create | Can Create | Can create |
|View and Export Payment Link Report| Can view and export | Can view and export | Can view and export | Can view and export |

Virtual Account

| Task | Superadmin | Admin | Approver | Maker
|-------|-------|-------|-------|-------|
|Create VA via Dashboard| Can create| Can create | Can Create | Can create |
|View and Export VA Report| Can view and export | Can view and export | Can view and export | Can view and export |

E-Wallet Aggregator

| Task | Superadmin | Admin | Approver | Maker
|-------|-------|-------|-------|-------|
|View and Export E-Wallet Report| Can view and export | Can view and export | Can view and export | Can view and export |

Account Receivable Invoice

| Task | Superadmin | Admin | Approver | Maker
|-------|-------|-------|-------|-------|
|Create AR Invoice | Can create| Can create | Can create | Can create |
|View and Export AP Report| Can view and export | Can view and export | Can view and export | Can view and export |

API Inquiry

| Task | Superadmin | Admin | Approver | Maker
|-------|-------|-------|-------|-------|
|View and Export API Inquiry Report| Can view and export | Can view and export | Can view and export | Can view and export |

API Transaction Data

| Task | Superadmin | Admin | Approver | Maker
|-------|-------|-------|-------|-------|
|View and Export API Transaction Data Report| Can view and export | Can view and export | Can view and export | Can view and export |


## 2-Factor Authentication

To increase the security of your account, you can set up 2-factor Authentication. Currently, the security method that OY provides is through an authenticator app

These are the following steps to set up the 2-factor authentication;

1. Login to Dashboard.
2. Go to Accounts -> Authenticator OTP.
3. Download Authenticator App in your smartphone (from Play Store/App Store) or PC (you can download an extension for your browser). Examples of the app: Google Authenticator, Microsoft Authenticator, Authy, etc
4. Scan the barcode displayed on your OY Dashboard with your Authenticator App OR enter the setup key displayed next to it on your Authenticator App.
5. Please type in the 6-numerical code displayed on your Authenticator App in the 'Authenticator OTP' on OY Dashboard.

## Top Up

Top up is used to add balance to your OY account.

Here's how you can access the top-up menu on your dashboard;

1.  Login to Dashboard.
2.  Go to Transaction Report -> Account Statement.
3.  Click the 'How To Top Up' button. There are 2 ways in which you can top up your OY account:

### Top Up via Virtual Account
  The Virtual Account number information can be found on 'How to Top Up Balance via VA' tab once you click the 'How To Top Up' button. If you choose to top up via VA, the topped up amount will be credited into your account real-time and you do not need to send any manual confirmation to OY

<img data-src="images/desktop_topup.png" alt="VA Topup" loading="lazy" class="lazyload" />

### Manual Top Up via Bank Transfer
  Aside from Virtual Account, you can also transfer the top up money to OY's giro account. If you choose to top up via this method, you need to perform a manual confirmation in order that your money can be credited into your account.

After you have completed the fund transfer to OY! Indonesia, you need to perform the following steps;

1. Click the 'Manual Top Up Confirmation' tab on the top-up menu

<img data-src="images/manual_topup.png" alt="Manual Topup" loading="lazy" class="lazyload" />

2. Fill in the fields with the following information;

| Field Name            | Description                                                                                                                                                                                                                                                                                                                                                         |
| --------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Amount                | The amount that you have topped up (as per written in the Bukti Transfer)                                                                                                                                                                                                                                                                                           |
| Beneficiary Bank      | A dropdown where you can choose to which bank you have transferred the top up amount to                                                                                                                                                                                                                                                                             |
| Transfer Receipt      | Click the upload button to upload the Bukti Transfer obtained after you have successfully performed the transfer. Can be in PDF, PNG, or JPEG format, with max. file size 10 MB                                                                                                                                                                                     |
| Transfer Receipt Type | Transfer Receipt with Reference Number --> If your uploaded transfer receipt displays the reference number, you need to choose this option. Transfer Receipt without Reference Number --> If your uploaded transfer receipt doesn't display the reference number, you need to choose this option and fill in the date & timestamp according to your Bukti Transfer. |

3. Click 'Submit Now'
4. You will receive a receipt of your transaction in your email, stating that your transaction is currently being processed

<img data-src="images/topup_confirmation_dashboard.png" alt="Topup Confirmation Dashboard" loading="lazy" class="lazyload" />

<img data-src="images/topup_confirmation_email.png" alt="Topup Confirmation Email" loading="lazy" class="lazyload" />

5. You will receive an email confirming whether your top up is success or failed

<img data-src="images/success_failed_confirmation.png" alt="Success Failed Confirmation" loading="lazy" class="lazyload" />

### Top Up using BCA with Unique Code
  Now, we provide you with a new method for BCA. Top-up using BCA with a unique code allows you to top up your balance in a real-time manner. You do not have to confirm manually as we will automatically detect your top-up and reflect it to your balance.

Steps:

1. In the top up page, click on the “BCA Unique Code” tab.
2. Input the amount you want to top up. Note : The minimum amount that we allow for this method is IDR10,000.

<img data-src="images/desktop_bcauniquecode_input_amount.png" alt="BCA Unique Code Input Amount" loading="lazy" class="lazyload" />

3. OY! will display the amount you input PLUS three-dgits unique code generated by us. Transfer the exact nominal that appeared on the screen to the bank account stated on the page. Please make sure to use BCA bank account. 

<img data-src="images/desktop_bcauniquecode_transfer.png" alt="BCA Unique Code Transfer" loading="lazy" class="lazyload" />

4. After the transaction is successful, the ORIGINAL AMOUNT will be reflected in your balance.
Note :  The operational hour for this method is every day, from 3.01 AM to 8.30 PM. Outside those hours, this method will be closed.

<img data-src="images/desktop_bcauniquecode_success.png" alt="BCA Unique Code Transfer" loading="lazy" class="lazyload" />

## Withdrawal

When you want to withdraw, do the following steps:

1.  Go to Transaction Report -> Account Statement
2.  Click Withdraw
3.  Fill in the amount that you want to withdraw

<img data-src="images/withdrawal_topup.png" alt="Withdrawal Top Up" loading="lazy" class="lazyload" />

4.  Choose your withdrawal type. You can pick one from the following options:

    - Instant with admin fee -> This means that your withdrawal will be processed and arrive into your receiving bank real-time. If the amount to be withdrawn is <= IDR 50 million and the receiving banks are BCA, BRI, BNI, Mandiri, Permata, DBS and CIMB Niaga, you can choose this option. You will be charged an admin fee if you choose this option

    - Manual -> This means that your withdrawal will be processed up to 2 business days. If the amount to be withdrawn is > IDR 50 million OR the receiving banks are not BCA, BRI, BNI, Mandiri, Permata, DBS or CIMB Niaga, you have to choose this option. You will NOT be charged an admin fee if you choose this option.

### Setting Up Auto Withdrawal Process

If you want to set up an **Auto Withdrawal** periodically, go to Settings -> Auto Withdrawal.

<img data-src="images/auto_withdrawal.png" alt="Auto Withdrawal" loading="lazy" class="lazyload" />

Here's how you can configure the auto withdrawal settings;

| Field Name               | Description                                                                                                                                                                                                                                                                                                                                                       |
| ------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Auto Withdrawal Schedule | The schedule of your auto withdrawal. Options available: Daily, Weekly, Bi-Weekly, Monthly                                                                                                                                                                                                                                                                        |
| Start Date               | Start date of your auto withdrawal schedule                                                                                                                                                                                                                                                                                                                       |
| Ends                     | Options available: Never -> if the auto withdrawal will go on for an indefinite time, By Date -> if the auto withdrawal will end on a specific date. If you choose this option, you need to fill in the date on which you plan to end the auto withdrawal process                                                                                                 |
| Amount                   | Amount to be automatically withdrawn. Options available: Maxiitym amount -> Withdraw the maximum available balance, Specified Amount -> custom specified amount. Note: Maximum Amount is recommended for Auto Withdrawal transactions as withdrawals will not be processed if the specified amount is greater than the OY balance when the withdraw scheduler runs |
| Withdrawal Type          | Options available: 1) Instant, or 2) Manual.                                                                                                                                                                                                                                                                                                                      |
| Email                    | An email we will send the notification to. Use (;) between email to differentiate them (Max. 5 emails can be inputted)                                                                                                                                                                                                                                            |

## Transaction Report - Settlement Report

Settlement Report stores the list of transactions corresponding to payment methods that are not settled on a real-time basis (delayed settlement). For example, if for VA BCA the settlement time is H+2, each new VA BCA transaction performed by your customers will appear on the Settlement Report.

To access the Settlement report;

- Login to Dashboard
- Go to Transaction Report -> Settlement Report

<img data-src="images/settlement_report.png" alt="Settlement Report" loading="lazy" class="lazyload" />

The Settlement Report consists of the following information;

- Total Amount to be Settled Today: This tells you the sum of amount scheduled to be settled to your account statement balance today
- Total Delayed Settlement Amount: This tells you the sum of amount not yet settled to your account statement. (the settlement status is still not SUCCESS)
- The Settlement Transaction List Table

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

If the Settlement Status of a transaction is still WAITING, it will not yet appear as a row in your Account Statement report and the amount will not yet be added in your Account Statement balance.

If the Settlement Status of a transaction is already SUCCESS, it will appear as a row in your Account Statement report and the amount will be added in your Account Statement balance.

### Callback for Delayed Settlement (Non-Real Time Settlement)

If your settlement is non-real time, for every transaction whose payment method is settled H+>0, you will receive two callbacks with details as follows:

1. 1st Callback -> To be sent after your customer successfully executes the transaction. For example, if your customer executes the transaction on 11 May 2021 at 14:00:00, that is also when we send the 1st Callback to you. In the 1st callback, the settlement status is set to WAITING (because it is not yet settled to your Account Statement balance)
2. 2nd Callback -> To be sent after the settlement status is changed from WAITING into SUCCESS. For example, if the settlement status is changed into SUCCESS on 12 May 2021 at 15:00:00, that is also when we send the 2nd Callback to you. In the 2nd callback, the settlement status is SUCCESS

### Capability to Export and Filter the Settlement Report

Export: You are able to export/download the settlement report in CSV, PDF, and XLSX.

Filter: You are able to filter the settlement report by transaction date (range), product, payment method, settlement date (range), and settlement status

## Notification

You can enable or disable notification settings for low balance, send money products and receive money products if you have a super admin or admin role:

1. Login to dashboard https://business.oyindonesia.com/
2. Go to Settings -> Notification
   <img data-src="https://user-images.githubusercontent.com/79620482/126457509-ca20c24b-9277-4be4-943e-801b79806e65.png" alt="Notif Disbursement - 1  Initial" loading="lazy" class="lazyload" />
3. If you want to notified by email if your balance is low, set in the "Low Balance" tab. Input the amount threshold and the email where the notification will be sent to.
4. Choose whether or not you want notifications enabled or disabled for 
Bulk Disbursement or API Disbursement.
   a. Enable Notification: Email notification will be sent for pending, failed and success transactions.
   b. Disable Success Notification: email notification will only be sent for pending and failed transactions.
5. Choose whether or not you want notifications enabled or disabled for 
Payment Link, or VA.
   a. Enable Notification: Email notification will be sent for success transactions.
   b. Disable Success Notification: No email notification will be sent.
6. The email field: allows the user to add, remove, and edit email notification receivers in this column, which can hold up to three email addresses.
7. Click ‘Save Changes’

## Multi Entity Management

Multi Entity Management is a feature that can help you handle complex relations between entities in your business in the OY! Dashboard. You can connect to other entities in the form of Main Entity - Sub Entities (1 to N relationship). The one who become the Main Entity will have a capability to oversee te sub-entities' transaction and execute transaction using its sub-entities' balance. Please contact our Business Development if you’re interested to use this feature.  
With this feature you will be able to :

1. Have a detailed report on transactions performed by all of sub-entity account.
2. Distribute balance between the main entity account to sub-entity account.
3. Use sub-entity account balance to disburse funds.
4. Receive money using Payment Link on behalf of sub-entity's username.
5. Free admin fee to disburse between related user.

### **Registration & Setup**

**Prerequisites**

- Register an account on the [OY! dashboard](https://business.oyindonesia.com/register?)
- Activate your account through the activation link sent via email
- Upgrade your account
- Upgrade request is approved
- Contact our representatives to enable the feature

### **How To Use**

To properly used Multi Entity Management, we required several accounts to be linked together. Each account can be used independently, and there will be some requirements that you should fulfil in order to use this feature. Please contact our representatives for more information.

**A. Link to Sub-entity Account**

1. **For Main Entity Account**

To add a new sub-entity,please 1) Log in to Dashboard with main account credential 2) Go to Multi Entity → List of Sub-entity

<img data-src="../images/MEM_Add_Sub_Entity_1.png" alt="Image: As a Main Entity - Add a New Sub-entity" loading="lazy" class="lazyload" />

1. Click the “+ Add Sub-Entity
2. Fill in the username for the sub-entity you wished to connect. You can find your username from the menu Accounts → User Profile in the Username section
3. Click Add and then if the account is found in the system you can confirm by clicking Connect in the confirmation window

<img data-src="../images/MEM_Add_Sub_Entity_2.jpg" alt="Image: As Main Entity - Subs - 6. Add Child - Type Username" loading="lazy" class="lazyload" /> 
After confirming, the request will be sent to the respective account to be accepted

1. **For Sub-entity Account**

To receive a request from a main entity , please 1) Log in to dashboard with child credential 2) Go to Transaction Report → Account Statement
<img data-src="../images/As_Child_AccState_2b_Waiting_approval.png" alt="Image: As Child - AccState - 2b. Waiting approval" loading="lazy" class="lazyload" />

1. Click the “Check All request” button that can be found near the top right corner of the page
2. You will see the incoming request to be the main entity account for your account, then you can choose which account is the correct account for the main entity by click Accept in the respective account and confirmation window

<img data-src="../images/As_Child_AccState_4b_2_Requests_to_connect.png" alt="Image: As Child - AccState - 4b. 2 Requests to connect.png" loading="lazy" class="lazyload" /><img data-src="../images/As_Child_AccState_4e_Confirmation_to_connect.png" alt="Image: As Child - AccState - 4e. Confirmation to connect" loading="lazy" class="lazyload" />

3. After successfully received the main entity request to connect, you will find your parent information near the top right corner of your page, and you are now connected with your main entity.

<img data-src="../images/As_Child_AccState_4h_Success_add_new_head_company.png" alt="Image: As Child - AccState - 4h. Success add new head company" loading="lazy" class="lazyload" />

**B. Topup money to a sub-entity account**

After connected with your sub-entities, you can transfer money to the sub-entity account by accessing the menu Multi Entity → List of Sub-entity
1. Find the account that you wished to top-up
2. Click the “+ Top Up” button
3. Fill in the amount you wish to top-up
4. Click the “Top Up Now” button to proceed
5. You can also do Top Up by transfer to one of the VA provided (see “How to Top Up Balance via VA”

<img data-src="../images/As_Parent_Subs_5a_Top_Up.png" alt="Image: As Parent - Subs - 5a. Top Up.png" loading="lazy" class="lazyload" />

**C. Disburse Money using a sub-entity's balance**

In Multi Entity Management, you will be able to do disbursement using your sub-entity account on their behalf. To do this you could

1. Access the Bulk Disbursement menu and clicking on “+ Create Disbursement” button
2. Select your sub-entity balance as a source of fund to do disbursement by selecting “My Sub-entity Balance” and choose the appropriate account.
3. After choosing the balance you could proceed to do disbursement just like regular disbursement

<img data-src="images/MEM_select_subentity_disbursement.png" alt="Image: Choose SoF - 2. Choose SoF subsidiary.png" loading="lazy" class="lazyload" />

**D. Create a payment link on behalf of a sub-entity account**

With this feature, you will be able to accept payment from your users through Payment Link created on behalf of your sub-entity account. When your users make a successful transaction, the transaction will be recorded in the Sub-entity Account's balance. As a main entity, you are equipped with the ability to view the Sub-entity Account's balance and transaction list anytime through Multi Entity → Sub-entity Statement. 

Follow the below steps to create a payment link on behalf of a sub-entity account:

***Via API***

Hit [API Create Payment Link](https://api-docs.oyindonesia.com/#api-create-payment-link-fund-acceptance) and fill in "child_balance" parameter with the username of a sub-entity account that you will set as the balance destination for the transaction. When your users make a successful transaction, the transaction will be recorded in the specified Sub-entity Account's balance.

***Via Dashboard***
 
1. Click Payment Link -> One-time (if you want to create a one-time payment link) or Click Payment Link -> Reusable (if you want to create a reusable payment link)
2. Click "Create One-Time Link" (for one-time payment link) or click "Create Reusable Link" (for reusable payment link)
3. You will see a pop-up to proceed with the creation process
4. Fill in "Balance Destination" with "My Balance" (if the balance destination of the transaction is your own) or "Sub-entity Balance" (if the balance destination of the transaction is your sub-entity's). If you select "Sub-entity Balance", you will see a dropdown to select a username of the sub-entity account. Only 1 sub-entity account is currently allowed to be a balance destination
5. If you select "Sub-entity Balance", when your users make a successful transaction, the transaction will be recorded in the specified Sub-entity Account's balance.

<img data-src="images/MEM_select_subentity_paymentlink.png" alt="MAM Payment Link" loading="lazy" class="lazyload" />

## Xero Integration

Xero is an accounting platform that is mainly used by companies. We have integrated our system to Xero system in order to help you optimize your workflow. By connecting your OY! account to your Xero account, you do not have to login to your Xero account. Means that you do not have to manually record your transaction that happened in OY! to Xero. You will get seamless experience of recording your transaction.

### How does it works?

Once you have connected your Xero account in OY!, any transaction that happened in OY! will be automatically recorded to your Xero tenant account. Upon successful connection, we will trigger creation of new Bank Account, which is OY! Balance Bank Account. Any transaction that happened in OY! will be recorded in that bank account, to SPEND or RECEIVE money transaction. Then, you will be required to map your Xero’s Chart of Account. Mapping your Chart of Accounts will help us to put your transaction into a correct Account.

### Connect your Xero

- Login to your dashboard. In the sidebar, select Integration menu.
<img data-src="images/xero/menu.png" alt="Integration Menu" loading="lazy" class="lazyload" />

- You will see Xero menu. Click “Connect” to connect your Xero account to OY!. You will be redirected to Xero’s login page. Once you have successfully logged in to Xero, a notification will appear.
<img data-src="images/xero/product_list.png" alt="Product List" loading="lazy" class="lazyload" />

Preview for Xero's login page
<img data-src="images/xero/login_xero.png" alt="Xero's Login Page" loading="lazy" class="lazyload" />
<img data-src="images/xero/consent_page.png" alt="Consent Page" loading="lazy" class="lazyload" />

Preview for Notification
<img data-src="images/xero/connect_success_notification.png" alt="Notification" loading="lazy" class="lazyload" />

- Upon success connect to Xero, we will create a new Bank Account into your Xero account, named “OY! balance” in which any transaction happened in OY! will be recorded there.
<img data-src="images/xero/new_account.png" alt="New Account" loading="lazy" class="lazyload" />

### Map your Chart of Account

- Once you have successfully connected to Xero, you will be directed to a page to map your Chart of Account.
<img data-src="images/xero/coa_mapping.png" alt="Configure Account Page" loading="lazy" class="lazyload" />

- Then, map each product to the corresponding Account. Any transaction using each product will be put into the chart of account you defined in this page. 
<img data-src="images/xero/coa_mapping_modal.png" alt="Mapping Modal" loading="lazy" class="lazyload" />
<img data-src="images/xero/coa_mapping_modal_2.png" alt="Mapping Modal" loading="lazy" class="lazyload" />

Note: Special for Bulk Disbursement product, you can define the Chart of Account later in the campaign creation process - Step 3 Input Detail page. In the Transaction Category field.

<img data-src="images/desktop_accountingapp_bulkdisbursement.png" alt="Bulk Disbursement CoA" loading="lazy" class="lazyload" />

- You can change the CoA mapping anytime as needed, just go to Integration >> Xero >> Configuration.

### Record Transaction to Xero

- Now, your OY! account has been connected to your Xero account and each products has been mapped to its corresponding Chart of Account.
- Any success transaction that happened in OY! will be recorded to Xero with the corresponding Account you defined in Mapping Account menu.
- Transaction in OY! will be treated as SPEND or RECEIVE money transaction in a bank account (OY! Balance). 
- Each transaction will contains of two rows. Row 1 contains of amount of transaction where row 2 contains of admin fee.
- In this version, any tax will be excluded. Means that you will need to input manually the tax invoice you obtained from OY! team to your Xero.
<img data-src="images/xero/recorded_transaction.png" alt="Recorded Transaction" loading="lazy" class="lazyload" />
<img data-src="images/xero/recorded_transaction_2.png" alt="Recorded Transaction" loading="lazy" class="lazyload" />


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

<img data-src="images/desktop_accurate_connect.png" alt="Connect Accurate" loading="lazy" class="lazyload" />

3. After login to your Accurate account, click Allow to allow conection between OY! and Accurate.
<img data-src="images/desktop_accurate_authorize.png" alt="User Consent Accurate" loading="lazy" class="lazyload" />

4. Next, please select an Accurate database that you want to connect with your OY! account.
<img data-src="images/desktop_accurate_select_database.png" alt="Accurate Select Database" loading="lazy" class="lazyload" />

5. Once you have successfully connected to Accurate, a notification in your OY! dashboard will appear and you can see your status is now "Connected/Terhubung".

<img data-src="images/desktop_accurate_connected_status.png" alt="Accurate Connected" loading="lazy" class="lazyload" />

6. Upon success connecting to Accurate, we will create a new Bank Account into your Accurate account, named “OY! balance” in which any transaction that happened in OY! will be recorded there. Your current OY! balance will also be mapped there.

7. In your Accurate Dashboard, you can see that OY! Indonesia app will be listed in the Accurate Store >> Aplikasi Saya menu.
<img data-src="images/desktop_accurate_listing.png" alt="Accurate Listing" loading="lazy" class="lazyload" />
<img data-src="images/desktop_accurate_aplikasisaya.png" alt="Accurate Aplikasi saya" loading="lazy" class="lazyload" />

8. Note: A fee of IDR 20k/month will be added to your Accurate billing.

### Map your Chart of Account (Akun Perkiraan)

1. Click on "Configure" to map your Chart of Account (Akun Perkiraan).
2. Then, map each product to the corresponding Account. Any transaction using each product will be put into the Chart of Accounts you defined on this page. 

<img data-src="images/desktop_accurate_config_coa.png" alt="Accurate Config COA" loading="lazy" class="lazyload" />

Note: Special for Bulk Disbursement product, you can define the Chart of Account later in the campaign creation process - Step 3 Input Detail page. In the Transaction Category field.

<img data-src="images/desktop_accountingapp_bulkdisbursement.png" alt="Bulk Disbursement CoA" loading="lazy" class="lazyload" />

3. You can change the CoA mapping anytime as needed, just go to Integration >> Accurate >> Configure.


### Record Transaction to Accurate
1. Now, your OY! account has been connected to your Accurate account and each product has been mapped to its corresponding Chart of Account.
2. Any successful transaction that happened in OY! will be recorded to Accurate with the corresponding Account you defined in the Mapping Account menu.
3. Transactions in OY! will be recorded in Pengeluaran or Pemasukan module, under OY! Balance bank account. It will also credited/debited your OY! Balance Bank Account. 
4. Note: For some reasons, we do not map Top up and Withdraw balance transactions to Jurnal. Therefore, you should adjust your bank’s Cash Bank account balance as well as OY! Indonesia Cash Bank account balance in your Accurate dashboard everytime you execute top up and withdraw transactions.


### Disconnected your Accurate 
1. To disconnect your Accurate account from OY!, open the Integration menu on the sidebar. Then select “Disconnect”.

<img data-src="images/desktop_accurate_connected_status.png" alt="Accurate Connected" loading="lazy" class="lazyload" />

2. Then, you will be disconnected from Accurate. Any transaction that you execute via OY! will not be recorded in Accurate.
3. Note: To remove the bill, please make sure you also uninstall OY! app in your Accurate dashboard.


## Jurnal Integration
Jurnal is a local accounting platform that is mainly used by companies in Indonesia. We have integrated our system to the Jurnal system in order to help you optimize your workflow. By connecting your OY! Account, you do not have to manually record your transaction that happened in OY! to Jurnal. You will get a seamless experience of recording your transaction.

### How does it work?
Once you have connected your Jurnal account in OY!, any transaction that happened in OY! will be automatically recorded to your Jurnal account. Upon successful connection, we will trigger the creation of a new Bank Account, which is OY! Balance Bank Account. You will be required to map your Jurnal’s Chart of Account. Mapping your Chart of Accounts will help us to put your transaction into the correct Account. Transactions that happened in OY! will be recorded in that bank account, into the EXPENSES or SALES INVOICE modules.

### Connect your Jurnal
1. Before connecting your Jurnal account, you need to log in to your Jurnal account in your browser.

<img data-src="images/jurnal_login.png" alt="Jurnal Login" loading="lazy" class="lazyload" />

2. Login to your OY! dashboard. In the sidebar, select the "Integration" menu.

3. You will see the Jurnal menu. Click “Connect” to connect your Jurnal account to OY!. 

<img data-src="images/jurnal_integration_menu.png" alt="Jurnal Connect" loading="lazy" class="lazyload" />


4. There will be a page to ask for your consent regarding this connection process. Make sure to select OY! Indonesia. Click Allow to allow connection between OY! and Jurnal.

<img data-src="images/jurnal_authorization_page.png" alt="Jurnal Authorization" loading="lazy" class="lazyload" />

5. Once you have successfully connected to Jurnal, a notification in your OY! dashboard will appear and you can see your status is now "Connected/ Terhubung".

<img data-src="images/jurnal_connection_success.png" alt="Jurnal Connection Success" loading="lazy" class="lazyload" />

<img data-src="images/jurnal_success_notif.png" alt="Jurnal Notification" loading="lazy" class="lazyload" />

<img data-src="images/jurnal_connection_status.png" alt="Jurnal Connection Status" loading="lazy" class="lazyload" />

6. Upon success connecting to Jurnal, we will create a new Bank Account into your Jurnal account, named “OY! Balance”. Any transaction that happened in OY! will be recorded under that bank account. Your current OY! balance will be mapped into your OY! Balance Cash Bank Account as a bank deposit transaction. 

<img data-src="images/jurnal_oy_balance.png" alt="Jurnal OY! Balance" loading="lazy" class="lazyload" />

### Map your Chart of Account
1. Click on "Configure" button in the "Integrasi" menu to map your Chart of Account.

2. Then, map each product to the corresponding Account. Any transaction using each product will be put into the Chart of Accounts you defined on this page.

<img data-src="images/jurnal_coa_mapping.png" alt="Jurnal COA Mapping" loading="lazy" class="lazyload" />

3. Note: Special for Bulk Disbursement product, you can define the Chart of Account later in the campaign creation process - Step 3 Input Detail page. In the Transaction Category field.

<img data-src="images/jurnal_bulk_disburse_coa.png" alt="Jurnal Bulk Disburse COA" loading="lazy" class="lazyload" />

4. You can change the CoA mapping anytime as needed, just go to Integration >> Jurnal >> Configure.

5. Note: currently, we do not include mapping and recording the PPN tax. The applied tax will be recorded to Admin Fee Chart of Account. We will update this document as soon as possible once we have included mapping PPN function.

### Record Transaction to Jurnal
1. Now, your OY! account has been connected to your Jurnal account and each product has been mapped to its corresponding Chart of Account.
2. Any successful transaction that happened in OY! will be recorded to Jurnal with the corresponding Account you defined in the Mapping Account menu. Transactions from OY! will be recorded in the Expenses or Sales Invoice module, under OY! Balance bank account and it will credited/debited your OY! balance bank account. Note: Admin Fee of Receive Money transactions will be recorded in the Expenses module.

3. In this image, we show you a Disbursement Transaction with CoA "Iklan & Promosi" and admin fee with CoA "Komisi & Fee". It is recorded into the "Expenses" module in your Jurnal account with status LUNAS.


4. Note: For some reasons, we do not map Top up and Withdraw balance transactions to Jurnal. Therefore, you should adjust your bank’s Cash Bank account balance as well as OY! Indonesia Cash Bank account balance in your Jurnal dashboard everytime you execute top up and withdraw transactions.

### Disconnected your Jurnal
1. To disconnect your Jurnal account from OY!, open the Integration menu on the sidebar. Then select “Disconnect”.
2. Then, you will be disconnected from Jurnal. Any transaction that you execute via OY! will not be recorded in Jurnal.



## OY!'s Authorization Callback
When you successfully complete a transaction using OY!'s API-based product, OY! will send a callback to your system. To keep your system secure, we have provided a feature that allows you to control and approve these callbacks from OY! before they are received by your system. 

Currently, we only support configuration for the OAuth 2.0 protocol. If your system uses OAuth 2.0, you can set up OY! callbacks to be directed to an authorization process before they are received by your system. To do this, simply enter the Authorization URL, client ID, and client secret via your dashboard. 

### How to Setup Authorization Callback
You can follow the steps below to set up callback authorization via your dashboard:

1. Log in to the OY! dashboard as a super admin or admin, then select the "Settings" menu, and choose "Developer Options." 
2. Click on the "Authorization Callback" tab. Then, you should input your authorization details (Authorization URL, client ID, and client secret). This step is necessary to allow OY! to complete the authorization process before sending a callback to you. 

<img data-src="images/oy_auth_configuration.png" alt="Callback Authorization Configuration" loading="lazy" class="lazyload" />

3. Click the "Save changes" button. 
4. Once you have configured your OAuth 2.0 credentials, all callbacks from OY! will go through your authorization process before you can receive them. OY! will obtain an access token along with the expiry time from your system. 
5. If you no longer want callbacks from OY! to go through the authorization process, you can remove all the OAuth information or credentials you've entered on this page and then click "Save Changes."

