| Name                | Data Field                        | Description                                                                                                                                   |   |
|---------------------|-----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|---|
| Transaction Type    | transaction_type                  | The type of transaction.                                                                                                                      |   |
| Started At          | started_at                        | The timestamp created when a transaction was initiated                                                                                        |   |
| Ended At            | ended_at                          | The timestamp created when a transaction was completed.                                                                                       |   |
| Status              | status                            | The current state of the transaction.                                                                                                         |   |
| Notes               | notes                             | Any special comments included on the transaction to clarify purpose or any special steps taken by the administrator.                          |   |
| User                | relationship: user                | The user that initializes a transaction.                                                                                                      |   |
| Transaction Details | relationship: transaction_details | The associated quantities included in the transaction. Includes the specific start and end serial numbers for specifc certificate quantities. |   |
| Retirement Options  | relationship: retirement_options  | The associated retirement information. Only relevant for retirement transactions.                                                             |   |