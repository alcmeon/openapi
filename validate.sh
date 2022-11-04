#/bin/sh
npm install --prefix ./ @apidevtools/swagger-cli
for f in user subbot inmessage exports synchronize custom-field scenarios application embed
do
  echo "Validating $f";
  ./node_modules/@apidevtools/swagger-cli/bin/swagger-cli.js validate $f.yaml;
done
