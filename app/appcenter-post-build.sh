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


#update your ORG name and APP name
ORG=AndroidOrg
APP=AndrXam
#This is to get the Build Details so we could pass it as part of the Email Body
build_url=https://appcenter.ms/orgs/$ORG/apps/$APP/build/branches/$APPCENTER_BRANCH/builds/$APPCENTER_BUILD_ID
#Address to send email
TO_ADDRESS="receiver@domain.com"
SUBJECT="AppCenter Build"
SUCCESS_BODY="Success! Your build completed successfully!\n\n"
FAILURE_BODY="Sorry! Your AppCenter Build failed. Please review the logs and try again.\n\n"
#If Agent Job Build Status is successful, Send the email, if not send a failure email.
if [ "$AGENT_JOBSTATUS" == "Succeeded" ];
then
	echo "Build Success!"
	echo -e ${SUCCESS_BODY} ${build_url} | mail -s "${SUBJECT} - Success!" ${TO_ADDRESS}
	echo "success mail sent"
else
	echo "Build Failed!"
	echo -e ${FAILURE_BODY} ${build_url} | mail -s "${SUBJECT} - Failed!" ${TO_ADDRESS}
	echo "failure mail sent"
fi
