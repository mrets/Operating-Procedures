# eTags Data Dictionary

| Name                   | Data Field             | Description                                                                                                                                 |
| ---------------------- | ---------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- |
| Start Date             | start_date             | 'ISO 8601 - Format: YYYY-MM-DD', required                                                                                                   |
| Stop Date              | stop_date              | 'ISO 8601 - Format: YYYY-MM-DD', required                                                                                                   |
| Load                   | load                   | load - string - required                                                                                                                    |
| Load Control Area      | load_control_area      | Geographic area or region where the electrical load is monitored and controlled by a specific entity or system operator - string - required |
| Generator control area | generator_control_area | Geographic region where the generation of electrical power is monitored and controlled. - - string - string                                 |
| Total                  | total                  | Total e-tags - integer - required                                                                                                           |
| Total unit             | total_unit             | total unit - string- required                                                                                                               |
| Matched                | matched                | Matched count - Integer                                                                                                                     |
| Matched unit           | matched_unit           | i.e. 'mwh' - String                                                                                                                         |
| Transferred            | transferred            | transferred count- Integer                                                                                                                  |
| Transferred Unit       | transferred_unit       | i.e. 'mwh' - String                                                                                                                         |
| Remaining unit         | remaining_unit         | i.e. 'mwh' - String                                                                                                                         |
| Miscellaneous Token    | miscellaneous_token    | String                                                                                                                                      |
| Created at             | created_at             | DateTime, desc: 'ISO 8601 - UTC'                                                                                                            |
| Updated at             | updated_at             | DateTime, desc: 'ISO 8601 - UTC'                                                                                                            |
