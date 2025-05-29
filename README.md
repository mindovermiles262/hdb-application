# Harper Application Template

This is a template for building [Harper](https://www.harpersystems.dev/) applications. You can download this repository as a starting point for building applications with Harper.

To get started, make sure you have Docker (or similar) installed. Then it's as simple as

```sh
docker build -t hdb-container .
docker run -p 9925:9925 -p 9926:9925 hdb-container
```

Once running, test your application works by querying the `/healthz` endpoint:

```sh
curl http://localhost:9926/healthz
```
Should result in:

```json
{"Error: Must login"}
```

(You can log in using basic auth header, `-H 'authorization: Basic <BASE64-ENCODED-USERNAME-PASSWORD>')

Or navigate to [http://localhost:9925](http://localhost:9925) in a browser and view the functional database explorer.

For more information about getting started with HarperDB and building applications, see our [getting started guide](https://docs.harperdb.io/docs/getting-started).

For more information on Harper Components, see the [Components documentation](https://docs.harperdb.io/docs/developers/components).

This template includes a [default configuration](./config.yaml), which specifies how files are handled in your application.

The [schema.graphql](./schema.graphql) is the table schema definition. This is the main starting point for defining your database schema, specifying which tables you want and what attributes/fields they should have.

The [resources.js](./resources.js) provides a template for defining JavaScript resource classes, for customized application logic in your endpoints.
