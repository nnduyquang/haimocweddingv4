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
            @php
                    $i=1
                    @endphp
            @foreach($data['listPrice'] as $key=>$item)
                @php
                    $i=$i+1
                @endphp
                @if ($i%2>0)
                    <div class="row align-items-center mb-4 position-relative items">
                        <div class="fa-middle">
                            <i class="far fa-heart"></i>
                        </div>
                        <div class="col-md-6 order-md-1 order-0">
                            <div class="img-content"
                                 style="background-image:url({{URL::to($item->image)}});">
                            </div>
                        </div>
                        <div class="col-md-6  p-lg-5 p-5 text-lg-right text-left order-md-0 order-1">
                            <h4 class="title text-lg-right text-left"><a href="{{URL::to('bang-gia/'.$item->path)}}">{{$item->title}}</a></h4>
                            {{--<span>30-01-2018</span>--}}
                            <div class="text-lg-right text-left" style="width: 100%;">
                                <p class="float-lg-right float-left">{!! $item->description !!}</p>
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
                                 style="background-image:url({{URL::to($item->image)}});">
                            </div>
                        </div>
                        <div class="col-md-6 p-5 p-lg-5 text-left">

                            <h4 class="title text-left"><a href="{{URL::to('bang-gia/'.$item->path)}}">{{$item->title}}</a></h4>
                            {{--<span>30-01-2018    </span>--}}
                            <p>{!! $item->description !!}</p>

                        </div>
                    </div>
                @endif

            @endforeach
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