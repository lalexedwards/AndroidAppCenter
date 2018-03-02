#find / -iname '*apksigner*'

/Users/vsts/Library/Android/sdk/build-tools/27.0.3/apksigner sign -ks $APPCENTER_SOURCE_DIRECTORY/.certs/keystore.jks \
$APPCENTER_OUTPUT_DIRECTORY/*.apk
