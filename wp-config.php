<?php
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
define('DB_NAME', 'signsofbroward.com');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

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
define('AUTH_KEY',         'D<X<>G.sLTnzz,D?h0A7.iYbUvVgwZVTnUhPKn(8hsrovC`fyAX`Esb;K2a?Rd5,');
define('SECURE_AUTH_KEY',  '#>6m <{<c_fX59C9IP;]Uvq8A.{5W6*QTqZ=`orCUJB/wXIOnl4#|gngLtKCKt P');
define('LOGGED_IN_KEY',    'JzmdJXf^h>uaC cqk!^r8eWW+8$TYpC  6Uye)jnP!sr-7Fi:tA^%pr;*aV-/tWN');
define('NONCE_KEY',        '~4M$Vi},h$$x2T)p#zpX4!P+k2PT7xRC*@q[>_9RY0pDA/ky^E-L0QTf5Xi)mB0z');
define('AUTH_SALT',        ')^58<q|]VVzyh3Ya3_QA ZjJPrC;DT2y|J `,ILo6uoIcq_2gnXyB|VvW#b}F)Cy');
define('SECURE_AUTH_SALT', 'W./<PmlWl]MdXQ9SDa:1<wj!jpYD?hc,KnL% pAq->GW)cDUO%#)VeLGu:UK:Eh3');
define('LOGGED_IN_SALT',   '8R5(c%jrKrf*#O8-=pcU[4r) yh]1j4>YioE%*)K!ZEppcOw/rN`a[WeVd/QU2^!');
define('NONCE_SALT',       'K:9jjx]PQtu,aW;/jQQJMlfMghO|,DTSUA)F5`KiUt5*>o`?BOEK6pB:;~ikN#9l');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'sob';

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

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
