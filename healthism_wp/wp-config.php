<?php//Begin Really Simple Security key
define('RSSSL_KEY', 'SJD3nUyy1l6twANFMPuAkMgOHzk3kwOresJ6A58kvzSUw7Qzu2QwGeJOYVcN3lGO');
//END Really Simple Security key

//Begin Really Simple SSL session cookie settings
@ini_set('session.cookie_httponly', true);
@ini_set('session.cookie_secure', true);
@ini_set('session.use_only_cookies', true);
//END Really Simple SSL cookie settings

/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'healthism_wp' );

/** Database username */
define( 'DB_USER', 'healthism_wp' );

/** Database password */
define( 'DB_PASSWORD', 'v8p9S-R4.P' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'Vx$:EH*,NBl|oT-L&;EQAo:+#[n7tu<~Cd7<FIS0tDr2(<hIGJuGm!U+GxuSpwlR' );
define( 'SECURE_AUTH_KEY',  'CuVs%_4%LwJ~@52uFMg?fFZ^RD1fN&4fhNR%3eEYL|trDx-rQ%Em[I]:f;^f#7__' );
define( 'LOGGED_IN_KEY',    '*oO|(w|dN)mnf)y@t?N|]]vUfdcEHs61+DTWkG:-*SO_k*Quc[*9pr>GS(19PP;Y' );
define( 'NONCE_KEY',        '<J?@^OE!pV2CY{v^8.q`.B)[~lT Q~]&px*9ToGeap]=1_a2uT4AGa{QmYW6==!C' );
define( 'AUTH_SALT',        '1n? zbVyi-pZ7XgzQZhx[=[;}7&%>0YVZ]EMPKfKQ`{A;puNI[{uh,r6rO;-;oqS' );
define( 'SECURE_AUTH_SALT', '.BRartb?.-~kMOfHqvML)Qd1k4ZKz[2PIw|RK{U&0?5l _La4a]llwGu`B0_y%2V' );
define( 'LOGGED_IN_SALT',   '<,D>KKIX+lo2 j]#X>.LQhVs6!H:S-9}ZH,X7Bq;uk@%q+p.//Yb0KD7$OH{/0S=' );
define( 'NONCE_SALT',       '(#|&q)FW&s`]g j9tM8~PJ2Ni3D+3X?ae<%;~F~kJQS?sk3|]REuzou$#>#hqhDD' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
