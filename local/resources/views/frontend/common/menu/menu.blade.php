<div id="menu" class="animated">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <ul class="menu-info">
                    <li><a href="{{URL::to('/')}}">Trang chủ</a></li>
                    <li><a href="{{URL::to('/album')}}">Album</a></li>
                    <li><a href="#">Khuyến Mãi</a></li>
                    <li><a href="{{URL::to('/bang-gia')}}">Bảng Giá</a></li>
                    <li><a href="#">Bộ Sưu Tập</a></li>
                    <li><a href="{{URL::to('/lien-he')}}">Liên Hệ</a></li>
                </ul>
            </div>
            <div class="col-md-4">
                <div class="wrap-logo float-left">
                    {{ Html::image('images/logo/logo_office_2.png','',array('class'=>'main-logo')) }}
                </div>
            </div>
        </div>
    </div>
</div>