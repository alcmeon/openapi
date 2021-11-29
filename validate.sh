#/bin/sh
npm install @apidevtools/swagger-cli
for f in user subbot webchat exports
do
  echo "Validating $f";
  ./node_modules/@apidevtools/swagger-cli/bin/swagger-cli.js validate $f.yaml;
done
