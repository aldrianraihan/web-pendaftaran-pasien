<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'home';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
$route['admin'] = 'admin/overview';
$route['user'] = 'user/overview';
$route['login'] = 'login/overview';
$route['pasien'] = 'pasien/overview';
$route['datapasien'] = 'datapasien/overview';
