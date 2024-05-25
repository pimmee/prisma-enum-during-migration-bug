# Overview

When a migration is run in a CI/CD pipeline which adds a value to an enum and performs a data migration to insert such records, it causes running application to fail because Prisma Client does not recognize the new value.

To reproduce:

1. Make sure you have `docker`, `node` and `make` installed
2. Run `make run`
