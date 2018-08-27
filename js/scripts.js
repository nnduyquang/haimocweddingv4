var plugins = {
    menuSideBar: $('.sidebar'),
    sliderCarousel:$('.slider-carousel'),
    menuTop:$('#menu'),
    gridAlbum: $('.grid-album'),
    h10PacketPriceCarousel:$('#h_10 .packet-price-carousel'),
    sendMail: $('#btnSendMail'),
    pr_1_DoRegister:$('#pr_1 .do-register')
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
    function runSendMail() {
        $('.loadingSending').css('display', 'inline-block');
        $('.input-text').removeClass('is-invalid');
        $('.input-area').removeClass('is-invalid');
        var data = new FormData($(this).get(0));
        data.append('name', $("input[name='name']").val());
        data.append('email', $("input[name='email']").val());
        data.append('phone', $("input[name='phone']").val());
        data.append('contentMail', $("textarea[name='contentMail']").val());
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $.ajax({
            type: "POST",
            url: getBaseURL() + "sendmail/send",
            dataType: 'json',
            processData: false,
            contentType: false,
            data: data,
            success: function (data) {
                if (data.success) {
                    $('.loadingSending').css('display', 'none');
                    $('.successSending').css('display', 'inline-block');
                    $('.successSending').fadeIn(500);
                    $('.button-group span').css('display', 'inline-block');
                    $('.button-group span').fadeIn(500);

                    setTimeout("$('.successSending').fadeOut(1500);", 3000);
                    setTimeout("$('.button-group span').fadeOut(1500);", 3000);
                    $("input[name='name']").val("");
                    $("input[name='email']").val("");
                    $("input[name='phone']").val("");
                    $("textarea[name='contentMail']").val("");
                }
                else {
                    $('.loadingSending').css('display', 'none');
                    var errors = data.validator;
                    if (errors.hasOwnProperty('email')) {
                        $('.ip-email .input-text').addClass('is-invalid');
                        $('.ip-email .invalid-feedback').html(errors['email']);
                    }
                    if (errors.hasOwnProperty('name')) {
                        $('.ip-name .input-text').addClass('is-invalid');
                        $('.ip-name .invalid-feedback').html(errors['name']);
                    }
                    if (errors.hasOwnProperty('phone')) {
                        $('.ip-phone .input-text').addClass('is-invalid');
                        $('.ip-phone .invalid-feedback').html(errors['phone']);
                    }
                    if (errors.hasOwnProperty('contentMail')) {
                        $('.ip-contentMail .input-area').addClass('is-invalid');
                        $('.ip-contentMail .invalid-feedback').html(errors['contentMail']);
                    }
                }
            }
        });
    }
    function runPr_1_DoRegister(){
        $('#pl_modal_register').on('show.bs.modal', function (e) {
            var type = $(e.relatedTarget).data('id');
            $("select[name='register_type']").val(type);
            $(e.currentTarget).find('#btnRegister').click(function(){
                $('.loadingSending').css('display', 'inline-block');
                $('.input-text').removeClass('is-invalid');
                $('.input-area').removeClass('is-invalid');
                var data = new FormData($(this).get(0));
                data.append('type',$("select[name='register_type']").val());
                data.append('name', $("input[name='register_name']").val());
                data.append('email', $("input[name='register_email']").val());
                data.append('phone', $("input[name='register_phone']").val());
                data.append('note', $("textarea[name='register_note']").val());
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
                $.ajax({
                    type: "POST",
                    url: getBaseURL() + "send-request-price/send",
                    dataType: 'json',
                    processData: false,
                    contentType: false,
                    data: data,
                    success: function (data) {
                        if (data.success) {
                            $('.loadingSending').css('display', 'none');
                            $('.successSending').css('display', 'inline-block');
                            $('.successSending').fadeIn(500);
                            $('.txt-success').css('display', 'inline-block');
                            $('.txt-success').fadeIn(500);
                            setTimeout("$('.successSending').fadeOut(1500);", 3000);
                            setTimeout("$('.txt-success').fadeOut(1500);", 3000);
                            $("input[name='register_name']").val("");
                            $("input[name='register_email']").val("");
                            $("input[name='register_phone']").val("");
                            $("textarea[name='register_note']").val("");
                            setTimeout("$('#pl_modal_register').modal('hide');",3500);
                        }
                        else {
                            $('.loadingSending').css('display', 'none');
                            var errors = data.validator;
                            if (errors.hasOwnProperty('email')) {
                                $('.ip-email .input-text').addClass('is-invalid');
                                $('.ip-email .invalid-feedback').html(errors['email']);
                            }
                            if (errors.hasOwnProperty('name')) {
                                $('.ip-name .input-text').addClass('is-invalid');
                                $('.ip-name .invalid-feedback').html(errors['name']);
                            }
                        }
                    }
                });
            });
        });
        $('#pl_modal_register').on('hide.bs.modal', function (e) {
            $(e.currentTarget).find('#btnRegister').unbind();
        });
    }
    if (plugins.sendMail.length) {
        // $("[rel=popover]").tooltip();
        plugins.sendMail.click(function () {
            runSendMail();
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
    if (plugins.pr_1_DoRegister.length) {
        runPr_1_DoRegister();
    }
});