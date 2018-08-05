<div id="co_1">
    <div class="main-img">
        {{ Html::image('images/temps/album/album.jpg','',array('class'=>'')) }}
    </div>
    <div class="main-title">
        <div class="icon-title" style="background:url('{{URL::to('images/icon/gallry_icon2.png')}}')"></div>
        <h1>Album</h1>
        <div class="icon-title" style="background:url('{{URL::to('images/icon/garllry_icon1.png')}}')"></div>
    </div>
    <div class="location">
        <div class="container">
            <div class="row">
                <div class="col-md-2 text-name">Khu Vực</div>
                <div class="col-md-10">
                    <ul class="list-location">
                        @foreach($data['locations'] as $key=>$item)
                            <li><a href="{{URL::to('dia-diem/'.$item->path)}}">{{$item->name}}</a></li>
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="list-album">
        <div class="container">
            <div class="row">
                @foreach($data['albums'] as $key=>$item)
                    <div class="col-md-4 mb-4">
                        <div class="card one-item h-100">
                            <a class="img-item"
                               href="{{URL::to('album/'.$item->path)}}">  {{ Html::image($item->image,'',array('class'=>'')) }}</a>
                            <div class="card-body plan-box">
                                <div class="inner">
                                    <h3 class="title"><a href="{{URL::to('album/huy-tram')}}">{{$item->name}}</a></h3>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
    @include('frontend.common.contact')
</div>