# Overview

When a migration is run in a CI/CD pipeline which adds a value to an enum and performs a data migration to insert such records, it causes running application to fail because Prisma Client does not recognize the new value.

This has caused a few outages in my application, where we use [Casl](https://casl.js.org/v4/en/guide/intro)'s `Subject` enum for permissions, and we often add user permissions/policies as part of a data migration when adding a new Subject, which causes downtime everytime as users permissions are retrieved from DB for each requests.

# To reproduce

This repository simulates a running backend server and a C/CD pipeline which applies a prisma migration to add an enum value as well as doing a data migration to insert a record with this enum value.

To reproduce:

1. Make sure you have `docker`, `node` and `make` installed
2. Run `make run`
3. See error `Value 'B' not found in enum 'MyEnum'`
