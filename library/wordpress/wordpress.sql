UPDATE wp_options SET option_value = replace(option_value, '__SEARCH__', '__REPLACE__');
UPDATE wp_posts SET guid = replace(guid, '__SEARCH__','__REPLACE__');
UPDATE wp_posts SET post_content = replace(post_content, '__SEARCH__', '__REPLACE__');
UPDATE wp_postmeta SET meta_value = replace(meta_value, '__SEARCH__', '__REPLACE__');
