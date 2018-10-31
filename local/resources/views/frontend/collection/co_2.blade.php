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
        <div class="container-fluid">
            <div class="album">
                <div class="grid-collection">
                    <div class="grid-sizer">
                        @foreach($data['albums'] as $key=>$item)
                            <div class="grid-item">
                                @if($type=='album')
                                    <a class=""
                                       href="{{URL::to('album/'.$item->path)}}">
                                        <div class="border-hover">

                                            {{ Html::image($item->image,'',array('class'=>'')) }}
                                            <div class="title">{{$item->name}}</div>

                                        </div>
                                    </a>
                                @elseif($type=='phong-su')
                                    <a class=""
                                       href="{{URL::to('phong-su/'.$item->path)}}">
                                        <div class="border-hover">

                                            {{ Html::image($item->image,'',array('class'=>'')) }}
                                            <div class="title">{{$item->name}}</div>

                                        </div>
                                    </a>
                                @else
                                    <a class=""
                                       href="{{URL::to('chup-anh-family/'.$item->path)}}">
                                        <div class="border-hover">

                                            {{ Html::image($item->image,'',array('class'=>'')) }}
                                            <div class="title">{{$item->name}}</div>

                                        </div>
                                    </a>
                                @endif
                            </div>
                        @endforeach

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>