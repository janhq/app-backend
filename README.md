# app-backend

1. Get the Compose file from our repo. If you're using curl, run this command in a new directory:

```bash
curl https://raw.githubusercontent.com/hasura/graphql-engine/stable/install-manifests/docker-compose/docker-compose.yaml -o docker-compose.yml
```

2. Run docker up

```bash
docker compose up
```

3. Install [HasuraCLI](https://hasura.io/docs/latest/hasura-cli/overview/)

4. Open Hasura Console

```bash
cd hasura && hasura console
```

5. Modify [Data / Authorization / Actions / Remote Schemas / Events](https://hasura.io/docs/latest/resources/tutorials/index/)
6. Hasura Migration (using command)

```bash
# Create new migration
hasura migrate create "migration_name" --from-server
# Apply migration without executing (migrate from an existing db)
hasura migrate apply --version "<version>" --skip-execution
# Apply new migration
hasura migrate apply --version "<version>"
```

Hasura migration status

```bash
 hasura migrate status
```

| VERSION       |            NAME             | SOURCE  | STATUS  | DATABASE | STATUS |
| :------------ | :-------------------------: | :-----: | :-----: | :------: | -----: |
| 1590493510167 |            init             | Present | Present |
| 1590497881360 | create_table_public_address | Present | Present |

7. Export Hasura Metadata

```bash
hasura metadata export
```

8. Add a checkpoint to version control

```bash
git add .
git commit -m "initialize migrations and metadata"
```
