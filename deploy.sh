# je passe les json de prod dans les assets
mv app/json-prod.js app/directives/json-prod.js
mv app/directives/json.js app/json.js

#exit

#deployment gulp
gulp deploy
    # Comprends
        # Concaténation & minification des scripts
        # Compilation des sass, Concaténation & minifaction des css
        # Création du fichier index.html de prod
        # Minification des html


# Je passe le site en prod
sed -i 's/\"ENV","dev"/\"ENV","prod"/' ./assets/js/all.js

echo "Please enter a commit message "
read commit_message


# J'ajoute le tout a bitbuckey
git add .
git commit -m "Deployment $commit_message `date +%Y-%m-%d:%H:%M:%S`"
git push


## On repasse tout en dev ##


# Je repasse le dev en local
gulp index-html-dev

# je passe les json de prod dans les assets
mv app/directives/json-prod.js app/json-prod.js
mv app/json.js app/directives/json.js

# Après tout, je repasse le site en dev
sed -i 's/\"ENV","prod"/\"ENV","dev"/' ./assets/js/all.js

