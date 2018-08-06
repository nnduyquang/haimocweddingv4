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
        <div class="description">
            Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem
            aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.
            Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni
            dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor
            sit amet.<br>

            Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi
            optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est,
            omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe
            eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a
            sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus
            asperiores repellat.
        </div>
        <div class="info text-center">
            <p>Photographer: Hải Nguyễn</p>
            <p>Makeup: Ly Ly Lê</p>
            <p>Địa điểm chụp: Cầu Tình Yêu, Bà Nà, Bãi Đa</p>
        </div>
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
                    {{--<div class="grid-item">--}}
                        {{--<a class="fancybox" data-fancybox="gallery"--}}
                           {{--href="{{URL::to('images/album/huytram/NAMZ1824-min.png')}}">--}}
                            {{--{{ Html::image('images/album/huytram/NAMZ1824-min.png','',array('class'=>'')) }}--}}
                        {{--</a>--}}
                    {{--</div>--}}
                    {{--<div class="grid-item">--}}
                        {{--<a class="fancybox" data-fancybox="gallery"--}}
                           {{--href="{{URL::to('images/album/huytram/NAMZ1827-min.png')}}">--}}
                            {{--{{ Html::image('images/album/huytram/NAMZ1827-min.png','',array('class'=>'')) }}--}}
                        {{--</a>--}}
                    {{--</div>--}}
                    {{--<div class="grid-item">--}}
                        {{--<a class="fancybox" data-fancybox="gallery"--}}
                           {{--href="{{URL::to('images/album/huytram/NAMZ1874-min.png')}}">--}}
                            {{--{{ Html::image('images/album/huytram/NAMZ1874-min.png','',array('class'=>'')) }}--}}
                        {{--</a>--}}
                    {{--</div>--}}
                    {{--<div class="grid-item">--}}
                        {{--<a class="fancybox" data-fancybox="gallery"--}}
                           {{--href="{{URL::to('images/album/huytram/NAMZ1905-min.png')}}">--}}
                            {{--{{ Html::image('images/album/huytram/NAMZ1905-min.png','',array('class'=>'')) }}--}}
                        {{--</a>--}}
                    {{--</div>--}}
                    {{--<div class="grid-item">--}}
                        {{--<a class="fancybox" data-fancybox="gallery"--}}
                           {{--href="{{URL::to('images/album/huytram/NAMZ1912-min.png')}}">--}}
                            {{--{{ Html::image('images/album/huytram/NAMZ1912-min.png','',array('class'=>'')) }}--}}
                        {{--</a>--}}
                    {{--</div>--}}
                    {{--<div class="grid-item">--}}
                        {{--<a class="fancybox" data-fancybox="gallery"--}}
                           {{--href="{{URL::to('images/album/huytram/NAMZ1921-min.png')}}">--}}
                            {{--{{ Html::image('images/album/huytram/NAMZ1921-min.png','',array('class'=>'')) }}--}}
                        {{--</a>--}}
                    {{--</div>--}}
                    {{--<div class="grid-item">--}}
                        {{--<a class="fancybox" data-fancybox="gallery"--}}
                           {{--href="{{URL::to('images/album/huytram/NAMZ1950-min.png')}}">--}}
                            {{--{{ Html::image('images/album/huytram/NAMZ1950-min.png','',array('class'=>'')) }}--}}
                        {{--</a>--}}
                    {{--</div>--}}
                    {{--<div class="grid-item">--}}
                        {{--<a class="fancybox" data-fancybox="gallery"--}}
                           {{--href="{{URL::to('images/album/huytram/NAMZ2026-min.png')}}">--}}
                            {{--{{ Html::image('images/album/huytram/NAMZ2026-min.png','',array('class'=>'')) }}--}}
                        {{--</a>--}}
                    {{--</div>--}}
                    {{--<div class="grid-item">--}}
                        {{--<a class="fancybox" data-fancybox="gallery"--}}
                           {{--href="{{URL::to('images/album/huytram/NAMZ2048-min.png')}}">--}}
                            {{--{{ Html::image('images/album/huytram/NAMZ2048-min.png','',array('class'=>'')) }}--}}
                        {{--</a>--}}
                    {{--</div>--}}
                    {{--<div class="grid-item">--}}
                        {{--<a class="fancybox" data-fancybox="gallery"--}}
                           {{--href="{{URL::to('images/album/huytram/NAMZ2049-min.png')}}">--}}
                            {{--{{ Html::image('images/album/huytram/NAMZ2049-min.png','',array('class'=>'')) }}--}}
                        {{--</a>--}}
                    {{--</div>--}}
                    {{--<div class="grid-item">--}}
                        {{--<a class="fancybox" data-fancybox="gallery"--}}
                           {{--href="{{URL::to('images/album/huytram/NAMZ2071-min.png')}}">--}}
                            {{--{{ Html::image('images/album/huytram/NAMZ2071-min.png','',array('class'=>'')) }}--}}
                        {{--</a>--}}
                    {{--</div>--}}
                    {{--<div class="grid-item">--}}
                        {{--<a class="fancybox" data-fancybox="gallery"--}}
                           {{--href="{{URL::to('images/album/huytram/NAMZ2144-min.png')}}">--}}
                            {{--{{ Html::image('images/album/huytram/NAMZ2144-min.png','',array('class'=>'')) }}--}}
                        {{--</a>--}}
                    {{--</div>--}}
                    {{--<div class="grid-item">--}}
                        {{--<a class="fancybox" data-fancybox="gallery"--}}
                           {{--href="{{URL::to('images/album/huytram/NAMZ2158-min.png')}}">--}}
                            {{--{{ Html::image('images/album/huytram/NAMZ2158-min.png','',array('class'=>'')) }}--}}
                        {{--</a>--}}
                    {{--</div>--}}
                    {{--<div class="grid-item">--}}
                        {{--<a class="fancybox" data-fancybox="gallery"--}}
                           {{--href="{{URL::to('images/album/huytram/NAMZ2161-min.png')}}">--}}
                            {{--{{ Html::image('images/album/huytram/NAMZ2161-min.png','',array('class'=>'')) }}--}}
                        {{--</a>--}}
                    {{--</div>--}}
                    {{--<div class="grid-item">--}}
                        {{--<a class="fancybox" data-fancybox="gallery"--}}
                           {{--href="{{URL::to('images/album/huytram/NAMZ2167-min.png')}}">--}}
                            {{--{{ Html::image('images/album/huytram/NAMZ2167-min.png','',array('class'=>'')) }}--}}
                        {{--</a>--}}
                    {{--</div>--}}
                    {{--<div class="grid-item">--}}
                        {{--<a class="fancybox" data-fancybox="gallery"--}}
                           {{--href="{{URL::to('images/album/huytram/NAMZ2188-min.png')}}">--}}
                            {{--{{ Html::image('images/album/huytram/NAMZ2188-min.png','',array('class'=>'')) }}--}}
                        {{--</a>--}}
                    {{--</div>--}}
                    {{--<div class="grid-item">--}}
                        {{--<a class="fancybox" data-fancybox="gallery"--}}
                           {{--href="{{URL::to('images/album/huytram/NAMZ2198-min.png')}}">--}}
                            {{--{{ Html::image('images/album/huytram/NAMZ2198-min.png','',array('class'=>'')) }}--}}
                        {{--</a>--}}
                    {{--</div>--}}
                    {{--<div class="grid-item">--}}
                        {{--<a class="fancybox" data-fancybox="gallery"--}}
                           {{--href="{{URL::to('images/album/huytram/NAMZ2115-min.png')}}">--}}
                            {{--{{ Html::image('images/album/huytram/NAMZ2115-min.png','',array('class'=>'')) }}--}}
                        {{--</a>--}}
                    {{--</div>--}}
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