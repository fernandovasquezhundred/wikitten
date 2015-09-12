create database seospider;
DROP TABLE websites;
CREATE TABLE websites (
    id bigint UNSIGNED NOT NULL AUTO_INCREMENT,
    name varchar(250) NOT NULL,
    url varchar(250),
    description TEXT,
	disable_on
	enable_on
    PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE website_urls (
    id bigint UNSIGNED NOT NULL AUTO_INCREMENT,
    url varchar(250) NOT NULL,
    website BIGINT UNSIGNED NOT NULL,
	webtype int, -- ['vip', 'normal']
    PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE vip_url_crawl;
CREATE TABLE website_status (
    id          bigint UNSIGNED NOT NULL AUTO_INCREMENT,
    h1          TEXT,
    h2          TEXT,
    h3          TEXT,
    h4          TEXT,
    h5          TEXT,
    h6          TEXT,
    h1          TEXT,
    h1          TEXT,
    charset   VARCHAR(20),
	header   VARCHAR(20),
	footer   VARCHAR(20),
	nav   VARCHAR(20),
    header       TIMESTAMP,
	metatags    TEXT,
    website     BIGINT UNSIGNED NOT NULL,
    PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
		// Meta tags: Meta Description, Meta Keywords
		$query = $fpdo->insertInto('website_status', $values);
		// Page title





SELECT * FROM websites;


SELECT * FROM commingsoon_reserveaccess;
SELECT * FROM front_searchresult WHERE keywd_id = 76;
SELECT * FROM front_searchresult WHERE keyword = 'kitten';
SELECT * FROM front_searchresult WHERE url = 'http://www.76.com/';
SELECT * FROM front_searchresult WHERE url = 'http://www.76.com/';
SELECT * FROM front_searchresult WHERE domain = 'en.wikipedia.org';
SELECT * FROM front_searchresult WHERE keywd_id IN (SELECT id FROM settings_keyword WHERE word = 'texas');
SELECT * FROM settings_keyword;
-- DELETE FROM settings_keyword WHERE id < 70;
SELECT * FROM settings_keywordcategory;
SELECT * FROM settings_userdomain;
-- empty CATEGORY????

SELECT * FROM front_searchresult WHERE url = '';
SELECT * FROM front_searchresult WHERE keywd_id = 82;
SELECT * FROM front_searchresult WHERE domain = 'www.doggers.co';
SELECT * FROM front_searchresult WHERE created_at > '2015-04-15 00:00:00';
SELECT * FROM front_searchresult WHERE keywd_id is null;
SELECT * FROM front_searchresult WHERE keyword = 'kitten' AND result_type = 'VI';
SELECT * FROM front_searchresult WHERE keyword = 'SEO+freelancer';


SELECT * FROM front_searchresult WHERE keyword = 'restaurants+utica';
select * from auth_user;
SELECT * FROM account_emailaddress;
SELECT * FROM account_emailconfirmation;
SELECT * FROM auth_user;
SELECT * FROM django_session;
SELECT * FROM auth_group;
UPDATE account_emailaddress SET public.verified=true, public.primary=true WHERE id=1;
UPDATE "public"."account_emailaddress" set "verified" = true, "primary" = true where "user_id" = 1;

UPDATE front_searchresult SET created_at = '2015-03-30 09:35:08' WHERE ranking > 5;

auth_group_permissions
SELECT * FROM django_content_type;

SELECT * FROM auth_user;
SELECT * FROM auth_user_user_permissions;
SELECT * FROM auth_user_groups;
SELECT * FROM settings_userdomain;
SELECT * FROM auth_group_permissions;
SELECT * FROM auth_permission;
