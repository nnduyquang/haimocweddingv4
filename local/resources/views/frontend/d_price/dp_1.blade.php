<div id="dp_1">
    <div class="main-img">
        {{ Html::image($data['post']->image,'',array('class'=>'')) }}
    </div>
    <div class="main-title">
        <div class="icon-title" style="background:url('{{URL::to('images/icon/gallry_icon2.png')}}')"></div>
        <h1>{{$data['post']->title}}</h1>
        <div class="icon-title" style="background:url('{{URL::to('images/icon/garllry_icon1.png')}}')"></div>
    </div>
    <div class="container">
        {!! $data['post']->content !!}
        @include('frontend.common.contact')
        <div class="other">
            <h4>Album tham khảo <i class="far fa-heart"></i></h4>
            <div class="row">
                @foreach($data['post']->products()->get() as $key=>$item)
                    <div class="col-md-3 mb-4">
                        <div class="card one-item h-100">
                            <div class="img-cover">
                                <a href="{{URL::to('album/'.$item->path)}}">
                                    {{ Html::image($item->image,'',array('class'=>'')) }}
                                </a>
                            </div>
                            <div class="card-body">
                                <span class="title">{{$item->name}}</span>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>