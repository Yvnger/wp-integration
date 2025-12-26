#!/bin/sh
set -e

if [ ! -f "bedrock/composer.json" ]; then
    echo "Bedrock not found. Initializing project in ./bedrock..."
    composer create-project roots/bedrock ./bedrock
else
    echo "Bedrock found. Installing dependencies..."
fi

cd bedrock
composer install

exec "$@"
