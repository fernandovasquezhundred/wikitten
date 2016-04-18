Create an schema and upload in pentaho-solutions, and setup data sources in: `/opt/pentaho/biserver-ce/pentaho-solutions/system/olap/datasources.xml`

    <Catalog name="__name__">
        <DataSourceInfo>Provider=mondrian;DataSource=__jndi-name__</DataSourceInfo>
        <Definition>solution:/__pentaho-solutions-path__/__xml-name__.xml</Definition>
    </Catalog>

Set password for publishing in /opt/pentaho/biserver-ce/pentaho-solutions/system/publisher_config.xml

    <publisher-config>
        <publisher-password>miau</publisher-password>
    </publisher-config>

You should restart the BI-Server after changing the password

Mondrian service URL for REX

    http://localhost:8080/pentaho/Xmla?userid=joe&password=password
