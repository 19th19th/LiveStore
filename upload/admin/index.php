<?php
// Version
define('VERSION', '3.0.4.2');

// Configuration
if (is_file('config.php')) {
	require_once('config.php');
}

// Install
if (!defined('DIR_APPLICATION')) {
	header('Location: ../install/index.php');
	exit;
}

if (defined('SHOW_ERRORS') && SHOW_ERRORS) {
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);
} else {
    ini_set('display_errors', 0);
    error_reporting(E_ALL);
}

// Startup
require_once(DIR_SYSTEM . 'startup.php');

start('admin');