http://hypem.com/download/B/

Heroku tricks
# Crear app en heroku
cd myapp
git init
git clone xxxxx

# upload
git add .
git commit . -m "primer post"
git push origin master  #git push heroku master

# NOTA: tienes que tener index.php
# base de datos
heroku addons:add heroku-postgresql

# go to website heroku so you can read heroku configuration
# connect externally
ssl=true&sslfactory=org.postgresql.ssl.NonValidatingFactory

# Database configuration Codeigniter PHP
$url = parse_url(getenv("DATABASE_URL"));
$db['default']['hostname'] = $url["host"];
$db['default']['username'] = $url["user"];
$db['default']['password'] = $url["pass"];
$db['default']['database'] = substr($url["path"], 1);
$db['default']['port'] = "5432";
$db['default']['dbdriver'] = 'postgre';

# https://devcenter.heroku.com/articles/custom-php-settings
# https://devcenter.heroku.com/articles/php-support
