# Submit Generation

## Use Case

Any registered generator is eligible to issue certificates. Generation is usually submitted monthly for large generators and can be submitted annually for generators under 150kW.

M-RETS issues 1 Renewable Energy Cerificate for each MWh submit. 

## Notes About the Entity

Generation submission occurs through the creation of a generation entry. The system runs a series of validation on generation entries and automatically issues certificates if all validations pass. Examples of validations run are referenced below, but feel free to contact our system administrators for additional information related to generation validations.

## The Basic Call

To create a generation entry:

```
POST v1/public/rec/generation_entries
```

Here is an example with multiple `fuel_types` uploading 1 MWh (quantity). The allocation of all fuel types should sum to 1.0 (this is 100% allocated):

```
{
    "data": {
        "type": "generation_entries",
        "attributes": {
            "generation_period_start": "2020-04-27T00:00:00Z",
            "generation_period_end": "2020-04-28T00:00:00Z",
            "quantity": 1,
            "quantity_unit": "mwh",
            "fuel_allocation": [
                {
                    "mrets_id": "{{mrets_id for generator unit, i.e. "M1234"}}",
                    "allocations": [
                        {
                            "generator_fuel_id": {{generator_fuel_id}},
                            "allocation": 0.5
                        },
 {
                            "generator_fuel_id": {{generator_fuel_id}},
                            "allocation": 0.5
                        }
                    ]
                }
            ]
        },
        "relationships": {
            "generator": {
                "data": {
                    "type": "generators",
                    "id": "{{generator_id}}"
                }
            }
        }
    }
}
```
To submit the generation entry for validation and issuance, enqueue the entry using this PUT url and include the generation_id that was created in the above POST response:
```

{{mrets_url}}/v1/public/rec/generation_entries/{{generation_entry_id}}/enqueue
```
# Validations

Some of the validations in place include:

* Generation more than 62 days old must be approved by the System Admin.
* There can't be any temporal gaps in the submittal of generation.
* Generation can't exceed the theoretical limits of a generator based on the nameplate capacity and capacity factor.

Here is an example response if there's a gap in the submittal process.

```
{
  "rows":[{"errors":["There's an existing generation that overlaps these dates"],"row":["727","206","8/2018","03/01/2019","03/15/2019","33945"]}]}
}
```
