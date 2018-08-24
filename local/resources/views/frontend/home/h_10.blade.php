<div id="h_10">
    <h3 class="title">
        GÓI CHỤP HOT TẠI SEA
    </h3>
    <div class="container">
        <div class="packet-price-carousel owl-carousel owl-theme">
            @foreach($data['listPrice'] as $key=>$item)
            <div class="one-item">
                <div class="image-item" >
                    <a style="background:url('{{URL::to($item->image)}}')" href="{{URL::to('bang-gia/'.$item->path)}}"></a>
                </div>
                <div class="content">
                    <h4><a href="{{URL::to('bang-gia/'.$item->path)}}">{{$item->title}}</a></h4>
                    <div class="description">
                        {!! $item->description !!}
                    </div>
                </div>
            </div>
            @endforeach
        </div>

    </div>
</div>
</div>