#
# Custom Domains OpenShift
# https://access.redhat.com/documentation/en-US/OpenShift_Online/2.0/html/User_Guide/sect-Custom_Domains_and_SSL_Certificates.html
#
rhc alias add App_Name Custom_Domain_Name
rhc alias list App_Name
rhc alias remove App_Name Custom_Domain_Name

Root User: adminRClxlve
Root Password: klwsmw377fza
Database Name: php

Connection URL: mysql://$OPENSHIFT_MYSQL_DB_HOST:$OPENSHIFT_MYSQL_DB_PORT/
