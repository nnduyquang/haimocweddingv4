@extends('frontend.master')
@section('title')
    Sea Wedding
@stop
@section('description')
    Chụp Ảnh Cưới Chuyên Nghiệp Tại Đà Nẵng
@stop
@section('keyword')
    chụp ảnh cưới đà nẵng
@stop
@section('slider')
    @include('frontend.common.slider')
@stop
@section('container')
    @include('frontend.home.h_1')
    @include('frontend.home.h_2')
    @include('frontend.home.h_12')
    {{--@include('frontend.home.h_3')--}}
    @include('frontend.home.h_4')
    {{--@include('frontend.home.h_9')--}}
    {{--@include('frontend.home.h_10')--}}
    @include('frontend.home.h_14')
    @include('frontend.home.h_13')
    @include('frontend.home.h_8')
    {{--@include('frontend.home.h_7')--}}
@stop

@section('jv-scripts')
    <script>
        $(document).ready(function () {

            $('#owl-project').owlCarousel({
                loop: true,
                margin: 10,
                nav: false,
                dots: false,
                autoplay:true,
                autoplayTimeout:3000,
                autoplayHoverPause:true,
                responsive: {
                    0: {
                        items: 3
                    },
                    600: {
                        items: 4
                    },
                    1000: {
                        items: 4
                    }
                }
            });

            var owl = $('#owl-project');
            // owl.owlCarousel();
// Go to the next item
            $('.btn_next').click(function () {
                owl.trigger('next.owl.carousel');
            })
// Go to the previous item
            $('.btn_pre').click(function () {
                // With optional speed parameter
                // Parameters has to be in square bracket '[]'
                owl.trigger('prev.owl.carousel', [300]);
            })
        });
    </script>
@stop