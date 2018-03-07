#echo "Signing APK with apksigner"
#/Users/vsts/Library/Android/sdk/build-tools/27.0.3/apksigner sign --ks shawn.jks \
#--ks-pass pass:$keystorePass \
#--ks-key-alias $alias \
#--key-pass pass:$keyPass \
#$APPCENTER_OUTPUT_DIRECTORY/*.apk

         echo "Signing APK with apksigner"
         /Users/vsts/Library/Android/sdk/build-tools/27.0.3/apksigner sign --ks $APPCENTER_SOURCE_DIRECTORY/.certs/keystore.jks \
         --ks-pass pass:$keystorePass \
         --ks-key-alias $alias \
         --key-pass pass:$keyPass \
         $APPCENTER_OUTPUT_DIRECTORY/*.apk
        
     echo $AGENT_JOBSTATUS 
/Users/vsts/Library/Android/sdk/build-tools/27.0.3/apksigner --help

/Users/vsts/Library/Android/sdk/build-tools/27.0.3/apksigner verify --print-certs $APPCENTER_OUTPUT_DIRECTORY/*.apk
