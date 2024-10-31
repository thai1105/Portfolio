<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package nguyentrangiathai
 */

?>

<footer>
    <div class="container-fter"> 
        <div class="left">
            <div class="info-fter">
                <div class="logo"><img src="<?php bloginfo( 'stylesheet_directory' ); ?>/assets/images/logo-fter.png" alt=""></div>
                <ul>
                    <li>Nguyen Tran Gia Thai</li>
                    <li>nguyentrangiathai2019@gmail.com</li>
                    <li>+84 904681553</li>
                </ul>
            </div>
        </div>
        <div class="right">
            <div class="txt-fter">
                Outrider Foundation is a non-political, nonpartisan 501c3 organization that educates the public about nuclear security threats
                and climate issues.
            </div>
        </div>
    </div>
</footer>
<script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.4.1/js/swiper.min.js'></script>
<script type="text/javascript" src="<?php bloginfo( 'stylesheet_directory' ); ?>/assets/js/jquery.easeScroll.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/gh/studio-freight/lenis@latest/bundled/lenis.js"></script>
<script type="text/javascript" src="https://unpkg.com/gsap@3/dist/ScrollTrigger.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.5/gsap.min.js"></script>
<script type="text/javascript" src="<?php bloginfo( 'stylesheet_directory' ); ?>/assets/js/wow.min.js"></script>
<script type="text/javascript" src="<?php bloginfo( 'stylesheet_directory' ); ?>/assets/js/private.js"></script>

<?php wp_footer(); ?>

</body>
</html>
