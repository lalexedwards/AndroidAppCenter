set -ex


echo 'ORG_GRADLE_PROJECT_keystorePass=$keystorePass' >> $APPCENTER_SOURCE_DIRECTORY/gradle.properties
echo  'ORG_GRADLE_PROJECT_alias=$alias' >> $APPCENTER_SOURCE_DIRECTORY/gradle.properties
echo  'ORG_GRADLE_PROJECT_keyPass=$keyPass' >> $APPCENTER_SOURCE_DIRECTORY/gradle.properties

