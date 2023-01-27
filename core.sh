#!/bin/bash

echo -e "*\t-\tcore\t1048576" >> /etc/security/limits.conf

sed -i'' -r -e "/\#DumpLocation = \/var\/spool\/abrt/a\DumpLocation = \/app" /etc/abrt/abrt.conf

systemctl restart abrtd
systemctl status abrtd | grep Active
