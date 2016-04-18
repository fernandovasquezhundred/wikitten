### Manual JNDI config (not using admin console)

    INSERT INTO DATASOURCE VALUES(
        'jndi_name',0,'com.mysql.jdbc.Driver',
        0,
        'root',
        'cGFzc3dvcmQ=',
        'jdbc:mysql://localhost:3306/database','SELECT 1',0);

### Getting password
python

    import base64
    print base64.b64encode("password")     # -- cGFzc3dvcmQ=
    print base64.b64decode("cGFzc3dvcmQ=") # -- password

bash

    echo password | base64
    echo "cGFzc3dvcmQ=" | base64 -d

### JNDI connections for "Report"
    
    ~/.pentaho/simple-jndi/default.properties
