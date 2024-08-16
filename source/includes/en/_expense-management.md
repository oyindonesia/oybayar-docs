# Expense Management

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