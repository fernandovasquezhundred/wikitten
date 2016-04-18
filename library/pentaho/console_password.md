### Changing password of Admin Console

Generate the password from the command line in the admin-console directory:

    java -cp lib/jetty-6.1.2.jar:lib/jetty-util-6.1.9.jar org.mortbay.jetty.security.Password user password
    password
    OBF:1v2j1uum1xtv1zej1zer1xtn1uvk1v1v
    MD5:5f4dcc3b5aa765d61d8327deb882cf99
    CRYPT:usjRS48E8ZADM
    
for windows:

    java -cp lib\jetty-6.1.2.jar;lib\jetty-util-6.1.9.jar org.mortbay.jetty.security.Password user pass

Edit `${Pentaho}/administration-console/resource/config/login.properties`

    <username>: OBF:<obf_password>,<role1>,<role2>,<role3>,...
