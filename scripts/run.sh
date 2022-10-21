#!/bin/sh

if [ -z "$JUPITERONE_API_BASE_URL" ]
then
    JUPITERONE_API_KEY=$JUPITERONE_API_KEY JUPITERONE_ACCOUNT=$JUPITERONE_ACCOUNT_ID yarn j1-integration run -i $INTEGRATION_INSTANCE_ID
else
    JUPITERONE_API_KEY=$JUPITERONE_API_KEY JUPITERONE_ACCOUNT=$JUPITERONE_ACCOUNT_ID yarn j1-integration run -i $INTEGRATION_INSTANCE_ID --api-base-url $JUPITERONE_API_BASE_URL
fi