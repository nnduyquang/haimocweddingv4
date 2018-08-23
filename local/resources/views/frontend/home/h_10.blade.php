<div id="h_10">
    <h3 class="title">
        GÓI CHỤP HOT TẠI SEA WEDDING
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
            {{--<div class="one-item">--}}
                {{--<div class="image-item" >--}}
                    {{--<a style="background:url('{{URL::to('images/temps/home/h10/2.jpg')}}')" href="#"></a>--}}
                {{--</div>--}}
                {{--<div class="content">--}}
                    {{--<h4><a href="#">Gói chụp Đà Nẵng - Bà Nà</a></h4>--}}
                    {{--<div class="description">--}}
                        {{--Làng Pháp tại khu du lịch Bà Nà Hills tái hiện một nước Pháp cổ điển và lãng mạn với tổ hợp công trình kiến trúc độc đáo--}}
                    {{--</div>--}}
                {{--</div>--}}
            {{--</div>--}}
            {{--<div class="one-item">--}}
                {{--<div class="image-item" >--}}
                    {{--<a style="background:url('{{URL::to('images/temps/home/h10/3.jpg')}}')" href="#"></a>--}}
                {{--</div>--}}
                {{--<div class="content">--}}
                    {{--<h4><a href="#">Gói chụp Đà Nẵng - Đồi Chè</a></h4>--}}
                    {{--<div class="description">--}}
                        {{--Đồi chè Đông Giang là một trong những địa điểm du lịch Đà Nẵng hấp dẫn dành cho các cặp đôi lưu lại kỷ niệm đẹp xanh mát...--}}
                    {{--</div>--}}
                {{--</div>--}}
            {{--</div>--}}
            {{--<div class="one-item">--}}
                {{--<div class="image-item" >--}}
                    {{--<a style="background:url('{{URL::to('images/temps/home/h10/4.jpg')}}')" href="#"></a>--}}
                {{--</div>--}}
                {{--<div class="content">--}}
                    {{--<h4><a href="#">Gói Ưu Đãi Hấp Dẫn</a></h4>--}}
                    {{--<div class="description">--}}
                        {{--Duy nhất trong 20 ngày, các CDCR đăng ký trọn gói chỉ với 6.500.000 với nhiều phần quà háp dẫn.--}}
                    {{--</div>--}}
                {{--</div>--}}
            {{--</div>--}}
            {{--<div class="one-item">--}}
                {{--<div class="image-item" >--}}
                    {{--<a style="background:url('{{URL::to('images/temps/home/h10/6.jpg')}}')" href="#"></a>--}}
                {{--</div>--}}
                {{--<div class="content">--}}
                    {{--<h4><a href="#">Gói nội thành Đà Nẵng</a></h4>--}}
                    {{--<div class="description">--}}
                        {{--Đà Nẵng vừa có núi non, vừa có biển xanh trải dài thơ mộng là địa điểm đáng đến một lần trong đời.--}}
                    {{--</div>--}}
                {{--</div>--}}
            {{--</div>--}}
        </div>

    </div>
</div>
</div>