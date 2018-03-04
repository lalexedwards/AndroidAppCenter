set -ex


echo 'org.gradle.project.keystorePass=' >> $APPCENTER_SOURCE_DIRECTORY/gradle.properties
echo  'org.gradle.project.alias=' >> $APPCENTER_SOURCE_DIRECTORY/gradle.properties
echo  'org.gradle.project.keyPass=' >> $APPCENTER_SOURCE_DIRECTORY/gradle.properties
cat $APPCENTER_SOURCE_DIRECTORY/gradle.properties
