<!DOCTYPE Html>
<Html lang="en-US" class="lang-en_US" xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
<meta http-equiv="content-type" content="text/Html;charset=UTF-8"/>
<head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# article: http://ogp.me/ns/article#">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>@yield('title')</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="keywords" content="@yield('keyword')">
    <meta name="description" content="@yield('description')">
    <meta name="viewport" content="width=device-width">
    {{ Html::style('css/core.common.css') }}
    {{ Html::style('css/core.frontend.css') }}
    {{ Html::style('css/frontend.css') }}
    @yield('styles')
<!-- Facebook Pixel Code -->
    <script>
        !function(f,b,e,v,n,t,s)
        {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
            n.callMethod.apply(n,arguments):n.queue.push(arguments)};
            if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
            n.queue=[];t=b.createElement(e);t.async=!0;
            t.src=v;s=b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t,s)}(window, document,'script',
            'https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '1029899757031818');
        fbq('track', 'PageView');
    </script>
    <noscript><img height="1" width="1" style="display:none"
                   src="https://www.facebook.com/tr?id=1029899757031818&ev=PageView&noscript=1"
        /></noscript>
    <!-- End Facebook Pixel Code -->

</head>
<body>
{{--<div id="fb-root"></div>--}}
{{--<script>(function(d, s, id) {--}}
        {{--var js, fjs = d.getElementsByTagName(s)[0];--}}
        {{--if (d.getElementById(id)) return;--}}
        {{--js = d.createElement(s); js.id = id;--}}
        {{--js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';--}}
        {{--fjs.parentNode.insertBefore(js, fjs);--}}
    {{--}(document, 'script', 'facebook-jssdk'));</script>--}}
<header id="header">

</header>

<div id="blurrMe">
    @include('frontend.common.menu.m-menu')
    @include('frontend.common.menu.menu')
    @yield('slider')
    @yield('container')
</div>
@include('frontend.common.menu.m-sidebar')
@include('frontend.common.footer2')

{{ Html::script('js/core.common.js') }}
{{ Html::script('js/ulti.js') }}
{{ Html::script('js/core.frontend.js') }}
<script type="text/javascript">
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    new WOW().init();
</script>
@yield('jv-scripts')
{{ Html::script('js/scripts.js') }}
<div class="callback d-lg-none d-md-none">
    <div class="phone_animation">
        <div class="phone_animation_circle"></div>
        <div class="phone_animation_circle_fill"></div>
        <a href="tel:0902710212" class="phone_animation_circle_fill_img"><i class="fas fa-phone"
                                                                            aria-hidden="true"></i></a>
    </div>
</div>
<div class="callback d-none d-md-block" style="left: -8px;bottom: -30px;right:inherit">
    <div class="phone_animation">
        <div class="phone_animation_circle"></div>
        <div class="phone_animation_circle_fill"></div>
        <a href="tel:0902710212" class="phone_animation_circle_fill_img"><i class="fas fa-phone"
                                                                            aria-hidden="true"></i></a>
    </div>
</div>
<div class="mess_desk_bot d-none d-md-block">
    <a href="tel:0902710212" class="hotline-master"> 0902.710.212
    </a>
</div>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-126238087-1"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-126238087-1');
</script>

<!-- Global site tag (gtag.js) - AdWords: 869012961 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-869012961"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'AW-869012961');
</script>
<!-- Global site tag (gtag.js) - Google Ads: 867696306 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-867696306"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'AW-867696306');
</script>

{{--<!--Start of Tawk.to Script-->--}}
{{--<script type="text/javascript">--}}
    {{--var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();--}}
    {{--(function(){--}}
        {{--var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];--}}
        {{--s1.async=true;--}}
        {{--s1.src='https://embed.tawk.to/5b9292dfafc2c34e96e851a7/default';--}}
        {{--s1.charset='UTF-8';--}}
        {{--s1.setAttribute('crossorigin','*');--}}
        {{--s0.parentNode.insertBefore(s1,s0);--}}
    {{--})();--}}
{{--</script>--}}
{{--<!--End of Tawk.to Script-->--}}
<!-- Load Facebook SDK for JavaScript -->
<div id="fb-root"></div>
<script>(function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js#xfbml=1&version=v2.12&autoLogAppEvents=1';
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>

<!-- Your customer chat code -->
<div class="fb-customerchat"
     attribution=setup_tool
     page_id="419330008147637"
     logged_in_greeting="Sea Wedding Xin Chào Quý Khách"
     logged_out_greeting="Sea Wedding Xin Chào Quý Khách">
</div>

</body>

</Html>