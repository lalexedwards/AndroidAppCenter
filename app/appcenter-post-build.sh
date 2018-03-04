#set -ex
#echo "Signing APK with apksigner"
#/Users/vsts/Library/Android/sdk/build-tools/27.0.3/apksigner sign --ks shawn.jks \
#--ks-pass pass:$keystorePass \
#--ks-key-alias $alias \
#--key-pass pass:$keyPass \
#$APPCENTER_OUTPUT_DIRECTORY/*.apk


/Users/vsts/Library/Android/sdk/build-tools/27.0.3/apksigner verify $APPCENTER_OUTPUT_DIRECTORY/*.apk
