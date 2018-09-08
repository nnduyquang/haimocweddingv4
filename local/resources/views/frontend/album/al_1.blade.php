<div id="al_1">
    <div class="main-img">
        {{ Html::image($data['album']->image,'',array('class'=>'')) }}
    </div>
    <div class="main-title">
        <div class="icon-title" style="background:url('{{URL::to('images/icon/gallry_icon2.png')}}')"></div>
        <h1>{{$data['album']->name}}</h1>
        <div class="icon-title" style="background:url('{{URL::to('images/icon/garllry_icon1.png')}}')"></div>
    </div>
    <div class="container">
        {{--@include('frontend.home.h_10')--}}
        <div class="album">
            @php
                $subImage=explode(';',$data['album']->sub_image);

            @endphp
            <div class="grid-album">
                <div class="grid-sizer">
                    @foreach($subImage as $key=>$item)
                    <div class="grid-item">
                        <a class="fancybox" data-fancybox="gallery"
                           href="{{URL::to($item)}}">
                            {{ Html::image($item,'',array('class'=>'')) }}
                        </a>
                    </div>
                    @endforeach

                </div>
            </div>
        </div>
        @include('frontend.common.contact')
        <div class="other">
            <h4>Album mới nhất <i class="far fa-heart"></i></h4>
            <div class="row">
                @foreach($data['order'] as $key=>$item)
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