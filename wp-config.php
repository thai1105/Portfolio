<?php
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
define( 'DB_NAME', 'giathai' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

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
define( 'AUTH_KEY',         'f.Nee_x<-YQKhS-enp+-(MuZeq:,yMjzj[IMv)6S:[R0&<>w?^-CB+8?,~4f^1HP' );
define( 'SECURE_AUTH_KEY',  'kj=0@7hH[v2Fzj5w|&0 Vf;H5uUsib{aeY ;(TC-(1:IMp]{)dFi+4ziAD37Q=9[' );
define( 'LOGGED_IN_KEY',    '!QL!.HrXwSRf_~jTq:@-)e]/vl2zTe5cW8@Z;?qPx(8Fu:YHGNt#Ax8w*EtWYTxk' );
define( 'NONCE_KEY',        'oHPPKc5MR+hyl7Oc2@DTZ%2-I0rq~?;xaYP:j%Jue3W]4.v/tiiZlQR1yeLZAkOQ' );
define( 'AUTH_SALT',        'HDqDNyN|k?&|77TA6`E4F|F@C`z#L#U;Pt5N+3:er@Sk,PbxpU!>!<& 7wfA5i;H' );
define( 'SECURE_AUTH_SALT', 'lc/E}f;9x>ydU4,r`:vuLM~KV+!=q+%/{FZ8G6f@*CvOBbhfwf+}V5*]Oe,k=82%' );
define( 'LOGGED_IN_SALT',   '.L0-?[7(0@|Nq,K#Bc}k9sE3ib%e|*&% >n/_i2/pjq2EYL}h|AlAO7`llteaiHw' );
define( 'NONCE_SALT',       '|P?TUln.G7|XK _55 uI4O785/r7?=TM#yuFP@|QQS<R/R3W33!nbkH2ppb.d%KO' );

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
