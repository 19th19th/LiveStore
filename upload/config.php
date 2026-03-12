<?php
// HTTP
define('HTTP_SERVER', 'https://лайвстор.рф/');

// HTTPS
define('HTTPS_SERVER', 'https://лайвстор.рф/');

// DIR
define('DIR_APPLICATION', '/var/www/livestore/public/upload/catalog/');
define('DIR_SYSTEM', '/var/www/livestore/public/upload/system/');
define('DIR_IMAGE', '/var/www/livestore/public/upload/image/');
define('DIR_STORAGE', '/var/www/livestore/storagep8/');
define('DIR_LANGUAGE', DIR_APPLICATION . 'language/');
define('DIR_TEMPLATE', DIR_APPLICATION . 'view/theme/');
define('DIR_CONFIG', DIR_SYSTEM . 'config/');
define('DIR_CACHE', DIR_STORAGE . 'cache/');
define('DIR_DOWNLOAD', DIR_STORAGE . 'download/');
define('DIR_LOGS', DIR_STORAGE . 'logs/');
define('DIR_MODIFICATION', DIR_STORAGE . 'modification/');
define('DIR_SESSION', DIR_STORAGE . 'session/');
define('DIR_UPLOAD', DIR_STORAGE . 'upload/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'nineteenth_php8');
define('DB_PASSWORD', 'jdpNCt80ZP9HPZxdlqmy');
define('DB_DATABASE', 'nineteenth_php8');
define('DB_PORT', '3306');
define('DB_PREFIX', 'oc_');