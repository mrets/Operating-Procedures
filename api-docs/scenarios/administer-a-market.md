# Administer a Market

## Use Case

The Market Administrator functionality was designed to support third parties spot markets on the M-RETS.

To Register as Market Admin, please contact the System Admin.

M-RETS has developed several endpoints specifically designed to meet Market Administrator's needs:
* Get all active Participants
* GET RECs (Market eligible)
* Update Certificate Quantity status to encumbered to prevent transactions in the M-RETS system
* Create a Market Transaction

## Process
The Market Administrator establishes a new “Market”. The Market Administrator must have their Participant Terms of Use approved by M-RETS and available for Participants to review at any time. See Operating Procedures for further details on the sign-up process, permissions, and other policies related to this account type in the M-RETS.

1. The Market Administrator has the ability to invite an unlimited number of participants to this Market. Currently this part of the process is completed through the M-RETS interface. The Market Admin can select who to send invites to from a list of organizations in the M-RETS. The invites trigger email notifications for both parties. Participants can accept the invitation by logging into the M-RETS and clicking "Accept" on the notification. The list of Participants who have accepted the invite is available via API to the Market Administrator.

2. Upon accepting an invite to a Market, a special active Market Account would be automatically created for the Participant as well as a designated account where purchased RECs will be deposited. Participants can transfer Certificates to the designated Market Account. This is completed as a standard Internal Transfer. While in this account, the certificates are visible to the Market Administrator and become available to be posted to the external market platform. The Certificates by default have the status of “unencumbered”, but when the Market Administrator wants to post them on an external platform, they can update the status via API to “encumbered”. While posted on the external market, it is the Market Administrator’s responsibility to ensure Certificates have been set to “encumbered”. This ensures that they can’t be transacted on in the M-RETS system. Before a Market Participant can remove certificates from the Market Account they must be set to unencumbered. Only the Market Admin can return Certificates to an “unencumbered” status.

3. When a sale is completed in the external market, the Market Administrator has the ability to conduct a “Market Transaction” in the M-RETS via API. This includes creating a seamless transaction that sends Certificates from the Seller to the Market Admin, then from Market Admin to the buyer. Structuring the Market Transaction in this way gives the Market Administrator the ability to expose or not the identities of the buyer and seller in any transaction.

Purchased RECs would be deposited into the designated Active RECs account of the purchasing party. The status of these RECs would be returned to “active” and they would no longer be available for sale.

## 1. Market Participants

### Get all active Participants

	GET /v1/public/rec/organizations?filter[participates_in_market]=<market program uuid>

##### Response
```json
{
    "data": [
        {
            "id": "<organization uuid>",
            "type": "organizations",
            "links": {...},
            "attributes": {
                "name": "...",
                "account_type": "...",
                "organization_type": "...",
                "organization_subtype": "...",
                "is_wi_service_provider": "..."
            }
        },
        ...
    ],
    "links": {...}
}
```


## 2. Encumber/Unencumber a Certificate Quantity

### Get All RECs

The general `GET RECs` call for a Market Admin will return all RECs in the M-RETS that are in any of the Market's Participants' Market Accounts.

	GET v1/public/rec/certificate_quantities

##### Response
```json
{
{
  "data": [
    {
      "id": "...",
      "type": "certificate_quantities",
      "links": {...},
      "attributes": {
        "quantity": 100,
        "serial_number_end": 100,
        "serial_number_start": 1,
        "serial_number_base": "...",
        "rrc_quantity": "...",
        "status": "active",
        "created_at": "2020-01-01T00:00:00Z",
        "updated_at": "2020-01-01T00:00:00Z"
      },
      "relationships": {
        "account": {...},
        "certificate": {...},
        "transaction_detail": {...}
      }
    },
    {...}
  ]
}
```

### GET RECs from a Participant's dedicated Market Account

To return only the Certificates from a specific Participant's dedicated Market Account:

	GET v1/public/rec/certificate_quantities?include=certificate&filter[organization]=<participant organization uuid>

##### Response
```json
{
{
  "data": [
    {
      "id": "...",
      "type": "certificate_quantities",
      "links": {...},
      "attributes": {
        "quantity": 100,
        "serial_number_end": 100,
        "serial_number_start": 1,
        "serial_number_base": "...",
        "rrc_quantity": "...",
        "status": "active",
        "created_at": "2020-01-01T00:00:00Z",
        "updated_at": "2020-01-01T00:00:00Z"
      },
      "relationships": {
        "account": {...},
        "certificate": {
          "links": {...},
          "data": {
            "type": "certificates",
            "id": "<certificate uuid>"
          }
        },
        "transaction_detail": {...}
      }
    },
    {...}
  ]
}
```

### Update Encumbered / Unencumbered Status of a Certificate Quantity

By default, a certificate quantity when placed in a Market account will have a status of `unencumbered`. When the Market Admin is ready to post a certificate quantity on an external system, the certificate quantity status should be updated to `encumbered`.

    PUT v1/public/rec/....
    
#### Example
```json
{
 
}
```
##### Response
    Status: 201 Created
```json
{

}
```
	
## 3. Create a Market Transaction

Transfers in the M-RETS system are represented on a basic level by User Transactions and Transaction Details. The User Transaction captures important information about the transfer such as the transaction type, date the transaction was started/completed, and who started/completed the transaction. 

A `transfer` User Transaction could have one or many associated transaction details that represent the individual certificate quantities that were involved in the transaction. For example, if a user were to select 3 rows and complete a Market Transfer in the UI, that User Transaction would have three associated Transaction Details.

Market transfers only involve one step. A user initiates a transfer and it will immediately be completed requiring no additional steps.

The market transfer will deposit the certificates on the receiving organization's Purchased account.

### Drafting a transaction

All transactions are initiated in the same way.

    POST v1/public/rec/user_transactions

#### Example
```json
{
  "data": {
    "type": "user_transactions",
    "attributes": {
      "transaction_type": "market transfer"
    }
  }
}
```
##### Response
    Status: 201 Created
```json
{
  "data": {
    "id": "<transaction uuid>",
    "type": "user_transactions",
    "links": {...},
    "attributes": {
      "transaction_type": "market transfer",
      "status": "draft",
      "created_at": "2020-01-01T00:00:00Z",
      "updated_at": "2020-01-01T00:00:00Z",
      "retirement_type": null,
      "started_at": null,
      "ended_at": null,
      "compliance_period": null,
      "retired_to": null,
      "notes": null,
      "retired_quarter": null,
      "retirement_reason": null
    },
    "relationships": [...]
  }
}
```

### Specifying the Transaction Type

For a market transfer, the transaction type should be `market transfer`.

```json
  "transaction_type": "market transfer"
```

### Creating Transaction Details

Transaction Details can be created into that draft User Transaction.

    POST v1/public/rec/transaction_details

#### Example
```json
{
  "data": {
    "type": "transaction_details",
    "attributes": {
      "serial_number_start": 1,
      "serial_number_end": 100
    },
    "relationships": {
      "user_transaction": {
        "data": {
          "type": "user_transactions",
          "id": "<transaction uuid>"
        }
      },
      "to_organization": {
        "data": {
          "type": "organizations",
          "id": "<to organization uuid>"
        }
      },
      "certificate": {
        "data": {
          "type": "certificates",
          "id": "<certificate uuid>"
        }
      }
    }
  }
}
```
#### Response
    Status: 201 Created
```json
{
  "data": {
    "id": "...",
    "type": "transaction_details",
    "links": {...},
    "attributes": {
      "serial_number_start": 1,
      "serial_number_end": 100,
      "quantity": 100,
      "created_at": "2020-01-01T00:00:00Z",
      "updated_at": "2020-01-01T00:00:00Z"
    },
    "relationships": [...]
  }
}
```

### Selecting Certificates

One or many Certificates are specified. To view what the possible options are, the full list of Certificates with Active Certificate Quantities can be retrieved with this call:

    GET /v1/public/rec/certificate_quantities?filter[status]=active&include=certificate

The available certificates come from the "For Sale" accounts of a participant organization.

#### Response
    Status: 200 OK
```json
{
  "data": [
    {
      "id": "...",
      "type": "certificate_quantities",
      "links": {...},
      "attributes": {
        "quantity": 100,
        "serial_number_end": 100,
        "serial_number_start": 1,
        "serial_number_base": "...",
        "rrc_quantity": "...",
        "status": "active",
        "created_at": "2020-01-01T00:00:00Z",
        "updated_at": "2020-01-01T00:00:00Z"
      },
      "relationships": {
        "account": {...},
        "certificate": {
          "links": {...},
          "data": {
            "type": "certificates",
            "id": "<certificate uuid>"
          }
        },
        "transaction_detail": {...}
      }
    },
    {...}
  ]
}
```

Then select a Certificate and include it in a post call like this:

```json
"certificate": {
  "data": {
    "type": "certificates",
    "id": "<certificate uuid>"
  }
}
```

### Specifying the Receiving Party

The destination on a market transfer should be one within the participant Organizations of the market. To view what the possible options are, the full list of participant Organizations can be retrieved with this call:

    POST /v1/public/rec/organizations?filter[participates_in_market]=<market program uuid>

Find your Market's program uuid with this call:

    GET /v1/public/rec/programs?filter[is_market]=true

##### Response
    Status: 200 OK
```json
{
  "data": [
    {
      "id": "<organization uuid>",
      "type": "organizations",
      "links": {...},
      "attributes": {
        "name": "...",
        "resource_type": "rec",
        "account_type": "...",
        "organization_type": "...",
        "organization_subtype": "...",
        "created_at": "2020-01-01T00:00:00Z",
        "updated_at": "2020-01-01T00:00:00Z"
      },
      "relationships": [...]
    },
    {...}
  ]
}
```

Then select an Organization and include it in a post call like this:

```json
"to_organization": {
  "data": {
    "type": "organizations",
    "id": "<organization uuid>"
  }
}
```

The M-RETS platform also sends out email notifications to both sending organization and receiving organization.

Email notification settings can be viewed and updated in the M-RETS user interface by clicking on the Org in the upper right corner, then navigating to the User table.

### Enqueue Transaction

Once the draft transaction is completed it needs to be enqueued with this call:

    PUT /v1/public/rec/user_transactions/<transaction uuid>/enqueue
##### Response
    Status: 200 OK
