var plugins = {
    menuSideBar: $('.sidebar'),
    sliderCarousel:$('.slider-carousel'),
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
    function runSliderCarousel(){
        plugins.sliderCarousel.carousel({
            interval: 8000,
            pause:false
        });
    }
    if(plugins.sliderCarousel.length){
        runSliderCarousel();
    }
});