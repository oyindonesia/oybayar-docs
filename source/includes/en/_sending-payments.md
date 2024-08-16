# Sending Payments

## API Disbursement

API disbursement product provides the capability for you to disburse to 100+ banks in Indonesia via OY! at any time. The integration process to use the API disbursement product is straight forward and the details can be checked [here](https://api-docs.oyindonesia.com/#fund-disbursement).  

### Key Features

**Overbooking**
OY! can use the funds directly from your Mandiri or CIMB bank accounts for your disbursement needs. You will only need to top up the admin fee needed to execute the disbursements instead of the full amount of your disbursement. Please contact our [business representative](partner@oyindonesia.com) for further details about this feature.
**Check Transaction Status and Callback**

For all disbursements executed, you will receive notifications regarding your transaction whether it is successful, failed or pending. We also provide an API for you to check the transaction status manually. IP proxy is also available upon request to enhance the security and integrity of the callback you will receive. 

**Check Balance**

You can check your available balance at anytime to ensure that you have sufficient balance to execute a disbursement.

### Registration and Set Up
**Prerequisites** 

* Register an account on the [OY! dashboard](https://business.oyindonesia.com/register?)

* Activate your account through the activation link sent via email

* Upgrade your account 

* Upgrade request is approved

* Provide IP to be whitelisted and callback link to our business team

* Receive an API Key from us

* Integrate with our [API](https://api-docs.oyindonesia.com/#fund-disbursement)

### Testing

Once you successfully create an OY! account, you can immediately simulate disbursement via API.
Follow the below steps to test the flow:

1. Create an account
2. Login into the dashboard 
3. Change the environment to “staging” 
4. Once the environment changed to staging, there will be API key staging available on the bottom left corner of the page
5. Before creating a disbursement transaction, check your available balance through API GET https://api-stg.oyindonesia.com/api/balance
6. Create a disbursement by sending a ‘POST’ request to _https://api-stg.oyindonesia.com/api/remit_ (https://api-stg.oyindonesia.com/api/remit) using your staging API key. Enter the required and optional fields, as referenced in the API reference docs (https://api-docs.oyindonesia.com/#disbursement-fund-disbursement)
7. Fill in the amount, recipient bank, recipient account, and the partner transaction-id
8. To get the status of a disbursement request, you can call the API https://api-stg.oyindonesia.com/api/remit-status,  This API also offers the option for callback status under field  send_callback
9. If payment is successful or failed, we will send a callback to the registered staging callback URL destination. Callback URL can be registered via our business representative.
10. The API disbursement transactions can be monitored through OY! dashboard from the “Send money - API disbursement” menu.


### How to Use 

In order to create disbursements, a sufficient available OY! balance is required in the account. More details and instructions about topping up to your OY! account coming soon.

Before you execute a disbursement, you can verify the beneficiary account information from our [inquiry endpoint](https://api-docs.oyindonesia.com/#bank-account-inquiry). 

> Below is an example of the request body for inquiry:

```shell 
curl -X POST https://partner.oyindonesia.com/api/inquiry 
-H 'content-type: application/json, accept: application/json, x-oy-username:myuser, x-api-key:987654' 
-d '{
    "recipient_bank": "022", 
    "recipient_account": "7823023345"
    }'
```

> It will return an [error message](https://api-docs.oyindonesia.com/#fund-disbursement-response-codes) if the request is not valid. Otherwise, below is the sample response parameters that will be returned:

```json
{
    "status":{
        "code":"000",
        "message":"Success"
    },
    "recipient_bank":"022",
    "recipient_account":"7823023345",
    "recipient_name":"Budi Budianto Budiman",
    "timestamp":"16-10-2021 09:55:31"
}
```

> 

Next, send a request body to execute a disbursement request to be sent to our [disbursement endpoint](https://api-docs.oyindonesia.com/#disbursement). 

> Below is an example of the request body for the remit: 

```shell
curl -X POST https://partner.oyindonesia.com/api/remit 
-H 'content-type: application/json, accept: application/json, x-oy-username:myuser, x-api-key:7654321' 
-d '{
    "recipient_bank": "022", 
    "recipient_account": "7823023345", 
    "amount":100000, "note":"Pembayaran Nov IV", 
    "partner_trx_id":"Tx15048563JKFJ", 
    "email" :"budi.s@gmail.com"
    }'
```

> Below is the sample response parameters that will be returned:

```json 
{
    "status":{
        "code":"101",
        "message":"Request is Processed"
    },
    "amount":100000,
    "recipient_bank":"022",
    "recipient_account":"7823023345",
    "trx_id":"89718ca8-4db6-40a0-a138-a9e30d82c67d",
    "partner_trx_id":"Tx15048563JKFJ",
    "timestamp":"16-10-2019 10:23:42"
}
```

> 

An enpoint to [check the transaction](https://api-docs.oyindonesia.com/#get-disbursement-status) is also available and can be accessed at anytime. 

> Below is an example of the request body: 

```shell
curl -X POST https://partner.oyindonesia.com/api/remit-status 
-H 'content-type: application/json, accept: application/json, x-oy-username:myuser, x-api-key:7654321' 
-d '{
    "partner_trx_id": "1234-asde", 
    "send_callback": "true"
    }'
```

> The above command returns a JSON structured similar like this:

```json
{
  "status":{
    "code":"000",
    "message":"Success"
  },
  "amount":125000,
  "recipient_name":"John Doe",
  "recipient_bank":"008",
  "recipient_account":"1234567890",
  "trx_id":"ABC-456",
  "partner_trx_id":"1234-asde",
  "timestamp":"16-10-2020 10:34:23",
  "created_date": "24-01-2020 06:48:08",
  "last_updated_date": "24-01-2020 06:48:39"
}
```

>

A callback with the following information will be sent to the callback endpoint that you can register with us. 

> Below is an example of the request body: 

```shell 
curl -X POST https://partner.oyindonesia.com/api/remit-status 
-H 'content-type: application/json, accept: application/json, x-oy-username:myuser, x-api-key:7654321' 
-d '{
    "partner_trx_id": "Tx15048563JKFJ"
    }'
```

> Below is the sample response parameters that will be returned:

```json
{
    "status":{
        "code":"000",
        "message":"Success"
    },
    "amount":100000,
    "recipient_name":"Budi Soemitra Nasution",
    "recipient_bank":"022",
    "recipient_account":"7823023345",
    "trx_id":"89718ca8-4db6-40a0-a138-a9e30d82c67d",
    "partner_trx_id":"Tx15048563JKFJ",
    "timestamp":"16-10-2019 10:40:23",
    "created_date": "16-10-2019 10:23:42",
    "last_updated_date": "16-10-2019 10:34:23"
}
```

>

You can also [check your balance](https://api-docs.oyindonesia.com/#get-balance) anytime to ensure you have sufficient balance from our endpoint.

> Below is an example of a request body to check the balance:

```shell
curl -X GET 'https://partner.oyindonesia.com/api/balance' 
-H 'Content-Type: application/json' 
-H 'Accept: application/json' 
-H 'X-OY-Username: janedoe' 
-H 'X-Api-Key: 7654321'
```

> Below is the sample response parameters that will be returned:

```json 
{
    "status":{
        "code":"000",
        "message":"Success"
    },
    "balance":100000000.0000,
    "pendingBalance":2000000.0000,
    "availableBalance":98500000.0000,
    "overbookingBalance":98500000.0000,
    "timestamp":"10-12-2019 12:15:37"
}
```

>

Lastly, all transactions can be monitored from the OY! dashboard which includes all the transaction details.

![API Disbursement](images/api_disburse_error_reason.png)

![API Disbursement](images/api_disburse_success.png)


For further details on the parameters definition and proper usage, please refer to our [API Documentation](https://api-docs.oyindonesia.com/#fund-disbursement).


## Bulk Disbursement

Our Bulk disbursement product provides the capability to execute disbursements to multiple beneficiaries with a single xlsx or csv file upload ("Campaign") up to 25,000 transactions. Bulk disbursement is made through the OY! dashboard, where details regarding the disbursement campaign can be found. No technical integration is required to use this product.

### Key Features 

**Overbooking**
OY! can use the funds directly from your Mandiri or CIMB bank accounts for your disbursement needs. You will only need to top up the admin fee needed to execute the disbursements instead of the full amount of your disbursement. Please contact our [business representative](partner@oyindonesia.com) for further details about this feature.

**Account Management** 

When you first create an account, your account will be assigned as a Super Admin role. As a Super Admin, you have the ability to create new sub-accounts and assign different roles to your team such as Admin, Maker and Approver that are applicable for bulk disbursement. The Super Admin and Admin can also edit or delete created sub-accounts. 

*Note: it is not necessary to create new sub-accounts in order to use bulk disbursement. The Super Admin and Admin roles allows you to directly create and approve bulk disbursements.*

Detailed step-by-step instructions on setting up user management and the different role types coming soon. 

**Multi-Layer Approval** 

Multi-layer Approval will improve your control over your bulk disburse transaction especially for big amount of money. You can setup up to 3 layers of approver before the transaction instruction is executed. By assigning proper approver and amount limitation, you can avoid a huge trouble on your business operational caused by incorrect transfer amount.

**Overall Campaign Summary**

Keep track of all the details of the entire campaign such as the total amount of disbursement, total number of transactions, and the maker and approver related information of a campaign.

**Transaction Details**

Itemized details of each individual transaction, including their respective statuses: success, pending, or failed.

### Registration and Set Up 
**Prerequisites**

* Register an account on the [OY! dashboard](https://business.oyindonesia.com/register?)

* Activate your account through the activation link sent via email

* Upgrade your account 

* Upgrade request is approved 

### Testing

1. Log on your OY! dashboard
2. Choose "Staging" environment
3. Click "Send Money" menu, and choose "Bulk disbursement"
4. Click "Create Disbursement"
5. Fill in the necessary details by following the steps explained in the “How to Use” section

### How to Use

In order to create disbursement campaigns, a sufficient available OY! balance is required in the account. If there is an insufficient available balance in the account, campaigns can still be created but not approved.

*1. Create Disbursement*: On the OY! dashboard, navigate to Send Payments > Bulk Disburse on your left menu bar. Click “Create Disbursement” on the far righthand side of that page to create a new bulk disbursement campaign.

*2. Create Campaign Details*: Fill in the campaign details with 2 options:

![Create Bulk - 1  Initial](https://user-images.githubusercontent.com/79620482/128454459-16770aa6-486a-40b8-a73b-f2c4bb1910e3.png)


a. upload an xlsx or csv file 

Please upload an xlsx or csv file with each individual transaction’s details of your bulk disbursement campaign. An example template for both file types are available for download on the OY! dashboard. The following list of items are required in your CSV file.

Column | Description | Example
------ | ----------- | -----------
Name | Recipient Name | Budy
Email | Recipient Email (can contain up to 5 emails with a total maximum of 255 characters, incoming transaction notifications will be sent to these emails) | Budi@email.com
Amount | Amount in IDR (only numbers) | 100000
Bank Code | [Destination Bank](https://docs.oyindonesia.com/#disbursement-bank-codes) | 014
Bank Account Number | Recipient Bank Account Number | 12341234
Phone Number | Recipient Phone Number | 62812341234
Notes (Optional) | Transaction Notes | 

 b. add disbursement detail manually. : 
choose ‘add disbursement detail manually’ and fill out a campaign name and campaign description in the provided spaces. These details are strictly used as your tracking information only and will not be shared to the transaction recipients.

c. [Staging only] You can replicate failed status on individual transaction within the campaign by fill in _Bank Account Number_ value with `3000000`. Another value will be processed normally.

*3. Re-verify all the Information and Submit*: Once your xlsx or csv file is uploaded or filled out manually, you can verify all of the information uploaded from the file from the table displayed. If there is any incorrect submission such as invalid entry due to special characters, a red box will appear to highlight the entry that should be corrected. Issues must be resolved before a campaign can be submitted

![Create Bulk - 2  File Uploaded](https://user-images.githubusercontent.com/79620482/128454606-2838f6ca-aad1-446a-becb-75d780460708.png)


*4. Validate Name Matching*
After all the issue has been resolved, user able to click submit and there will be popup shown to validate each recipient *name *with their *Bank Account Name* as shown below:

![Create Bulk - 3  Ask Name Validation](https://user-images.githubusercontent.com/79620482/128454745-c5a42979-30ba-44c2-a405-bbe9b0325677.png)

if you choose YES: if there is a name difference, a popup name validation with details of mismatched transactions will be displayed. if the information inputted is invalid, you could edit the information and choose the ‘ validate’ button to revalidate the data, or you could click the ‘ignore mismatch’ button to ignore the name matching validation and to process the disbursement.

![Create Bulk - 5e  Mismatch Names](https://user-images.githubusercontent.com/79620482/128454900-3a007579-2701-4305-9f9d-15cc8a09ab2f.png)


If there is no issue with the details uploaded, a validate and submit button will be available at the bottom of the list of transactions, indicating that all information is valid. Click “Submit” to complete creating the bulk disbursement campaign.

![Create Bulk - 6a  All data inquired without Name Matching](https://user-images.githubusercontent.com/79620482/128454982-b1ab6dfc-c279-4baf-a0e6-a2983a069488.png)


*5. Approve/Cancel Campaign**: Once the bulk disbursement campaign is created, a new status of `waiting approval` will appear. Approve the campaign by clicking the “Approve” button. If you want to cancel a campaign, click the “...” button and select “Cancel”.

![Bulk Disburse](../images/bulk_disburse_4.png)

Once the bulk disbursement campaign is approved, details regarding the campaign can no long er be changed. This includes changes made to individual transactions and their respective recipient information. 

The balances will also immediately reflect changes. For more information about the different types of balances, click here. You will also receive an email with the campaign information summary (“Outgoing Transfer Alert”) when transactions are executed.

*Note:* 
- *Depend on the approval layer that you configured, this transaction should be approved by all layer before it can be executed by the system.*
![Bulk Disburse](../images/multi-layer-approval.png)

- *Multiple campaigns can be approved at a time as long as there is sufficient available balance to complete campaigns that have already been approved but are still in queue to be processed.*

*6. Keep Track of Campaign Details**: To check the details of the bulk disbursement campaign, click on the campaign name to find the campaign summary and its recipient list. Keep track of the both the overall campaign status and the status of individual transactions through the page. 

![Bulk Disburse](../images/bulk_disburse_5.png)

*7. Status: In-Progress, Finish, and Cancel**: Congratulations! You just made your first bulk disbursement with OY! Below are a list of statuses you will find on the OY! dashboard. 

_In-Progress_

As your individual disbursements are executed, the status of your bulk disbursement campaign will indicate an in-progress status. 

![Bulk Disburse](../images/bulk_disburse_error_reason.png)

_Incomplete_

The status of your bulk disbursement will change to incomplete once all of the listed transactions have been executed and the relevant final statuses of Failed or partially Failed have been assigned. The failed transactions will be shown the failed reason and can be retried.
![Notif Pending - 1  Initial](../images/bulk_disburse_list_incomplete.png)


_Finish_

Once all of the listed transactions have been completed and the final status of success for all transactions has been achieved, the status of your bulk disbursement campaign will change to Finish.  The recipients should have all received an email detailing an “Incoming Transfer Alert.” You can also download a report of the campaign details directly through the OY! dashboard.
![Bulk Disburse](../images/bulk_disburse_finish.png)

_Cancel_ 

If you choose not to approve your disbursement campaign, the status of your bulk disbursement campaign will indicate a cancelled status. 

![Bulk Disburse](../images/bulk_disburse_cancel.png)

You can also double check each of your transactions by navigating to the account statement page on the OY! dashboard. 


## Claim Fund
Claim Fund product enable you to do disbursement without knowing your recipient bank account at first. You will simply create a link for them to fill-out bank account information and the payment will be processed by our system.
This feature will remove you from the hassle of collecting your customer information manually then doing multiple bank transfer.
Best use of this feature is : refunds, reimbursement claim, any disburse transaction in which the destination is not your regular partner.

At the moment, Claim Fund product is available only on OY! Business Dashboard.

### Transaction Flow

![Transacation Flow](../images/claim-fund-flow.png)

### Use Case
1. Refund for purchase transaction 
2. Any money transfer transaction where you don't have recipient bank information

### Registration and Set Up

**Prerequisites** 

* Register an account on the OY! dashboard (https://business.oyindonesia.com/register?)
* Activate your account through the activation link sent via email
* Upgrade your account
* Upgrade request is approved


### Testing
1. Log on your OY! dashboard
2. Choose "Staging" environment
3. Click "Send Money" menu, and choose "Claim Fund"
4. Click "Create Claim Fund"
5. Fill in the necessary details by following the steps explained in the “How to Use” section

### How to Use
In order to execute claim fund transaction successfully, a sufficient available OY! balance is required in the account. However, if there is an insufficient available balance, claim fund transaction can still be created but the approval will failed.

**1. Business Dashboard - Create Claim Fund**

* Create Claim Fund: On the OY! dashboard, navigate to Send Money > Claim Fund on your left menu bar. Click `Create Claim Fund` button on the far righthand side of that page to create a new claim fund transaction.
![Claim Fund Landing Page](../images/claim-fund-landing.png)
![Create Claim Fund - input data](../images/claim-fund-create.png)

* Please fill-out the information accordingly. Below table is the description of each fields:

| Column                                 | Description                                                                                                                                                           | Example                |
|------------------------------------    |-------------------------------------------------------------------------------------------------------------------------------------------------------------------    |--------------------    |
| Amount to Claim                        | Amount of money to be sent                                                                                                                                            | 1000000                |
| Expiration Duration                    | How long does this claim link be active. After expiration time, customer will not be able to submit their information then new claim fund link has to be created.     | 12 Hours               |
| Set as default expiration duration     | Select this option to make it default expiration time for the next claim fund transaction.                                                                            | -                      |
| Partner Transaction ID                 | Unique identifier for the recipient.                                                                                                                                  | CF00001                |
| Note                                   | additional remarks for recipient                                                                                                                                      | Refund transaction     |
| Recipient Name                         | Recipient Name                                                                                                                                                        | Dwiki Dermawan         |
| Email                                  | Recipient Email                                                                                                                                                       | dwiki@gmail.com        |

* Click `Create Claim Fund` button to submit the transaction. Your recipient will get notified of this claim fund transaction through email. Transaction link will be attached on this email.

* Successful claim fund transaction will be listed on the claim fund transaction listing with INITIATED status.
![Create Claim Fund - Success](../images/claim-fund-create-success.png)

* Please be noted that this transaction still need account detail to be filled-out by the recipient.

**2. Fund Recipient - Input Account Information**

* On the notification email, user click the `Ajukan Klaim Dana` link to get into claim fund input page. 
![Create Claim Fund - Email](../images/claim-fund-user-email.png)

* User should fill-out the detail information so that OY! system can continue with the approval process. 
![Create Claim Fund - input detail](../images/claim-fund-input-detail.png)
![Create Claim Fund - input submitted](../images/claim-fund-input-submitted.png)

**3. Business Dashboard - Approve Transaction**

Transaction need to go through approval process to ensure that the money will be delivered to correct recipient and sufficient amount is available.

* Approve claim fund transaction: On the OY! dashboard, navigate to Send Money > Claim Fund on your left menu bar. Transactions that already have user detail will be marked with `WAITING APPROVAL` status. 
![Create Claim Fund - partner approval](../images/claim-fund-partner-approval1.png)

* You can approve the transaction directly from this screen by clicking Approve button, or go to detail transaction to see more information before approve.
![Create Claim Fund - partner approval](../images/claim-fund-partner-approval2.png)

* Click approve button to release the transaction to user.

* The transaction is now marked as `IN PROGRESS`

* Your recipient should get the money delivered to their account immediately.

* In parallel, your customer will also get email notification about successful claim fund transaction.
![Create Claim Fund - user success](../images/claim-fund-user-success.png)

## API Biller

API biller product provides the capability for you to pay the bill products. With 130+ types of billing products, you can provide numerous bill payment options with ease and in real-time.
The integration process to use the API biller product is straight forward and the details can be checked [here](https://api-docs.oyindonesia.com/#biller-api).  

### Transaction Flow

![Transacation Flow](../images/Flow_API_Biller.png)

### Key Features

**Overbooking**
OY! can use the funds directly from your Mandiri or CIMB bank accounts for your bill payment needs. Please contact our [business representative](partner@oyindonesia.com) for further details about this feature.

**Check Transaction Status and Callback**

For all bill inquiry & bill payment executed, you will receive notifications regarding your transaction whether it is successful, failed or pending. We also provide an API for you to check the transaction status manually. IP proxy is also available upon request to enhance the security and integrity of the callback you will receive. 

**Check Balance**

You can check your available balance at anytime to ensure that you have sufficient balance to execute a bill payment.

### Registration and Set Up
**Prerequisites** 

* Register an account on the [OY! dashboard](https://business.oyindonesia.com/register?)

* Activate your account through the activation link sent via email

* Upgrade your account 

* Upgrade request is approved

* Provide IP to be whitelisted and callback link to our business team

* Receive an API Key from us

* Integrate with our [API](https://api-docs.oyindonesia.com/#biller-api)

### Testing

Once you successfully create an OY! account, you can immediately simulate bill payment via API.
Follow the below steps to test the flow:

1. Create an account
2. Login into the dashboard 
3. Change the environment to “demo” 
4. Once the environment changed to demo, there will be API key demo available on the bottom left corner of the page
5. Before creating a bill payment transaction, check your available balance through API GET _https://api-stg.oyindonesia.com/api/balance_
6. Request inquiry for the bill you want to pay by sending a ‘POST’ request to _https://api-stg.oyindonesia.com/api/v2/bill_ using your staging API key. Enter the required and optional fields, as referenced in the API reference docs (https://api-docs.oyindonesia.com/#bill-inquiry-biller-api)
7. Fill in the customer-id, product-id, and the partner transaction-id. You will get the detail information about the bill that you want to pay. 
8. After successful inquiry, you should do the payment process by sending a ‘POST’ request to _https://api-stg.oyindonesia.com/api/v2/bill/payment_. Enter the required and optional fields, as referenced in the API reference docs (https://api-docs.oyindonesia.com/#pay-bill-biller-api)
8. To get the status of a bill payment request, you can call the API https://api-stg.oyindonesia.com/api/v2/bill/status
9. If payment is successful or failed, we will send a callback to the registered staging callback URL destination. Callback URL can be registered via our business representative.
10. The API biller transactions can be monitored through OY! dashboard from the “Send money - API biller" menu.


### How to Use 

In order to create API biller transaction, a sufficient available OY! balance is required in the account. More details and instructions about topping up to your OY! account can you see here https://docs.oyindonesia.com/#top-up-oy-dashboard-tutorial.

Before you execute the bill payment, you have to verify the bill information from our [bill inquiry endpoint](https://api-docs.oyindonesia.com/#bill-inquiry-biller-api). 

> Below is an example of the request body for inquiry:

```shell 
curl -X POST https://partner.oyindonesia.com/api/v2/bill 
-H 'content-type: application/json, accept: application/json, x-oy-username:myuser, x-api-key:987654' 
-d '{
    "customer_id": "512233308943",
    "product_id": "plnpost",
    "partner_tx_id": "Tx15048563JKFJ"
    }'
```

> It will return an [error message](https://api-docs.oyindonesia.com/#api-biller-response-codes-biller-api) if the request is not valid. Otherwise, below is the sample response parameters that will be returned:

```json
{
    "status":{
        "code":"000",
        "message":"Success"
    },
    "data": {
        "tx_id": "a3d87877-e579-4378-844b-c06294fc9564",
        "partner_tx_id": "Tx15048563JKFJ",
        "product_id": "plnpost",
        "customer_id": "512233308943",
        "customer_name": "Plg.,De'mo 512233308943",
        "amount": 282380,
        "additional_data": "{\"customer_id\":\"512233308943\",\"customer_name\":\"Plg.,De'mo 512233308943\",\"admin_fee\":\"2.500\"}"
    }
}
```

> 

Next, send a request body to execute a bill payment request to be sent to our [bill payment endpoint](https://api-docs.oyindonesia.com/#pay-bill-biller-api). 

> Below is an example of the request body for the bill payment: 

```shell
curl -X POST https://partner.oyindonesia.com/api/v2/bill/payment 
-H 'content-type: application/json, accept: application/json, x-oy-username:myuser, x-api-key:7654321' 
-d '{
    "partner_trx_id":"Tx15048563JKFJ", 
    "note" :"biller transaction test"
    }'
```

> Below is the sample response parameters that will be returned:

```json 
{
    "status":{
        "code": "102",
        "message": "Request is In progress"
    },
    "data": {
        "tx_id": "a3d87877-e579-4378-844b-c06294fc9564",
        "partner_tx_id": "Tx15048563JKFJ",
        "product_id": "plnpost",
        "customer_id": "512233308943",
        "customer_name": "Plg.,De'mo 512233308943",
        "amount": 282380,
        "note": "biller transaction test"
    },
}
```

> 

An endpoint to [check the transaction](https://api-docs.oyindonesia.com/#get-bill-payment-status-biller-api) is also available and can be accessed at anytime. 

> Below is an example of the request body: 

```shell
curl -X POST https://partner.oyindonesia.com/api/b2/bill/status 
-H 'content-type: application/json, accept: application/json, x-oy-username:myuser, x-api-key:7654321' 
-d '{
    "partner_trx_id": "Tx15048563JKFJ"
    }'
```

> The above command returns a JSON structured similar like this:

```json
{
    "status":{
        "code": "000",
        "message": "Success"
    },
    "data": {
        "tx_id": "a3d87877-e579-4378-844b-c06294fc9564",
        "partner_tx_id": "Tx15048563JKFJ",
        "product_id": "plnpost",
        "customer_id": "512233308943",
        "customer_name": "Plg.,De'mo 512233308943",
        "amount": 282380,
        "additional_data": "\"{\\\"bill_period\\\":\\\"FEB2022\\\",\\\"total_amount\\\":\\\"282.380\\\",\\\"customer_id\\\":\\\"512233308943\\\",\\\"customer_name\\\":\\\"Plg.,De'mo 512233308943\\\",\\\"admin_fee\\\":\\\"2.500\\\",\\\"settlement_date\\\":\\\"09/03/2022 16:49\\\"}\"",
        "status": "SUCCESS"
    },
}
```

>

A callback with the following information will be sent to the callback endpoint that you can register with us. 

You can also [check your balance](https://api-docs.oyindonesia.com/#get-balance) anytime to ensure you have sufficient balance from our endpoint.

> Below is an example of a request body to check the balance:

```shell
curl -X GET 'https://partner.oyindonesia.com/api/balance' 
-H 'Content-Type: application/json' 
-H 'Accept: application/json' 
-H 'X-OY-Username: janedoe' 
-H 'X-Api-Key: 7654321'
```

> Below is the sample response parameters that will be returned:

```json 
{
    "status":{
        "code":"000",
        "message":"Success"
    },
    "balance":100000000.0000,
    "pendingBalance":2000000.0000,
    "availableBalance":98500000.0000,
    "overbookingBalance":98500000.0000,
    "timestamp":"10-12-2019 12:15:37"
}
```

>

Lastly, all transactions can be monitored from the OY! dashboard which includes all the transaction details.

![API Biller](../images/API_Biller.png)


For further details on the parameters definition and proper usage, please refer to our [API Documentation](https://api-docs.oyindonesia.com/#biller-api).

## Feature: Resend Callback

### Key Features

Retry Callback allows you to resend a callback of your transaction to your system. Initially, OY! will send a callback to your system after your transaction status has been updated. If your system failed to receive the callback, this feature can help you to retry the callback process. The process can be done in two ways


1. Automated retry callback
If the callback is not successfully received on the first try, the system will automatically retry the callback delivery. If that callback is still not received by the client's system, the system will automatically retry until 5 occurrences. The interval of the sending process will be detailed in the Callback Interval section. If all automated Retry Callbacks have been sent but still returned failed, the system will send an email notification to the email address set in the configuration.

2. Manual retry callback
Besides the automated process, you can manually request a callback via the dashboard.

### Registration and Set Up

Follow the instruction below to activate retry callback

1. Login to your account in OY! Dashboard
2. Open “Settings” and choose “Developer Option”. Choose “Callback Configuration”
3. Fill your callback URL in the related product that you want to activate. Make sure the format is right. You can click URL String Validation button to validate the URL format.
4. If you want to activate automated retry callback, check the Enable Automatic Retry Callback and fill in the email. The email will be used to receive a notification if all the automatic callback attempts have been made but still fail
5. Click "Save Changes". The configuration will not able to be saved if the callback URL or/and email format are not valid.


![Resend Callback](images/api_disburse_retry_callback_developer_option.png)

Don't forget to whitelist these IPs in order to be able to receive callback from OY: 54.151.191.85 and 54.179.86.72

If you want to manually resend a callback, you can follow the instruction below

1. Login to your account in OY! Dashboard
2. Open the API Disbursement menu
3. Click the "Resend Callback" button in the related transaction


![Resend Callback](images/api_disburse_resend_callback.png)



### Callback Interval
1st retry: realtime (after the first failed log received)
2nd retry: 1 min (after callback failed log for the 1st retry is received)
3rd retry: 2 mins (after callback failed log for the 2nd retry is received)
4th retry: 13 mins (after callback failed log for the 3rd retry is received)
5th retry: 47 mins (after callback failed log for the 4th retry is received)

If all automated Retry Callback (all the 5 attempts) has been sent but we still get a Failed response from your end, our system will send an automated email notification to the  email address that has been set in the configuration earlier


### Idempotency Key
To implement automated retry callback, you need to handle the idempotency logic in your system using the below key:

API Disburse: trx_id

## Account Payable

OY! Account Payable product provides the capability to record, create approval levels, and scheduled payment for invoice payables without hassle. Account Payable is made through the OY! dashboard, so no technical integration is required to use this product. 

### How to Use Account Payable via Dashboard

You can create new invoice to be paid and set up payment by following this step:

1. Log on to your OY! dashboard
2. Choose "Production" environment
3. Click "Pay Invoice" under Account Payable menu
4. Click "Invoice List"
5. Choose "Create New Invoice"
6. Upload your invoice document to help you easier record the invoice by click "Browse to Upload" or Drag & drop to the invoice area
7. Fill in the necessary details

    Parameter | Description
    ------ | -----------
    Purchase Type | You can choose between purchase order, service fee, bill, subscription fee, and reimbursement
    Invoice Number | The number of the invoice that you get from your vendor/supplier
    Invoice Date | The date of the invoice
    Due Date | Due date of a transaction as mentioned in the invoice. Your approver will be reminded to approve on D-7, D-3, and D-1 from the invoice due date
    PO/PR Number (optional)	| The reference PO/PR number from your company to track this invoice
    Note | The note for this invoice
    Vendor | The name of the vendor that this invoice belongs to. You can choose the name of the vendor from the dropdown menu. To create a new vendor, follow the instruction here
    Product Description | The name and/or description of the product
    Quantity | The quantity of the product
    Price | Unit price of the product
    Total | Total price of the product (Total = Quantity x Price)
    Subtotal | The total price of all the products
    PPn | PPn that should be paid to the vendor. PPn is calculated from subtotal amount. You can set up the tax during vendor addition or edit in 'Vendor Management' menu under Account Payable
    PPh | PPh that should be deducted from the vendor. PPh is calculated from subtotal amount.You can set up the tax during vendor addition or edit in 'Vendor Management' menu under Account Payable
    Total Pay to Vendor | Total amount that will be paid to vendor on scheduled date, post approval
    Reference Documents (Upload document) | The supporting documents that you want to record related to this invoice. Accept PDF files only. Maximum 7 documents (maximum 2.5MB each)
    Note: Maximum 20 rows for line item detail

    **Image Account Payable**
    ![AP Invoice Creation One](images/accountPayable/invoice_creation_1.png)

8. Continue to set up 'Invoice Payment Details'. You can set up the payment to one time payment by choosing 'Full Payment' or multiple times payment by choosing 'Partial Payment'.

    Parameter | Description
    ------ | -----------
    Payment Amount | Amount that will be automatically paid to vendor on scheduled date
    Due Date | The due date of the payment. The due date cannot do back date or more than due date that set in the first page (record invoice). Notification will be send to approval D-7, D-3, and D-1 if the status is waiting aproval
    Status | Status of the invoice payment. You can choose 'Paid' for record intention and this amount will not be paid by system. Choose 'Unpaid' for incoming transaction that needs to be paid
    Scheduled Payment | Time of the payment. You can prepare the balance prior to scheduled payment time and make sure the payment date is based on your preference and will only be executed post approval
    Remaining Amount | Total pay to vendor - subtotal. This amount should be 0 to continue the process

    **Image Payment Page**
    ![AP Invoice Creation Two](images/accountPayable/AP_scheduled_payment.png)

    ![AP Invoice Scheduled Payment Detai](images/accountPayable/AP_Scheduled_Payment_Details.png)

    ![AP Detail Transaction](images/accountPayable/AP_Trx_detail.png)

9. Status: Waiting Payment, Partially Paid, Complete and Cancelled
Congratulations! You have finished your first invoice payable set up. Below are the list of statuses you will find on 'Invoice List'

    Parameter | Description
    ------ | -----------
    Partially Paid | Multi times payment or partially paid that not finish yet. You can click invoice number to find the partial payment details in 'payment transaction' tab
    Waiting Payment	| Waiting for approval or balance not enough
    Cancelled | Invoice has been cancelled
    Complete | All payment of the invoice is complete

    **List of the Invoice Payable**
![AP Invoice List](images/accountPayable/AP_Trx_detail.png)



### How to Create, Edit and Inactivate Vendor Data ###

**Add New Vendor for Account Payable**

1. Click 'Add' in the 'Vendor' field in the 'Create Payable Invoice' page.
2. Fill in the necessary details
3. Click 'Add Vendor' after complete registration of new vendor

Parameter | Description
------ | -----------
Vendor ID (Optional) | Unique ID of the vendor from your company. This is not mandatory
Vendor Name | The company/vendor name. Make sure the vendor name matches the vendor NPWP (if any) to help your company tax record
Vendor Address (Optional) | Vendor address to be recorded. This is not mandatory
Bank Name | Recipient bank name. You can choose using drop down
Account Number | Recipient bank account number. You can check the inquiry by clicking 'Get Account Name' after filling the account number
PIC Name | The PIC name of this vendor
PIC Email | The PIC or recipient email. Payment/transfer receipt will be send automatically to this email after complete payment
PIC WhatsApp (optional) | The PIC WhatsApp number for your record
PPh (optional) | PPh type from this vendor. Default of the setting is Not Subject to PPh.
Vendor NPWP (optional) | The vendor NPWP number record that can be use for company reference to generate 'Faktur Pajak'
NPWP Document (optional) | Vendor NPWP document to be record. Accept PDF and JPG format. Maximum 10 MB
PPn (optional) | PPn type of this vendor. Default of the setting is Not Subject to PPn.
SKB Document (optional) | Vendor SKB Document to be record. Accept PDF and JPG format. Maximum 10 MB
Not subject of PPh | Tax will not be added upon the subtotal |
Not subject of PPn | Tax will not be added upon the subtotal |
PPN Exclusive | PPN of the subtotal will be added upon the subtotal of the invoice. For example is subtotal is 10,000, then the PPN is 11% of the 10,000 = 1,100 |
PPN Inclusive | Tax will not be added upon the subtotal because the subtotal is assumed to be tax inclusive |

**Each vendor only have 1 type of PPh setting and 1 type of PPn setting**

There will be an PPh email sent on the 1st day of each month that contains all the PPh from your vendors in the previous month. This report can help company with tax payment & reporting, and 'Faktur Pajak' generation to your vendor.

**Create New Vendor**
![VM Vendor Creation](images/vendorManagement/creation.png)

**List Of Vendor**
![VM Vendor List](images/vendorManagement/list.png)

**Vendor Detail**
![VM Vendor Detail](images/vendorManagement/detail.png)

**How to Set Up Invoice Payable Approval**

You can set up multi level approval from OY's users. There will be 4 type of users: Super Admin, Admin, Approver, and Maker

**Approval Layer Set Up**

Approval Layer can be set up using 'User Management' under 'General' menu. When you first create an account, your account will be assigned as a Super Admin role. As a Super Admin, you have the ability to create new sub-accounts and assign different roles to your team such as Admin, Maker and Approver that are applicable for bulk disbursement. The Super Admin and Admin can also edit or delete created sub-accounts.
Note: it is not necessary to create new sub-accounts in order to use Account Payable. The Super Admin and Admin roles allows you to directly create and approve Account Payable and also Bulk Disbursement.
Detailed step-by-step instructions on setting up user management and the different role types coming soon.

**Multi-Layer Approval**

Multi-layer Approval will improve your control over your bulk disburse transaction especially for big amount of money. You can setup up to 3 layers of approver before the transaction instruction is executed. By assigning proper approver and amount limitation, you can avoid a huge trouble on your business operational caused by incorrect transfer amount.

Default approval: Super Admin, Admin, and Approval.


## International Transfer

International Transfer product provides the capability for users to transfer across countries from Indonesia at any time. You may create a transaction within OY! dashboard without the need for any technical integration. 

### Key Features

**Account Management**<br >
When you first create an account, your account will be assigned as a Super Admin role. As a Super Admin, you have the ability to create new sub-accounts and and assign different roles to your team such as Admin, Maker and Approver that are applicable for international transfers. The Super Admin and Admin can also edit or delete created sub-accounts.\
*Note: it is not necessary to create new sub-accounts in order to use international transfer. The Super Admin and Admin roles allows you to directly create and approve transactions.*

**Roles & Accessibility**<br >
Only Super Admin and Admin roles are available to create transactions. However, if an approval flow is set up, Maker roles are allowed to create transaction with the approval of Super Admin, Admin or Approver roles. All other roles are only allowed to view transaction list, transaction details, filter, export and edit custom column in dashboard. 

**Available Destinations**<br >
Current list of countries supported: Singapore, Hong Kong and China.<br >
Current list of currencies supported: Singapore Dollars (SGD), Hong Kong Dollars (HKD), Chinese Yuan (CNY) and US Dollars (USD).<br >
More countries such as Australia, Malaysia, South Korea and United States will be available soon.

**Sender / Recipient Contacts**<br >
Suppose that you want to create an international transfer on behalf of another entity, you may create an individual / business sender or recipient and input all required information about the sender or recipient. All sender and recipient information will be saved in contacts and may be reused in the future.

**Additional Documents**<br >
We provide a placeholder for you to upload invoice and other supporting documents for the purpose of transfer and source of funds.

**Transaction Details**<br >
Once a transaction is successfully created, all transaction details and updates will be recorded in OY! dashboard.

**Single-layer Approval**<br >
Approval flow is designed to elevate your user experience and streamline the process of managing international transactions. The feature empowers our partners by allowing them to customize the approval process for transactions. Now, partners have the ability to assign Maker roles, responsible for initiating transaction creation, and Approver roles, ensuring each transaction undergoes a thorough review before execution. This not only adds an extra layer of security to your international remittances but also provides you with greater control over the entire process.

### Registration and Set Up 
**Prerequisites**

* Register an account on the [OY! dashboard](https://business.oyindonesia.com/register?)

* Activate your account through the activation link sent via email

* Upgrade your account 

* Upgrade request is approved 

### Testing
1. Log in to your OY! dashboard
1. Choose "Staging" environment
1. Click "Send Money" menu, and choose "International Transfer"
1. Click "Create New Transaction"
1. Fill in the necessary details by following the steps explained in the “How to Use” section
1. Note: To reproduce a failed transaction in staging environment, you may fill the recipient account number as **1234567891**. All other account numbers will result in a successful transaction.

### How to Use
In order to create international transfers, you need to have sufficient available OY! balance is required in the account. If there is an insufficient available balance in the account, international transfers cannot be created
 * Create new transaction*: On the OY! dashboard, navigate to Send Payments > International Transfer on your left menu bar. Click “Create New Transaction” on the far righthand side of that page to create a new transfer.

![Create New Transaction](images/internationalTransfer/create_inter_remit.jpg)

* __Input transfer amount details__: You may fill out the amount of transfer in two ways:
  1. Fill in the send amount (in Rupiah) you would like to transfer, along with the destination currency and country. Our system will automatically convert according to the foreign exchange rate at that time.
  1. Fill in the recipient amount (in SGD/USD) you would like to transfer, along with the destination currency and country. Our system will automatically convert according to the foreign exchange rate at that time.

![Input Send Amount](images/internationalTransfer/input_amount.jpg)

*Note: If the nominal amount greater than the available balance, then our system will restrict users from proceeding*
![Balance Less Than Send Amount](images/internationalTransfer/balance_less_than_send_amount.jpg)

* __Input sender details__: Decide whether sender is an individual or business entity, and you will see the corresponding details to fill out for each. Previously saved sender contacts will be displayed at the bottom of this page.
![List Of Existing Senders](images/internationalTransfer/list_of_existing_senders.jpg)

Create a new individual sender by filling out this form

![Input Individual Sender](images/internationalTransfer/input_individual_sender.jpg)

Create a new business sender by filling out this form

![Input Business Sender](images/internationalTransfer/input_business_sender.jpg)

* __Input recipient details__: Decide whether recipient is an individual or business entity, and you will see the corresponding details to fill out for each. Previously saved recipient contacts will be displayed at the bottom of this page.

![List Of Existing Recipients](images/internationalTransfer/list_of_existing_recipients.jpg)

This will be the form you will need to fill out for individual recipient

Create a new individual recipient by filling out this form

![Input Individual Recipient](images/internationalTransfer/input_individual_recipient.jpg)

Create a new business contact by filling out this form

![Input Business Recipient](images/internationalTransfer/input_business_recipient.jpg)

* __Add supporting information__: In this step, we need to record source of funds, purpose of transfer for the transaction. You may also attach supporting documents to aid the compliance requirements for your transaction.

![Transfer Reason And Supporting Docs](images/internationalTransfer/transfer_reason_docs.jpg)

* __Summary__: The summary of your transaction will be shown. If all the information is correct, you may click the **Submit** button at the bottom right hand corner of the screen.

![Summary](images/internationalTransfer/summary.png)

*Note: A fixed quotation rate is created since Input sender details and will be refreshed every 30 minutes. In the case when the quotation expires, a pop up will show to fetch the latest exchange rate and a new quotation is created.*

![Update Exchange Rate](images/internationalTransfer/update_exchange_rate.png)

If the available balance is insufficient for the new quotation amount, then you will be prompted to change the transfer amount or top up balance.

![Balance Not Enough](images/internationalTransfer/balance_not_enough.png)

* __Input Password__: For security reasons, OY! will prompt clients to input their password prior to every transaction.

![Password Filled](images/internationalTransfer/password_filled.png)

Each client has 5 chances to input the correct password. If you failed to input the correct password 5 times, then the transaction will automatically be cancelled.

![Incorrect Password](images/internationalTransfer/incorrect_password.png)

* __Transaction Status__: *In Progress, Success, Failed.*

*In Progress*

Once a transaction is successfully created, it will appear in your dashboard the status column will be set as *In Progress*.

![In Progress Status](images/internationalTransfer/in_progress_transaction.png)

*Success*

Once your transaction is processed successfully, the status column will be updated as Success. Both sender and recipient should have received an email detailing a “Successful Transfer.”

![Success Email](images/internationalTransfer/success_email.png)

*Failed*

If your transaction has failed to process, the status column will be updated as Failed. Both sender and recipient should have received an email detailing a “Failed Transfer.”

![Failed Email](images/internationalTransfer/failed_email.png)

* __Check transaction details__: You may check transaction details by clicking on the transaction id on the list of transaction details on dashboard

![List Of Transactions](images/internationalTransfer/list_of_transactions.png)
![Transaction Detail](images/internationalTransfer/transaction_detail.png)

### How to setup approval flow
1. Log in to your OY! dashboard.
1. Select the "Production" environment.
1. Navigate to "Multi Approval" product under the Settings menu.
1. Click on "Your International Transfer" tab.


By default the approval flow for international transfer is disabled.
![Activate approval](images/internationalTransfer/approval_default_disabled.png)

When the approval flow is enabled, one approver is necessary to approve for all future transfers. You have the option to select specific username(s) or all usernames as approvers.
*Note: Only usernames with roles superadmin, admin and approver may approve future transactions*
![Approver selection](images/internationalTransfer/approver_selection.png)
![Account selected](images/internationalTransfer/account_selected.png)

Since the initiation of the approval flow, every transaction must undergo approval before execution.
![One approver](images/internationalTransfer/one_approver.png)

In the current state, the designated approver(s) will receive individual email notifications regarding pending approval transfers.
![Email approver](images/internationalTransfer/approver_email.png)

Upon clicking the "Review the transaction" button, you will be redirected to the dashboard, where you can choose to either approve or reject the transaction.
*Note: Once a transaction is approved by any one approver, it will be executed immediately.*
![Approver decision](images/internationalTransfer/approver_decision.png)


## Corporate Card
OY! Corporate Card product provides the offer to create customized virtual corporate cards that can be used to manage online transactions (e.g. software subscriptions, corporate travel expenses, purchase of supplies, etc.) without hassle. Virtual Corporate Card can be created through the OY! dashboard, therefore no technical integration is required to use this product. Please contact our business representative for further details about this feature.

### Key Features for Virtual Corporate Card
Feature | Description
------ | -----------
**Card creation** | You can use the funds directly from your OY! balance for corporate card needs. It is essential to top-up your OY! balance according to your desired card limit.
**Card control** | Create and control the card based on your requirements. You can set the limit amount (in Rupiah), validity period, card renewal frequency and even transaction limitations directly through OY! dashboard. Moreover, you can block and deactivate the card in real-time! Everything on your fingertips.
**Real-time transaction** | Transactions can be tracked easily through OY! dashboard and card holder’s page in real-time. There is no need to wait until the end of month for a full transaction statement.
**Analytics dashboard** | All transactions are recorded and reported in the analytics dashboard, helping companies easily manage and monitor their budgets.

### Registration and Set Up
Follow the below check-list to ensure you're all set up to use the service:
1. Create an account for OY! business
1. Upgrade your account by submitting the required documentations
1. Have your upgrade request approved
1. Set up your receiving bank account information (note: ensure that the receiving bank account information is accurate as it cannot be changed via OY! dashboard for security reasons)
1. Once your account is approved, you can start using Virtual Corporate Card product

### Testing
1. Log in to your OY! Dashboard.
1. If you haven’t set approver, please follow steps in How to Set Approver for Virtual Card
1. Select the "Demo" environment.
1. Navigate to "Corporate Card" product under the Expense Management menu.
1. Create a virtual corporate card by follow steps on How to Create Virtual Corporate Card
1. Your approver will receive email regarding approval request to create virtual corporate card, ask them to approve or reject the card for testing purposes
1. After your approver approves the request, the registered cardholder will receive email regarding dummy card information and virtual card status data on the demo OY! dashboard will be updated

### How to Create Virtual Corporate Card
You can create new virtual corporate card by following these steps:
1. Log in to your OY! dashboard
1. Click “Corporate Card” under Expense Management menu
1. Click “Add New Card”
1. Choose "Virtual" for "Card Type" and usage frequency either single usage or multiple usage and click “Next”
1. Fill in Cardholder details and Card details
1. Once submitted, virtual card will be in “waiting for approval” state
1. After the approval step, the virtual card is ready to be used for transactions.

**Notes:** Once your OY!  balance is transferred to a virtual corporate card, it can only be used for virtual card transactions.

* Corporate Card Dashboard

 ![Corporate Card Dashboard](images/virtualCard/corporate_card_dashboard.png)

* Virtual Card Type

 ![Virtual Card Type](images/virtualCard/virtual_card_type.png)

* Virtual Card Form

![Virtual Card Form 1](images/virtualCard/vcc_form_1.png)

![Virtual Card Form 2](images/virtualCard/vcc_form_2.png)

### How to Transact with Virtual Card
Steps to use virtual card for online transaction:
1. Access your card information (including remaining balance & transaction) via email and enter OTP sent to the phone number registered.
1. Once accessed, input all of your card information into merchant side under “Credit / Debit Card” Option
1. Input 16 digit number, expiry date (MM/YY) and CVV
1. Submit the information and proceed with the transaction and the transaction should be successful.
1. For record purposes, you can upload the invoice for each transaction inside OY! dashboard.

* Virtual Card Information

![Virtual Card Information](images/virtualCard/virtual_card_info.png)

* Virtual Card Transaction Details

![Virtual Card Transaction Details - Cardholder Page](images/virtualCard/vcc_transaction_details.png)

![Virtual Card Transaction Details - Email](images/virtualCard/vcc_trx_email.png)


**Virtual Card Status**

Status| Description
------ | -----------
Pending Approval | Card has been requested but not yet approved. Requests are valid for 14 days.
Active | Card is ready to be used for transactions.
Active with Warning | Card is active with balance, but only <15% balance remaining.
Inactive | Card has been blocked. The card can be activated any time needed through OY! dashboard.
Need top-up | New card has been created but failed to top-up the card balance due to insufficient OY! balance, OR current card limit is 0 and passed renewal time due to insufficient OY! balance.
Expired | Card is expired or intentionally archived permanently.
Rejected | Card is rejected by approver.


**Transaction Status**

Transaction Status | Description
------ | -----------
Successful | Transaction was successful.
Failed | Failed transaction issue that related to OY! balance (top-up card or create card).
Reversal | Transaction was canceled, and the amount was refunded due to errors, returns, or fraud.
Declined | Transaction was declined by the merchant.
Refund | Refund by merchant.

### How to Set Approver for Virtual Card
1. Log in to your OY! dashboard
1. Click “Corporate Card” under Expense Management menu
1. During first time product activation, you are required to fill in approver data
1. Fill in the approver details
1. You are required to review and check the T&C, then confirm your approver details
1. Approver will receive confirmation email

* Add New Approver

![Add New Approver](images/virtualCard/add_new_approver.png)

* Approver Form

![Add Approver Form](images/virtualCard/add_approver_form.png)

**Notes:** Approver data cannot be added or edited through OY! dashboard for security purposes. Please contact our business representative for help.

Parameter | Description
------ | -----------
Name | Approver Name
Position | Approver Role
Phone Number | Approver Phone Number
Email | Approver email for card approval purposes

### How to Monitor and Manage Virtual Cards
1. Log in to your OY! dashboard
1. Click “Corporate Card” under Expense Management menu
1. Click “See All Cards”
1. Dashboard will show analytics dashboard (divided per department) and list of card to manage
1. Click the card that needs to be managed

![Virtual Card List](images/virtualCard/vcc_card_list.png)

**Card Actions**

Card Actions | Description
------ | -----------
Resend Card Info | To resend card info to cardholders, in case of missing email.
Edit Information | To edit the card limit. Editing card limits will lead to card temporary blockage and require reapproval flow again.
Block | To temporarily lock the card, limit remains in the card and card’s status will be “Inactive” 
Archive | To permanently lock the card, card limit will be reduced to 0 and remaining card limit will be returned to OY! balance.
Renew Limit | To renew the card limit with a desired amount using OY! balance.
Resend Approval Notification | To remind approver to approve the card request in case of missing email.
Delete | Only applicable for "Pending Approval" card. This will archive the card so the card is no longer used.

### How to Set Up Card Configuration
1. Log in to your OY! dashboard
1. Click “Corporate Card” under Expense Management menu
1. Click “Corporate Card Configuration”
1. Select Department / Category / Approver
1. You can choose to whether add new, edit existing or delete
1. Click "Save Changes"

* Department page prior to “Edit Department” button

![Department List](images/virtualCard/vcc_department_list.png)

![Edit Department](images/virtualCard/vcc_edit_department.png)

* Category page

![Category List](images/virtualCard/vcc_category_list.png)

![Edit Category](images/virtualCard/vcc_edit_category.png)

* Approver page

![Approver List](images/virtualCard/vcc_approver_list.png)

### Decline Transaction Possible Reasons

Issues | Explanations
------ | -----------
Card utilization is more than requested | Admin requests a card for single use only, but it is being used for more than one transaction. Please request a multiple use card if you expect the card to process multiple transactions.
Insufficient balance on the card | The balance on the card is less than the transaction amount. In this case, the cardholder may need to ask the Admin to top up the card. For example: The card balance is Rp 300,000 but the transaction amount is Rp 302,000. Since the card balance is less than the transaction amount, the transaction will not be processed successfully 
Card is inactive | The card is temporarily blocked by the Admin. Cardholder needs to ask the Admin to activate the card.
Card is expired | The virtual card is no longer valid because it has passed its expiration date. Admin or cardholder can check the expired date from dashboard or virtual card information page.
Invalid card number | Cardholder entered the card number incorrectly. Please input the 16 digit card number correctly.
Invalid expiry date | Cardholder made an error entering the card expiry date. Please enter the correct expiry date.
Invalid CVV | Cardholder made an error inputting the CVV number. Please enter the correct CVV.
Issuer network not supported | Not all overseas merchants can process transactions for certain reasons. If you experience a declined error, please check the merchant's capabilities; they might only accept physical cards, regional restrictions, or other reasons.

Notes
1. Transactions will be settled according to the bank’s instructions.
1. Successful card transactions will directly reduce card limit.
1. For refunds, please contact the merchant where you made the purchase. OY! is not responsible for processing refunds until we receive the funds back from the merchant.
    1. Refund duration will depend on the merchant and the bank.
    1. Once a refund has been issued, the balance will be returned back to your OY! balance.
1. It is your responsibility to block card usage if you notice any suspicious transactions. 


## Reimbursement
OY! Reimbursement product offers an easy way to manage employee reimbursement requests and fund disbursements all in one platform. Employees can simply request reimbursement via the link sent to their email. No technical integration is required to utilize the product.

### Key Features

Feature | Description
------ | -----------
Approval Capability | To ensure no fraudulent requests are made, a double approval mechanism exists in the product and is mandatory for the reimbursement process. The first layer is for the team manager via email, and the second layer applies to the admin via the dashboard. Our reimbursement product features a double approval mechanism to ensure integrity. 
Disbursement Scheduling | Admin can also immediately schedule the disbursement time after approval from the team manager. Currently, the scheduled disbursement options are 1 day, 3 days, 7 days, and 14 days from the day of admin approval, allowing flexibility in managing cash flows.
Reimbursement Details | For admin, every reimbursement request from employees can be accessed through the OY! dashboard, including the uploaded file, to ensure it matches the requested amount.
Reimbursement Tracking | For employees, no more hassle in checking reimbursement progress with the admin. Your employee will receive a tracking email to check progress in real-time.

**Notes:**

* First approval: Team Manager 
* Second approval: Admin (it can be Finance Team or HR Team)

This ensures that each approval request is reviewed by at least two reviewers, providing an extra layer of oversight and security.

### Registration and Set Up
Follow the below check-list to ensure you're all set up to use the service:

1. Create an account for OY! business
1. Upgrade your account by submitting the required documentations
1. Have your upgrade request approved
1. Set up your receiving bank account information (note: ensure that the receiving bank account information is accurate as it cannot be changed via OY! dashboard for security reasons)
1. Once your account is approved, you can start using Reimbursement product

### Testing
1. Log in to your OY! Dashboard.
1. If you haven’t set approver for team manager, please follow steps in How to Set Approver
1. Select the "Demo" environment.
1. Navigate to "Reimbursement" product under the Expense Management menu.
1. Follow steps How to Distribute Reimbursement Link first to able open the reimbursement request page
1. Then create reimbursement request by follow the step How to Fill Reimbursement
1. Your reimbursement request will appear in Reimbursement table (in Demo environment) also sent to registered Team Manager’s email
1. Ask your registered Team Manager to open the link that was sent to their email and approve it for testing purposes. Your team manager can follow steps in How to Approve Transaction.
1. After your team manager approve or reject the transaction, it will reflect on your Demo OY! Dashboard. Afterward, as an admin you can approve or reject the transaction and schedule the disbursement as explained in How to Schedule Disbursement

### How to Set Approver
By default, admin is the second approver for reimbursement requests. However, you need to register your Team Manager as the first approver for reimbursement requests. **Setting up the approver will only occur once when the page is first opened.**
1. Log in to your OY! dashboard.
1. Navigate to "Reimbursement" product under the Expense Management menu.
1. Click on "Create Reimbursement Link."
1. Choose "Register Approver."
1. Fill in the approver's name, email address, and department.
1. After registration, the approver will receive a notification via email.

* Approver registration page

![Approver registration](images/reimbursement/Approver_Registration.png)

**Notes**
* Approver emails are mapped based on department names, and duplicate department names are not allowed.
* After submission, addition, editing, or deletion of existing approvers can only be done via OY! Customer Service.
* Team managers will only receive notifications via email; no dashboard access is required.
* The approver list view is accessible in the dashboard under Reimbursement configuration.

### How to Distribute Reimbursement Link
After Approver registration, you can start sharing the reimbursement link with employees through two methods:

1. Via Bulk Upload:
    1. Download the sample file and input a list of employee emails in CSV or XLSX format.
    1. Upload the file for email distribution, then click “Submit”.
    1. Employees will receive the form link in their email and can use it to submit a reimbursement request.
1. Via Link Distribution
    1. Copy the link and distribute it using any convenient method.
    1. Employees may fill the form and proceed to submit a reimbursement request.

* Bulk Upload and Link Distribution page from OY! Dashboard

![Distribution page](images/reimbursement/Reimbursement_Link.png)

### How to Fill Reimbursement Request
1. Click reimbursement link that has been shared from Admin.
1. Fill the Employee Information and Reimbursement Request then click “Submit”.
1. You will receive confirmation email regarding reimbursement request has been submitted

* Form Reimbursement Request page

![Form Request page 1](images/reimbursement/reimbursement_form_1.png)

![Form Request page 2](images/reimbursement/reimbursement_form_2_filled.png)

**Mandatory Parameters in the Form**

Parameter | Description
------ | -----------
Employee Name | Employee identification purposes
Employee Email | This will be used to trigger tracking to employee post-submission
Department | Department will be mapped to approver's email directly
Bank Name | Disbursement bank name
Account Number | Disbursement bank account number. Bank account validity can be checked prior reimbursement submission
Item | Reimbursement item name or description
Amount | Reimbursement total amount (in IDR). Minimum Rp 20.000
Upload File | Placeholder to upload invoice document. Max 2 file with PDF, JPG, & PNG format (Each file max 5MB).
Transaction Date | Date of transaction printed on the invoice

**Notes:** you can resend the link anytime in case employees do not receive the email.

### How to Approve Transaction (Reporting Manager)
1. When a new request is submitted by an employee, the respective team manager will receive a notification and an approver portal link via email.
1. Inside the link, the team manager can find all reimbursement requests with certain statuses (rejected, approved, and need approval).
1. The team manager can choose to either reject the request with a reason or simply approve.
1. Approving the request will trigger an update inside the OY! Dashboard and employee tracker page.

* Approver portal (unique per approver)

![Approver portal](images/reimbursement/Approver_Portal_List.png)

* Approver - request details with action buttons

![Request details](images/reimbursement/Approver_List_Detail.png)

### How to Schedule Disbursement
Scheduled disbursement can only be done if the team manager has approved the request, and the OY! dashboard admin agrees to schedule the disbursement.

1. Open the OY! Dashboard and check the Reimbursement transaction list.
1. Requests with "Need Approval" status mean that the team manager has approved the requests and will require further approval from the dashboard side.
1. OY! dashboard admin can either reject with a reason or approve with a scheduled disbursement day.

* Request list in dashboard

![Dashboard list](images/reimbursement/Reimbursement_List.png)


* Request detail in dashboard

![Request Detail](images/reimbursement/Reimbursement_Detail1.png)

![Request Detail](images/reimbursement/Reimbursement_Detail2.png)

**Note:** If there is insufficient balance on the day of scheduled disbursement, you can retry the fund transfer manually after a successful OY! balance top up.


**Dashboard Status**

Status | Description
------ | -----------
Pending Approval | Submitted by employee but no action yet from Team Manager. 
Need Approval | Approved by approver but no action yet from OY! dashboard admin.
Canceled | Cancellation can only be performed by the employee. No further action needed.
Completed | Money has been successfully disbursed to employee’s bank account.
Rejected | Rejected by OY! dashboard admin or Team Manager.
Scheduled Payment | Request has been successfully approved, waiting for scheduled disbursement time.
Failed | Disbursement failed due to technical failures.
Insufficient Balance | Fail to disburse due to insufficient OY! balance (OY! dashboard admin can retry payment manually from dashboard after a successful top up of OY! balance).

### How to Check Reimbursement Progress (Employee)
1. Employees can fill in the reimbursement request form portal via email.
1. Once submitted, the employee will receive a tracking email.
1. Inside the link, employees can find real-time reimbursement progress, from the submission timestamp until disbursement timestamp.
1. Employees can still cancel the request if the team manager has not yet approved.

* Employee Tracker page

![Employee tracker](images/reimbursement/Employee_Tracker1.png)

* Employee Tracker page -- Transaction Detail

![Employee tracker](images/reimbursement/Employee_Tracker2.png)

**Tracker Status**

Status | Description
------ | -----------
Pending Payment | Request approved but money not yet received
Scheduled Payment | Request has been successfully approved, waiting for scheduled disbursement time.
Rejected | Rejected by admin or Team Manager
Canceled | Canceled by employee
Waiting Approval | Submitted but no action yet from Team Manager or admin
Completed | Money has been disbursed successfully

**Note:** The tracking email is applicable to each employee per reimbursement request.