#!/bin/bash
HOMEFOLDER=$( dscl "/Active Directory/BOYDEN-HULL/All Domains" -read /Users/$USER dsAttrTypeNative:homeDirectory | awk '{print $2}' )
mount -t smbfs $HOMEFOLDER /Users/Shared/HomeFolder