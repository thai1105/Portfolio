$(document).ready(function() {

    const lenis = new Lenis({
        duration: 1.4,
    })
    function raf(time) {
        lenis.raf(time);
        ScrollTrigger.update();
        requestAnimationFrame(raf)
    }
    requestAnimationFrame(raf)

    new WOW().init();

    $('.btn-menu-mb a').click(function(){
        $('.header-right').addClass('active');
    })

    $('.close-menu a').click(function(){
        $('.header-right').removeClass('active');
    })

    $('.close-modal a').click(function(){
        $('.modal-cert').removeClass('active');
    })

    $('.more-avr a').on('click', function(){
        var tab_id = $(this).attr('data-tab');
        $('.more-avr a').removeClass('active');
        $('.modal-cert').removeClass('active');
        $(this).addClass('active');
        $('#'+tab_id).addClass('active');
    });

    new Swiper('.swiper-gall', {
        loop: false,
        slidesPerView: 2.8,
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        paginationClickable: true,
        spaceBetween: 16,
        breakpoints: {
            1920: {
                slidesPerView: 2.8,
                spaceBetween: 24
            },
            1028: {
                slidesPerView: 2,
                spaceBetween: 30
            },
            480: {
                slidesPerView: 1.2,
                spaceBetween: 10
            }
        }
    });

    new Swiper('.swiper-cert', {
        loop: true,
        slidesPerView: 3.4,
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        centeredSlides: true,
        spaceBetween: 24,
        breakpoints: {
            1920: {
                slidesPerView: 3.4,
                spaceBetween: 24
            },
            1028: {
                slidesPerView: 3.4,
                spaceBetween: 30
            },
            480: {
                slidesPerView: 1.2,
                spaceBetween: 10,
                centeredSlides: false,
            }
        }
    });
});
