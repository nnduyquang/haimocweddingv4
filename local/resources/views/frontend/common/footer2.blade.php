<style>
    .fb-page,
    .fb-page span,
    .fb-page span iframe[style] {
        width: 100% !important;
    }

    #footer2 {
        padding-top: 38px;
        /*padding-bottom: 38px;*/
    }

    #footer2 h4 {
        font-size: 18px;
        margin-bottom: 20px;
        position: relative;
        padding-bottom: 8px;
        color: #007bff;
    }

    #footer2 h4 span{
        color: #0569cd;
        font-weight: bold;
    }

    #footer2 h4:before {
        position: absolute;
        content: '';
        width: 100%;
        height: 1px;
        background-color: #63b0fd;
        top: 100%;
        transform: skewX(30deg);
    }

    #footer2 p {
        line-height: 20px;
        padding-bottom: 6px;
        color: #0260be;
    }

    #footer2 a {
        color:#0260be!important;
    }

    #footer2 #social a i {
        width: 38px;
        height: 38px;
        text-align: center;
        line-height: 38px;
        background-color: #007bff;
        color: white;
        border-radius: 50%;
        transition: .8s;
    }

    #footer2 .content input{
        width: 100%;
        padding: 6px 10px;
        margin-bottom: 8px;
    }


    #footer2 .content textarea{
        width: 100%;
        padding: 6px 10px;
        margin-bottom: 8px;
    }

    #footer2 .content button{
        cursor: pointer;
        margin-bottom: 8px;
        padding: 10px;
        width: 100%;
        border: none;
        background-color: #007bff;
        transition: .8s;
        color: white;
    }

    #footer2 .content button:hover{
        background-color: #002752;
    }

    #footer2 #social a:hover i {
        background-color: #002752;
    }

    #footer2 .news {
        padding-bottom: 8px;
    }

    #footer2 .news .image {
        background-position: center center;
        background-repeat: no-repeat;
        -webkit-background-size: cover;
        background-size: cover;
        width: 98px;
        height: 68px;
        /*background-color: #007bff;*/
    }

    #footer2 .news h5 {
        font-size: 16px;
        /*margin: 1em;*/
        height: 68px;
        line-height: 1.25;
        display: -webkit-box;
        -webkit-line-clamp: 3;
        -webkit-box-orient: vertical;
        overflow: hidden;
        color:#007bff;
    }

    #footer2 .news h5 a{
        color:#007bff;
    }

    .copy-right {
        padding: 20px 0px;
        color: white;
        background-color: #002752;
    }
</style>
<div id="footer2" class="border-top" style="background-color:#f6f6f6;">
    <div >
        <div class="container">
            <div class="row">
                <div class="col-md-4 mb-3">
                    <h4 class="title">
                        LIÊN HỆ <span>SEAWEDDING</span>
                    </h4>
                    <div class="content">
                        <p>ĐỊA CHỈ: 38 Tôn Thất Đạm, Thanh Khê, Đà Nẵng.</p>
                        <p> HOTLINE 1: 0902.710.212 </p>
                        <p>HOTLINE 2: 0914.348.131 </p>
                        <p>EMAIL: seaweddingvn@gmail.com</p>
                        <input class="mt-2" type="text" placeholder="Tên của bạn">
                        <input type="text" placeholder="Số điện thoại">
                        <textarea name="" id="" cols="30" rows="5" placeholder="Nội dung quan tâm"></textarea>
                        <button>GỞI THÔNG TIN</button>
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <h4>FANPAGE</h4>
                    <div class="fb-page" data-href="https://www.facebook.com/seachupanhcuoidep" data-tabs="timeline"
                         data-width="500" data-height="280" data-small-header="false" data-adapt-container-width="true"
                         data-hide-cover="false" data-show-facepile="true">
                        <blockquote cite="https://www.facebook.com/seachupanhcuoidep" class="fb-xfbml-parse-ignore"><a
                                    href="https://www.facebook.com/seachupanhcuoidep">Chụp Ảnh Cưới Đà Nẵng</a>
                        </blockquote>
                    </div>
                </div>
                <div class="col-md-4 mb-3 news">
                    <h4 class="title">
                        BÀI VIẾT <span>MỚI NHẤT</span>
                    </h4>
                    @foreach($listFrontEndInfo['news'] as $key=>$item)

                        <div class="d-flex align-items-center mb-3">
                            <div class="pr-2">
                                <a href="{{URL::to('tin-tuc/'.$item->path)}}">
                                    <div class="image"
                                         style="background-image:url({{URL::to($item->image)}});">
                                    </div>
                                </a>
                            </div>
                            <h5><a href="{{URL::to('tin-tuc/'.$item->path)}}">{{$item->title}}</a></h5>
                        </div>

                    @endforeach
                </div>

            </div>
        </div>

        <div class="container-fluid pb-3" id="social">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center pt-3 pb-3">
                        <a href="https://www.facebook.com/seachupanhcuoidep"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-google-plus-g"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid copy-right">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <p style="color: white">Bản quyền thuộc về seawedding.net © 2018 | Thiết kế website bởi: smartlinks.vn .</p>
                </div>
            </div>
        </div>
    </div>

</div>