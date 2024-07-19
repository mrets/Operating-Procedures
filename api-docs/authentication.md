## Authentication

M-RETS API access is authenticated via API Token. Tokens are managed by users with API permissions in the M-RETS portal.  

### How To Use

Here's an example of how the curl request should look with your API token entered:

```
curl --location --request GET '{{base_url}}/v1/public/accounts' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--header 'X-Api-Key: <token>'
```
