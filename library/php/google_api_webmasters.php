<?php
/*
source: http://techforumnetwork.com/techqns/how-to-fetch-top-pages-and-top-query-data-from-google-webmaster-tool-by-using-api-in-php/
*/
require_once 'Google/Client.php';
require_once 'Google/Service/Webmasters.php';

$google_client_id       = 'xxx';
$google_client_secret   = 'xxx';
$google_redirect_url    = 'xx'; //path to your script
$google_developer_key   = 'xx';

$client = new Google_Client();
$client->setClientId($google_client_id);
$client->setClientSecret($google_client_secret);
$client->setRedirectUri($google_redirect_url);
$client->setAccessType('offline');

$client->setScopes(array(
    'https://www.googleapis.com/auth/webmasters.readonly',
    'https://www.googleapis.com/auth/webmasters'));
$webmastersService = new Google_Service_Webmasters($client);

$authUrl = $client->createAuthUrl();

if(isset($_GET['code'])) {
    $client->authenticate($_GET['code']);
}

$_SESSION['token']    = $client->getAccessToken();

$client->setAccessToken($_SESSION['token']);
$sites = $webmastersService->sites;
$totalsites = $sites->listSites();

foreach($totalsites as $site) {
    $googleWebmasterSite =  $site->siteUrl;
}

$sitemaps = $webmastersService->sitemaps->listSitemaps($googleWebmasterSite);
