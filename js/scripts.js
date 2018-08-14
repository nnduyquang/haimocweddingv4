var plugins = {
    menuSideBar: $('.sidebar'),
    sliderCarousel:$('.slider-carousel'),
    menuTop:$('#menu'),
    gridAlbum: $('.grid-album'),
    h10PacketPriceCarousel:$('#h_10 .packet-price-carousel')
};
$(document).ready(function () {
    function sidebar() {
        var trigger = $('#trigger,#close');
        trigger.on('click', function () {
            $(this).toggleClass('active');
            plugins.menuSideBar.toggleClass('closed');
            $('#blurrMe').toggleClass('blurred')
        })
        $('#wrap-container').on('click', function () {
            if ($('#blurrMe').hasClass('blurred')) {
                $('#blurrMe').toggleClass('blurred')
                plugins.menuSideBar.toggleClass('closed');
            }
        })
    }
    sidebar();
    function fixOnScroll() {
        var menuScroll = plugins.menuTop
        $(window).on("scroll", function (e) {
            if ($(this).scrollTop() > 30) {
                menuScroll.addClass('fadeInDown background-menu fixed-top');
                menuScroll.removeClass('show-on-slide fadeInUp');
            } else {
                menuScroll.removeClass('fixed-top  fadeInDown background-menu');
                menuScroll.addClass('show-on-slide  fadeInUp');
            }
        });
    }
    fixOnScroll();
    function runSliderCarousel(){
        plugins.sliderCarousel.carousel({
            interval: 8000,
            pause:false
        });
    }

    function runGridAlbum() {
        var $grid = plugins.gridAlbum.masonry({
            itemSelector: '.grid-item',
            percentPosition: true,
            columnWidth: '.grid-sizer'
        });
        $grid.imagesLoaded().progress(function () {
            $grid.masonry();
        });
        var isOpen = true;
        $('.choose-dd').click(function () {
            if (isOpen) {
                $('ul.ul-dd').addClass('open-dd');
                $('.fa-plus').css('display','none');
                $('.fa-minus').css('display','block');
                isOpen = false;
            } else {
                $('ul.ul-dd').removeClass('open-dd');
                $('.fa-plus').css('display','block');
                $('.fa-minus').css('display','none');
                isOpen = true;
            }
        });


    }
    function runH10PacketPriceCarousel(){
        plugins.h10PacketPriceCarousel.owlCarousel({
            animateOut: 'fadeOutRight',
            animateIn: 'fadeInLeft',
            items: 4,
            loop:true,
            smartSpeed: 450,
            margin: 20,
            nav:true,
            dots:false,
            autoplay:true,
            autoplayTimeout:3000,
            autoplayHoverPause:true,
            responsive:{
                0: {
                    items: 2
                },
                500: {
                    items: 2
                },
                736: {
                    items: 3
                },
                768: {
                    items: 3
                },
                1000: {
                    items: 4
                }
            }
        });
    }
    $(".owl-nav .owl-prev").html("<img src='images/temps/home/h10/red_back_btn.png' alt='Prev'/>");
    $(".owl-nav .owl-next").html("<img src='images/temps/home/h10/red_next_btn.png' alt='Prev'/>");
    if(plugins.gridAlbum.length){
        runGridAlbum();
    }
    if(plugins.sliderCarousel.length){
        runSliderCarousel();
    }
    if(plugins.h10PacketPriceCarousel.length){
        runH10PacketPriceCarousel();
    }
});