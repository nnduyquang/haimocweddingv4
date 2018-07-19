var plugins = {
    menuSideBar: $('.sidebar'),
    sliderCarousel:$('.slider-carousel'),
    menuTop:$('#menu'),
    gridAlbum: $('.grid-album'),
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
    if(plugins.gridAlbum.length){
        runGridAlbum();
    }
    if(plugins.sliderCarousel.length){
        runSliderCarousel();
    }
});