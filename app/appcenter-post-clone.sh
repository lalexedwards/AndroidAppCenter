set -ex
echo 'source ~/.gradlerc' >> ~/.bashrc 

echo 'export APPCENTER_KEYSTORE_PASSWORD=$keystorePass' >> ~/.gradlerc
echo  'export APPCENTER_KEY_ALIAS=$alias' >> ~/.gradlerc 
echo  'export APPCENTER_KEY_PASSWORD=$keyPass' >> ~/.gradlerc 

#source ~/.gradlerc

cat ~/.bashrc
cat ~/.gradlerc 

source ~/.bashrc
