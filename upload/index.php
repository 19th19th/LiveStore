<?php
// Version
define('VERSION', '3.0.4.6');
define('IS_LIVESTORE', true);

// Configuration
if (is_file('config.php')) {
	require_once('config.php');
}

// Install
if (!defined('DIR_APPLICATION')) {
	header('Location: install/index.php');
	exit;
}

//ini_set('display_errors', 1);

// Startup
require_once(DIR_SYSTEM . 'startup.php');

start('catalog');