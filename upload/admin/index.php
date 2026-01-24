<?php
// Version
<<<<<<< HEAD
define('VERSION', '3.0.3.7');
define('VERSION_CORE', 'ocStore');
define('VERSION_BUILD', '0001');
=======
define('VERSION', '3.0.4.2');
>>>>>>> 3.0.4.2

// Configuration
if (is_file('config.php')) {
	require_once('config.php');
}

// Install
if (!defined('DIR_APPLICATION')) {
	header('Location: ../install/index.php');
	exit;
}

ini_set('display_errors', 1);

// Startup
require_once(DIR_SYSTEM . 'startup.php');

start('admin');