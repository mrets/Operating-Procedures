# DG Groups Data Dictionary

# Generator Unit Level Fields

| Name                     | Data Field               | Description                                                                                    |
| ------------------------ | ------------------------ | ---------------------------------------------------------------------------------------------- |
| Id                       | id                       | ID for the DGG                                                                                 |
| Unit Id                  | unit_id                  | Job title of contact                                                                           |
| Group Name               | name                     | Group/Generator Plant-Unit Name                                                                |
| Revenue Meter Id         | revenue_meter_id         | Revenue Meter Id                                                                               |
| Commenced Operation Date | commenced_operation_date | Auto-calculated based on individual unit data. Use oldest COD date within the group.           |
| Nameplate Capacity       | nameplate_capacity       | Auto-calculated based on individual unit data. Use sum of all active unit nameplates in group. |
| Status                   | status                   | Street address of contact                                                                      |
| Expansion Indicator      | expansion_indicator      | Yes or NULL. Optional. Applicable if registered older units at premise.                        |
| Generator Id             | generator_id             | City of contact                                                                                |
| Contact ID               | contact_id               | Contact ID for the DGG Unit                                                                    |
| Created At               | created_at               | Auto populated by system                                                                       |
| Updated At               | updated_at               | Auto populated by system                                                                       |
| Nameplate Capacity Unit  | nameplate_capacity_unit  | Must be in MW AC format, not inverter rating                                                   |
