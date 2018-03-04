set -ex

echo 'keystore_password='$keystorePass >> $APPCENTER_SOURCE_DIRECTORY/gradle.properties
echo 'key_alias='$alias >> $APPCENTER_SOURCE_DIRECTORY/gradle.properties
echo 'key_password='$keyPass >> $APPCENTER_SOURCE_DIRECTORY/gradle.properties
cat $APPCENTER_SOURCE_DIRECTORY/gradle.properties
