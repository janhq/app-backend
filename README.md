# app-backend

1. Run docker up

```bash
docker compose up
```

2. Install [HasuraCLI](https://hasura.io/docs/latest/hasura-cli/overview/)

3. Open Hasura Console

```bash
cd hasura && hasura console
```

4. Modify [Data / Authorization / Actions / Remote Schemas / Events](https://hasura.io/docs/latest/resources/tutorials/index/)
5. Hasura Migration (using command)

```bash
# Apply all
hasura migrate apply

# Create new migration
hasura migrate create "migration_name" --from-server
# Apply migration without executing (migrate from an existing db)
hasura migrate apply --version "<version>" --skip-execution
# Apply new migration
hasura migrate apply --version "<version>"
```
Migration status

```bash
 hasura migrate status
```

| VERSION       |            NAME             | SOURCE  | STATUS  | DATABASE | STATUS |
| :------------ | :-------------------------: | :-----: | :-----: | :------: | -----: |
| 1590493510167 |            init             | Present | Present |
| 1590497881360 | create_table_public_address | Present | Present |

6. Export Metadata

```bash
# Export current metadata
hasura metadata export

# Apply metadata
hasura metadata apply
```

7. Add a checkpoint to version control

```bash
git add .
git commit -m "initialize migrations and metadata"
```
