<div id="po_1">
    <div class="main-img">
        {{ Html::image($data['post']->image,'',array('class'=>'')) }}
    </div>
    <div class="main-title">
        <div class="icon-title" style="background:url('{{URL::to('images/icon/gallry_icon2.png')}}')"></div>
        <h1>{{$data['post']->title}}</h1>
        <div class="icon-title" style="background:url('{{URL::to('images/icon/garllry_icon1.png')}}')"></div>
    </div>
    <div class="container">
        @if($data['type']=='tin-tuc')
            <div class="description">
                {!! $data['post']->description !!}
            </div>
        @endif
        <div class="content">
            {!! $data['post']->content !!}
        </div>
        @if($data['type']=='tin-tuc')
            <div class="other">
                <h4>Có thể bạn thích <i class="far fa-heart"></i></h4>
                <div class="row">
                    @foreach($data['other'] as $key=>$item)
                        <div class="col-md-3">
                            <div class="card one-item h-100">
                                <a href="{{URL::to('tin-tuc/'.$item->path)}}">
                                    {{ Html::image($item->image,'',array('class'=>'')) }}
                                </a>
                                <div class="card-body">
                                    <h2 class="title card-title"><a
                                                href="{{URL::to('tin-tuc/'.$item->path)}}">{{$item->title}}
                                        </a>
                                    </h2>
                                </div>
                                <div class="bottom card-footer">
                                    <a href="{{URL::to('tin-tuc/'.$item->path)}}">
                                        <p>
                                            {!! $item->description !!}
                                        </p>
                                    </a>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        @endif
        @if($data['type']=='khuyen-mai')
            <div class="album">
                <h4>Album mới nhất <i class="far fa-heart"></i></h4>
                <div class="row">
                    @foreach($data['album'] as $key=>$item)
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
        @endif
    </div>
</div>