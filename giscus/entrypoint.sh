#!/bin/sh

set -e

files=$(grep -Ril 'REPLACE_ME__NEXT_PUBLIC' /app/.next)
vars=$(printenv | grep "NEXT_PUBLIC_" | sed 's/^\([^=]*\)=.*/\1/g')
for file in $files; do
  for var in $vars; do
    sed -i "s/REPLACE_ME__${var}/$(printenv $var | sed 's/\//\\\//g')/g" "$file"
  done
done

exec "$@"
