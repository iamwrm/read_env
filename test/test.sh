#!/bin/bash

set -ueox pipefail


echo "We create a .env file with DB_URL"
cat << EOF > .env
DB_URL=postgres://user:pass@localhost:5432/db
EOF


echo "We read DB_URL from .env file"
export DB_URL=$(bash read_env.sh .env DB_URL)
echo "We read DB_URL from .env file is: $DB_URL"


echo "Now we try to read DB_URL1 from .env file, which does not exist"
export DB_URL=$(bash read_env.sh .env DB_URL1)
## expect return code 1
if [ $? -eq 1 ]; then
  echo "We got expected return code 1"
else
  echo "We got unexpected return code $?"
fi


