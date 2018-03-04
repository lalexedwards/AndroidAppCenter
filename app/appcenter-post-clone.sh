set -ex

echo 'export source ~/.gradlerc' >> ~/.bashrc
echo 'export APPCENTER_KEYSTORE_PASSWORD=$keystorePass' >> ~/.gradlerc
echo  'export APPCENTER_KEY_ALIAS=$alias' >> ~/.gradlerc 
echo  'export APPCENTER_KEY_PASSWORD=$keyPass' >> ~/.gradlerc 

cat ~/.gradlerc 
cat ~/.bashrc
