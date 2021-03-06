#!/usr/bin/env bash

umask 0077

mkdir -p "$HOME/Library/VirtualBox"

umask 0022

if [ ! -f "$HOME/Library/VirtualBox/VirtualBox.xml" ] ; then

cat <<- EOF > "$HOME/Library/VirtualBox/VirtualBox.xml"
	<?xml version="1.0"?>
	<!--
	** DO NOT EDIT THIS FILE.
	** If you make changes to this file while any VirtualBox related application
	** is running, your changes will be overwritten later, without taking effect.
	** Use VBoxManage or the VirtualBox Manager GUI to make changes.
	-->
	<VirtualBox xmlns="http://www.virtualbox.org/" version="1.12-macosx">
	  <Global>
	    <SystemProperties defaultMachineFolder="$HOME/.VirtualBox VMs" defaultHardDiskFormat="VDI" VRDEAuthLibrary="VBoxAuth" webServiceAuthLibrary="VBoxAuth" LogHistoryCount="3" proxyMode="0" exclusiveHwVirt="false"/>
	  </Global>
	</VirtualBox>
EOF

fi
