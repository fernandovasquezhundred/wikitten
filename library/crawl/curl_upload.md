La web desde línea de comandos: secretos de cURL

### 1. Descargar archivos con cURL

Este es el truco más simple, y si sabes algo de línea de comandos en linux, ya lo habrás intuidos. Solamente se agreag al final el simbolo de mayor `>` y pones el nombre del archivo donde quieres que vaya el contenido.

    curl http://www.centos.org > centos-org.html

### 2. Subir in archivo desde línea de comandos con cURL:

Realizar un POST común y corriente, incluyendo el nombre de tu archivo como un parámetro más, sólo que deberás anteponer un "@" adelante:

    curl -i -F filedata=@localfile.jpg http://example.org/upload

Se puede agreagar más parámetros POST:

    curl -i -F filedata=@localfile.jpg http://example.org/upload -F name=test

* La opción -i nos mostrará los `headers` adicionalmente.

### 3. Pasar autenticación:

    curl -u username:password URL

### 4. Descargar de un servidor FTP

    curl -u ftpuser:ftppass -O ftp://ftp_server/public_html/xss.php

### 4. Enviar un correo

    curl --mail-from fernando@mywebsite21.com --mail-rcpt bufer1@yahoo.com smtp://mailserver.com

Fuentes:

http://www.thegeekstuff.com/2012/04/curl-examples/?utm_source=feedburner
