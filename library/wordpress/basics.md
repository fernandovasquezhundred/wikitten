zM Ajax Login & Register [https://wordpress.org/plugins/zm-ajax-login-register/]
* Just create a page and add: [ajax_login] or [ajax_register]

NextScripts: Social Networks Auto-Poster
https://wordpress.org/plugins/social-networks-auto-poster-facebook-twitter-g/changelog/

Pages Comments: Quick edit

-- .htaccess:
-- RewriteBase /
-- RewriteRule . /index.php [L]
http://michi.space/binacube/

## Upload with API

In `functions.php` Insert following code

    $decoded_bits = base64_decode( $bits );
    if ( $decoded_bits ) {
        $bits = $decoded_bits;
    }

before the line:

    @fwrite( $ifp, $bits );

