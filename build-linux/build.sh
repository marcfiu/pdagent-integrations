#!/bin/bash

. ./make_common.env

OS=$1
if [[ $OS == "ubuntu" ]]
then
    dpkg -i /pd-agent-install/build-linux/release/deb/pdagent_integrations_${MYVERSION}_all.deb
elif [[ $OS == "centos" ]]
then
    rpm --import /pd-agent-install/target/tmp/GPG-KEY-RPM-pagerduty
    yum install -y /pd-agent-install/build-linux/release/rpm/pdagent-integrations-${MYVERSION}.noarch.rpm
fi
