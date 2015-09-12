### JSON Front Matter (meta data)

Wikitten content can also be tagged using a simple but powerful JSON Front Matter system, akin to [Jekyll's YAML Front Matter](https://github.com/mojombo/jekyll/wiki/YAML-Front-Matter). Defining a custom title, tags, or other
relevant data for a specific page is just a matter of adding a special header at the start of your files, like so:

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
