# read_env

A shell script read_env.sh, 
when call it like `export DB_URL=$(bash read_env.sh .env DB_URL)`,
it will read the DB_URL value in .env file to stdout and thus exported to DB_URL, 
print an error if .env doesn't contain DB_URL.

This script is useful when you want to export environment variables from a .env file to your shell environment, while you don't want to expose the credentials to screen or history.

## Usage

check the example in [test/test.sh](test/test.sh)


```bash
READ_ENV_URL=https://raw.githubusercontent.com/iamwrm/read_env/main/read_env.sh
# run read_env.sh without saving it
OPENSSL_ENC_KEY=$(bash <(curl -s $READ_ENV_URL) \
    .env OPENSSL_ENC_KEY)
```
