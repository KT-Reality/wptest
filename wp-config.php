<?php

// Configuration common to all environments
include_once __DIR__ . '/wp-config.common.php';

/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('REVISR_GIT_PATH', 'https://github.com/KT-Reality/wptest.git'); // Added by Revisr
define('DB_NAME', 'test');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '(CD[ok(KF[ofAWt7+)y#)|l9W;>pXCt7T<G6}EPROOMKGh_7AyVFc3;KgU^CdE3x');
define('SECURE_AUTH_KEY',  ' D}f`W:v;oj{{Ke>SvZhu-[J=>7xaO]eh!*(ei_;T9iM2Fot{GfOnF^r{ |Pw5AP');
define('LOGGED_IN_KEY',    'x%:7%4jFfs&lywU,dT#:OBKiheN^q_v9766T6u3$/l4PWbr5R`l6,~[a/#l<./e^');
define('NONCE_KEY',        '~u`@Lf~! #%xz-h=?MzYQ<G. IUl*qx-6#O(VB<UQ9FLCOC:g,RXV2L$H]h(RM%Q');
define('AUTH_SALT',        '*Ou5$]`F8d6#25WLf~4Et,zq!k2x-x}4qkG]^dis!h}>ickRh H[^uGq,yWE:b_)');
define('SECURE_AUTH_SALT', 'M$Hz_.@FfbMdigWa(.:b0tGNG vA!fhEkbn^4|L{!`a}~=ycHd]Irm^<&7KLg&u0');
define('LOGGED_IN_SALT',   'Kx$NqD#CdidT/[7vObast_!yVkdCUwz@S2>J+<#QsFpcIc:f2Yf@U`PwE}}UKXVl');
define('NONCE_SALT',       'bx+5U&0?DxS]4]BKEIXk*Mt&qE&beKm_I}7q0rRK jT*a.s cq~:VPjQwi.|tahc');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'kt_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

define('VP_ENVIRONMENT', 'default');
/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
