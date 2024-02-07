#!/bin/bash
for application in "$(gnustep-config --variable=GNUSTEP_LOCAL_APPS)"/*.app; do
    appname=${application##*/}
    sudo cp "$application"/Resources/"${appname%.app}".desktop /usr/local/share/applications
done