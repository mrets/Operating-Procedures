# Distributed Generation Groups and their Generator units

The tracking system currently supports the registration of large groups of small (under 50kW), customer-sited distributed generating units under a single Generating Unit (GU) ID. This program allows units to be grouped together for the purpose of registration documentation, generation data reporting, and certificate creation. The group is treated as a single unit by most of the system for all intents and purposes. These types of registrations are referred to a Distributed Generation Groups (DG Group), previously know and Small-Scale Aggregation Groups in WREGIS.

When adding a generator unit via API, the workflow consists of first creating a DG Group in the UI which acts as a specific type of `generator`. The units then can be associated to this group by including the DGG's generator ID in the the relationship to the specific unit you are creating.
