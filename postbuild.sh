#!/bin/bash

pwd
CONVERTER_DL_URL=$(curl -s https://api.github.com/repos/tewhatuora/fhir-openapi-converter/releases/latest | jq -r '.assets[] | select(.name == "cli.js") | .browser_download_url')
curl -L -o ../scripts/fhir-openapi-converter.js $CONVERTER_DL_URL
ls ../scripts
ls

LOG_LEVEL=debug node ../scripts/fhir-openapi-converter.js --inputFolder fsh-generated --outputFolder oas
result=$?

if [ $result -ne 0 ]; then
  echo "Error generating OpenAPI specification. Exiting."
  exit $result
fi

yaml_file=$(echo oas/*.yaml)
echo "Copying OpenAPI specification to output/openapi.yaml"
cp $yaml_file output/openapi.yaml