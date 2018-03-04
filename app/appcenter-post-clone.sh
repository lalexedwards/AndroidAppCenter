set -ex


echo 'org.gradle.project.keystorePass=93289328' >> $APPCENTER_SOURCE_DIRECTORY/gradle.properties
echo  'org.gradle.project.alias=shawn' >> $APPCENTER_SOURCE_DIRECTORY/gradle.properties
echo  'org.gradle.project.keyPass=93289328' >> $APPCENTER_SOURCE_DIRECTORY/gradle.properties
cat $APPCENTER_SOURCE_DIRECTORY/gradle.properties
