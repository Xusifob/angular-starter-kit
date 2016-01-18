## On repasse tout en dev ##


# Je repasse le dev en local
gulp index-html-dev

# je passe les json de prod dans les assets
mv app/directives/json-prod.js app/json-prod.js
mv app/json.js app/directives/json.js

# Après tout, je repasse le site en dev
sed -i 's/\"ENV","prod"/\"ENV","dev"/' ./assets/js/all.js

