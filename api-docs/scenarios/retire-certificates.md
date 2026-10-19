# Retire Certificates

## Use Case

Certificates are retired when the owner wants to make some kind of environmental claim. M-RETS supports a variety of Retirement Types and Reasons.

## Notes About the Entity

Retirements in the M-RETS system are represented on a basic level by **User Transactions** and **Transaction Details**. The User Transaction is created first and captures important information about the retirement such as the transaction type, the date the transaction was started/completed, who started/completed the transaction, and important details related to the retirement.

A retirement User Transaction could have one or many associated Transaction Details that represent the individual certificate quantities that were involved in the retirement. For example, if a user were to select 3 rows to be retired in the UI, that User Transaction would have three associated Transaction Details.

## Initiating a Retirement

All transactions are initiated in the same way. One or many Certificate Quantities are specified.

### Step 1: POST a `user_transaction`

`POST /v1/public/rec/user_transactions`

**Example**

```json
{
  "data": {
    "type": "user_transactions",
    "attributes": {
      "transaction_type": "retirement",
      "retirement_type": "State/Provincial Portfolio Standards",
      "retirement_reason": null,
      "retired_to": "CA",
      "retired_quarter": "Q2",
      "compliance_period": true
    },
    "relationships": {
      "retirement_option": {
        "data": {
          "type": "retirement_options",
          "id": "<retirement option uuid>"
        }
      }
    }
  }
}
```

#### Specifying the Transaction Type

For a retirement, the transaction type should be `retirement`.

```json
"transaction_type": "retirement"
```

#### Specifying the Retirement Options

To view valid retirement options, this call can be used:

`GET /v1/public/rec/retirement_options`

**Response**

`Status: 200 OK`

```json
{
  "data": [
    {
      "id": "<retirement option uuid>",
      "type": "retirement_options",
      "links": {...},
      "attributes": {
        "resource_type": "rec",
        "name": "State/Provincial Portfolio Standards",
        "reason": null,
        "retired_to": "all",
        "quarter": false,
        "description": null,
        "compliance_period": true,
        "main_reason": "compliance"
      }
    },
    {...}
  ]
}
```

Choose the desired Retirement Option `id` and include it in the initial `user_transaction` POST, or update via a PUT request like this:

```json
"retirement_option": {
  "data": {
    "type": "retirement_options",
    "id": "<retirement option uuid>"
  }
}
```

On the User Transaction object:

- The value of `retirement_type` should match the `name` from the selected `retirement_option`.
- The `retirement_reason` value should match one of the values from the `reason` field on the selected `retirement_option` (if available).
- The `retired_to` value on the user transaction requires a State/Province abbreviation from the country specified in the `retired_to` field of the `retirement_option`. If the value is `all`, then all countries are allowed.

A successful POST of the `user_transaction` will return a `201 Created` response.

`Status: 201 CREATED`

Note the `user_transaction` uuid and proceed to the next step.

```json
{
    "data": {
        "id": "<user transaction uuid>",
        "type": "user_transactions",
        "attributes": {
            "transaction_type": "retirement",
            "created_at": "2026-10-19T17:07:58Z",
            "updated_at": "2026-10-19T17:07:58Z",
            "status": "draft",
            "retirement_type": "State/Provincial Portfolio Standards",
            "started_at": null,
            "ended_at": null,
            "compliance_period": "2024",
            "retired_to": "MN",
            "notes": "test",
            "retired_quarter": "Q2",
            "retirement_reason": "null",
            "retirement_kind": "compliance",
            "export_system": null,
            "export_organization_name": null,
            "export_organization_id": null,
            "hourly_claim": false
        }
            }
}
```

### Step 2: POST `transaction_details`

`POST {{mrets_url}}/v1/public/rec/transaction_details`

**Example**

```json
{
    "data": {
        "attributes": {
            "serial_number_start": <integer>,
            "serial_number_end": <integer>
        },
        "relationships": {
            "user_transaction": {
                "data": {
                    "type": "user_transactions",
                    "id": "<user transaction uuid>"
                }
            },
            "certificate": {
                "data": {
                    "type": "certificates",
                    "id": "<certificate uuid>"
                }
            },
            "from_account": {
                "data": {
                    "type": "accounts",
                    "id": "<from account uuid>"
                }
            },
            "to_account": {
                "data": {
                    "type": "accounts",
                    "id": "<to account uuid>"
                }
            },
            "to_organization": {
                "data": {
                    "type": "organizations",
                    "id": "<to organization uuid>"
                }
            }
        },
        "type": "transaction_details"
    }
}

```

#### Specifying the Certificates

To view the full list of active certificate quantities and retrieve their certificate id and account id (`from_account`), call:

`GET /v1/public/rec/certificate_quantities?include=account,certificate&filter[status]=active`

#### Specifying the Retirement Account (`to_account`)

The destination on a retirement should be a Retirement Account within the same organization. To view the possible options, the full list of Retirement Accounts can be retrieved with this call:

`GET /v1/public/rec/accounts?filter[account_type]=retirement&filter[status]=open`

**Response**

`Status: 200 OK`

```json
{
  "data": [
    {
      "id": "<account uuid>",
      "type": "accounts",
      "links": {...},
      "attributes": {
        "name": "...",
        "status": "open",
        "account_type": "retirement",
        "created_at": "2020-01-01T00:00:00Z",
        "updated_at": "2020-01-01T00:00:00Z"
      },
      "relationships": [...]
    },
    ...
  ]
}
```

Then select a Retirement Account and include it in a POST call like this:

```json
"to_account": {
  "data": {
    "type": "accounts",
    "id": "<account uuid>"
  }
}
```

### Step 3: Enqueue the `user_transaction`

Once the user transaction and transaction details are set up with the necessary details, enqueue the `user_transaction` to submit it using this call:

`PUT {{mrets_url}}/v1/public/rec/user_transactions/{{user_transaction_id}}/enqueue`

The M-RETS platform also sends out email notifications to both the sending organization and destination organization.

Email notification settings can be viewed and updated in the M-RETS user interface by clicking on the Org in the upper right corner, then navigating to the User table.
