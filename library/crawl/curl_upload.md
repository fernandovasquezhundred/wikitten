Perform a normal POST, including a file and some other variables to a remote server. This is it:

    curl -i -F name=test -F filedata=@localfile.jpg http://example.org/upload

You can add as many -F as you want.

    The -i option tells curl to show the response headers as well.
