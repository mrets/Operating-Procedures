# Distributed Generation Units (generator_units)

| Name                     | Data Field               | Description                                                                                                              |
| ------------------------ | ------------------------ | ------------------------------------------------------------------------------------------------------------------------ |
| Id                       | id                       | ID for the DGG                                                                                                           |
| Unit Id                  | unit_id                  | Job title of contact                                                                                                     |
| Group Name               | name                     | Group/Generator Plant-Unit Name                                                                                          |
| Revenue Meter Id         | revenue_meter_id         | Revenue Meter Id                                                                                                         |
| Commenced Operation Date | commenced_operation_date | Auto-calculated based on individual unit data. Use oldest COD date within the group.                                     |
| Nameplate Capacity       | nameplate_capacity       | Auto-calculated based on individual unit data. Use sum of all active unit nameplates in group.                           |
| Status                   | status                   | Automatically populated at creation. Enum options are: { waiting_approval: 0, approved: 1, rejected: 2, deactivated: 3 } |
| Expansion Indicator      | expansion_indicator      | Yes or NULL. Optional. Applicable if registered older units at premise.                                                  |
| Generator Id             | generator_id             | Generator ID                                                                                                             |
| Contact ID               | contact_id               | Contact ID for the DGG Unit                                                                                              |
| Created At               | created_at               | Date auto populated by system at time of creation                                                                        |
| Updated At               | updated_at               | Date auto populated by system at time of update                                                                          |
| Nameplate Capacity Unit  | nameplate_capacity_unit  | Must be in MW AC format, not inverter rating                                                                             |
