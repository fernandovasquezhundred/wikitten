UPDATE wp_options SET option_value = replace(option_value, 'http://www.perunopor.com', 'http://www.expertomba.com');
UPDATE wp_posts SET guid = replace(guid, 'http://www.perunopor.com','http://www.expertomba.com');
UPDATE wp_posts SET post_content = replace(post_content, 'http://www.perunopor.com', 'http://www.expertomba.com');
UPDATE wp_postmeta SET meta_value = replace(meta_value, 'http://www.perunopor.com', 'http://www.expertomba.com');
-- .htaccess:
-- RewriteBase /
-- RewriteRule . /index.php [L]
