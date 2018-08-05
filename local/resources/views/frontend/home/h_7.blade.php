<div id="h_7">
    <div class="container">
        <h3 class="title">
            Ý TƯỞNG CƯỚI
        </h3>
        <div class="info">
            <div class="row">
                @foreach($data['news'] as $key=>$item)
                    <div class="col-md-3">
                        <div class="card one-item h-100">
                            <a href="{{URL::to('tin-tuc/'.$item->path)}}">
                                {{ Html::image($item->image,'',array('class'=>'')) }}
                            </a>
                            <div class="card-body">
                                <h2 class="title card-title"><a href="{{URL::to('tin-tuc/'.$item->path)}}">{{$item->title}}
                                    </a>
                                </h2>
                                <div class="bottom">
                                    <a href="{{URL::to('tin-tuc/'.$item->path)}}">
                                        <p>
                                            {!! $item->description !!}
                                        </p>
                                    </a>
                                </div>
                            </div>

                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>