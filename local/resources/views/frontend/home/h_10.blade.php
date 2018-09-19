
<div id="h_10">
    <h3 class="title">
        Our Story
    </h3>
    <div class="container">
        <div id="our_story">
            <div id="top_circle">
                <div class="inner">

                </div>
            </div>
            @for ($i = 0; $i < 4; $i++)

                @if ($i%2>0)
                    <div class="row align-items-center mb-4 position-relative items">
                        <div class="fa-middle">
                            <i class="far fa-heart"></i>
                        </div>
                        <div class="col-md-6 order-md-1 order-0">
                            <div class="img-content"
                                 style="background-image:url({{URL::asset('http://sweetinz.agr8ho5txjpwv.maxcdn-edge.com/wp-content/uploads/2018/05/green-story_01.jpg')}});">
                            </div>
                        </div>
                        <div class="col-md-6  p-lg-5 p-5 text-lg-right text-left order-md-0 order-1">
                            <h4 class="title text-lg-right text-left"><a href="{{URL::asset('uu-dai/chuong-trinh-uu-dai.html')}}">We
                                    fall in love each other</a></h4>
                            <span>30-01-2018</span>
                            <div class="text-lg-right text-left" style="width: 100%;">
                                <p class="float-lg-right float-left">Ưu đãi voucher giảm 40% – 50% combo trang điểm +
                                    làm tóc cô dâu từ
                                    thương hiệu làm đẹp cao cấp.</p>
                            </div>
                        </div>
                    </div>
                @endif
                @if($i%2==0)
                    <div class="row align-items-center mb-4 position-relative items">
                        <div class="fa-middle">
                            <i class="fab fa-angellist"></i>
                        </div>
                        <div class="col-md-6 text-left">
                            <div class="img-content"
                                 style="background-image:url({{URL::asset('http://sweetinz.agr8ho5txjpwv.maxcdn-edge.com/wp-content/uploads/2018/05/green-story_02.jpg')}});">
                            </div>
                        </div>
                        <div class="col-md-6 p-5 p-lg-5 text-left">

                            <h4 class="title text-left"><a href="{{URL::asset('uu-dai/chuong-trinh-uu-dai.html')}}">First
                                    time we meet</a></h4>
                            <span>30-01-2018    </span>
                            <p>Ưu đãi voucher giảm 40% – 50% combo trang điểm + làm tóc cô dâu từ
                                thương hiệu làm đẹp cao cấp.</p>

                        </div>
                    </div>
                @endif

            @endfor
            <div id="bottom_circle">
                <div class="inner">

                </div>
            </div>
        </div>
    </div>
    {{--<div class="container">--}}
    {{--<div class="packet-price-carousel owl-carousel owl-theme">--}}
    {{--@foreach($data['listPrice'] as $key=>$item)--}}
    {{--<div class="one-item">--}}
    {{--<div class="image-item" >--}}
    {{--<a style="background:url('{{URL::to($item->image)}}')" href="{{URL::to('bang-gia/'.$item->path)}}"></a>--}}
    {{--</div>--}}
    {{--<div class="content">--}}
    {{--<h4><a href="{{URL::to('bang-gia/'.$item->path)}}">{{$item->title}}</a></h4>--}}
    {{--<div class="description">--}}
    {{--{!! $item->description !!}--}}
    {{--</div>--}}
    {{--</div>--}}
    {{--</div>--}}
    {{--@endforeach--}}
    {{--</div>--}}

    {{--</div>--}}
</div>
</div>