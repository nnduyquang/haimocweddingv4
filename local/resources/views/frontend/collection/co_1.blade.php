<div id="co_1">
    <div class="main-img">
        {{ Html::image('images/temps/album/album.jpg','',array('class'=>'')) }}
    </div>
    <div class="main-title">
        <div class="icon-title" style="background:url('{{URL::to('images/icon/gallry_icon2.png')}}')"></div>
        @if($type=='album')
            <h1>Album</h1>
        @elseif($type=='phong-su')
            <h1>Phóng Sự</h1>
        @else
            <h1>Chụp Ảnh Family</h1>
        @endif
        <div class="icon-title" style="background:url('{{URL::to('images/icon/garllry_icon1.png')}}')"></div>
    </div>
    @if($type=='album')
        {{--<div class="location">--}}
            {{--<div class="container">--}}
                {{--<div class="row">--}}
                    {{--<div class="col-md-2 text-name">Khu Vực</div>--}}
                    {{--<div class="col-md-10">--}}
                        {{--<ul class="list-location">--}}
                            {{--@foreach($data['locations'] as $key=>$item)--}}
                                {{--<li><a href="{{URL::to('dia-diem/'.$item->path)}}">{{$item->name}}</a></li>--}}
                            {{--@endforeach--}}
                        {{--</ul>--}}
                    {{--</div>--}}
                {{--</div>--}}
            {{--</div>--}}
        {{--</div>--}}
    @endif
    <div class="list-album">
        <div class="container">
            <div class="row">
                @foreach($data['albums'] as $key=>$item)
                    <div class="col-md-4 mb-4">
                        <div class="card one-item h-100">
                            @if($type=='album')
                                {{--<a class="img-item"--}}
                                   {{--href="{{URL::to('album/'.$item->path)}}">  {{ Html::image($item->image,'',array('class'=>'')) }}</a>--}}
                                {{--<div class="card-body plan-box">--}}
                                    {{--<div class="inner">--}}
                                        {{--<h3 class="title"><a--}}
                                                    {{--href="{{URL::to('album/'.$item->path)}}">{{$item->name}}</a></h3>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                                <a class="img-item" style="background:url('{{URL::to($item->image)}}')" href="{{URL::to('album/'.$item->path)}}"></a>
                                <div class="content">
                                    <h4><a href="{{URL::to('album/'.$item->path)}}">{{$item->name}}</a></h4>
                                </div>
                            @elseif($type=='phong-su')
                                <a class="img-item"
                                   href="{{URL::to('phong-su/'.$item->path)}}">  {{ Html::image($item->image,'',array('class'=>'')) }}</a>
                                <div class="card-body plan-box">
                                    <div class="inner">
                                        <h3 class="title"><a
                                                    href="{{URL::to('phong-su/'.$item->path)}}">{{$item->name}}</a></h3>
                                    </div>
                                </div>
                            @else
                                <a class="img-item"
                                   href="{{URL::to('chup-anh-family/'.$item->path)}}">  {{ Html::image($item->image,'',array('class'=>'')) }}</a>
                                <div class="card-body plan-box">
                                    <div class="inner">
                                        <h3 class="title"><a
                                                    href="{{URL::to('chup-anh-family/'.$item->path)}}">{{$item->name}}</a></h3>
                                    </div>
                                </div>
                            @endif

                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
    @include('frontend.common.contact')
</div>