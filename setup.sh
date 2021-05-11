echo "🚀 What is the 'Database Administrator' token?
Go to https://astra.datastax.com and register or login
Select your database from the left panel from the Astra UI
Click on 'Current Organization' -> 'Organization Settings' in the menu bar at the left.
Click on 'Token Management' in the new menu bar at the left.
Choose 'Database Administrator' in the Role selection and click 'Generate Token'
What you need here is the third field, the 'Token'. Copy that value and paste it here:"
  read -r ASTRA_DB_ADMIN_TOKEN
  export ASTRA_DB_ADMIN_TOKEN="${ASTRA_DB_ADMIN_TOKEN}"

echo "🚀 What is the cluster ID you want to use?
Return to https://astra.datastax.com
Select your database from the left panel from the Astra UI
Copy the Cluster ID using the copy widget to the right of the ID and paste it here:"
  read -r ASTRA_DB_ID
  export ASTRA_DB_ID="${ASTRA_DB_ID}"

echo "Getting database by ID..."
DBbyID=$(curl -s --request GET \
  --url "https://api.astra.datastax.com/v2/databases/${ASTRA_DB_ID}?include=nonterminated&provider=all&limit=25" \
  --header "authorization: Bearer ${ASTRA_DB_ADMIN_TOKEN}" \
  --header 'content-type: application/json')

FIRST_DB_SECURE_BUNDLE_URL=$(echo "${DBbyID}" | jq -c '.info.datacenters[0].secureBundleUrl')
echo $FIRST_DB_SECURE_BUNDLE_URL

export ASTRA_SECURE_BUNDLE_URL=${FIRST_DB_SECURE_BUNDLE_URL}
gp env ASTRA_SECURE_BUNDLE_URL=${FIRST_DB_SECURE_BUNDLE_URL} &>/dev/null

# Download the secure connect bundle
echo "Downloading secure bundle astra-creds.zip"
curl -s -L $(echo $FIRST_DB_SECURE_BUNDLE_URL | sed "s/\"//g") -o astra-creds.zip