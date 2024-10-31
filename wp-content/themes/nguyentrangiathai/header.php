<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package nguyentrangiathai
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>

<link rel="stylesheet" type="text/css" title="" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.4.1/css/swiper.min.css">
<link rel="stylesheet" type="text/css" title="" href="<?php bloginfo( 'stylesheet_directory' ); ?>/assets/css/lib/bootstrap.min.css">
<link rel="stylesheet" type="text/css" title="" href="<?php bloginfo( 'stylesheet_directory' ); ?>/assets/css/animate.css">
<link rel="stylesheet" type="text/css" title="" href="<?php bloginfo( 'stylesheet_directory' ); ?>/assets/css/style.css">

<header>
    <div class="header-pc">
        <div class="content-header">
            <div class="left">
                <div class="logo"><a href="/"><img src="<?php bloginfo( 'stylesheet_directory' ); ?>/assets/images/logo.png" alt=""></a></div>
            </div>
            <div class="right">
                <div class="btn-menu-mb">
                    <a href="javascript:void(0)">
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M20 18H4M20 12L4 12M20 6L4 6" stroke="#FAFAFA" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg>
                    </a>
                </div>
                <div class="header-right">
                    <div class="close-menu d-none">
                        <a href="javascript:void(0)">
                            <svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M26.6663 5.33325L5.33301 26.6666" stroke="#fff" stroke-width="3" stroke-linecap="square" stroke-linejoin="round"></path>
                                <path d="M5.33301 5.33325L26.6663 26.6666" stroke="#fff" stroke-width="3" stroke-linecap="square" stroke-linejoin="round"></path>
                            </svg>
                        </a>
                    </div>
                    <?php
                        wp_nav_menu(
                            array(
                                'theme_location' => 'menu-1',
                                'menu_id'        => 'primary-menu',
                            )
                        );
                    ?>
                </div>
            </div>
        </div>
    </div>
</header>

<div class="sidebar">
    <?php
        wp_nav_menu(
            array(
                'theme_location' => 'menu-1',
                'menu_id'        => 'primary-menu',
            )
        );
    ?>
</div>