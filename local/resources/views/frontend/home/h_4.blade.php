<div id="h_4">
    <div class="col-md-12 p-0">
        {{--{{ Html::image('images/temps/home/we.jpg','',array('class'=>'img-intro')) }}--}}
    </div>
    <h3 class="title">
        <p>HÃY ĐỂ CHÚNG TÔI LÀ MỘT PHẦN TRONG NGÀY TRỌN ĐẠI CỦA CỦA BẠN</p>
        <span>ALBUM GALLERY</span>
    </h3>
    <div class="row no-gutters">
        @foreach($data['albums'] as $key=>$data)
        <div class="col-md-4">
            <div class="one-item">
                <div class="image-item" style="background:url('{{URL::to($data->image)}}')">
                </div>
                <div class="content">
                    <i class="far fa-heart"></i>
                    <h3 class="title"><a href="{{URL::to('album/'.$data->path)}}">{{$data->name}}</a></h3>
                    <div class="time-wedding">
                        {{--<span>February 5, 2015 /Vietnam</span>--}}
                    </div>
                </div>
            </div>
        </div>
        @endforeach
    </div>
</div>