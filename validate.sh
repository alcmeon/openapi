#/bin/sh
#npm install --prefix ./ @apidevtools/swagger-cli
for f in user subbot subbot-api inmessage exports synchronize custom-field scenarios application embed ai ai-api kakaotalk-send-api core-api oauth
do
  echo "- Validating $f";
  ./node_modules/@apidevtools/swagger-cli/bin/swagger-cli.js validate $f.yaml;
done
