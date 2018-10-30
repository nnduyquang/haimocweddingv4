<style>

    @import url('https://fonts.googleapis.com/css?family=Pattaya|Philosopher');

    #h_12 {
        padding-top: 58px;
        padding-bottom: 58px;
        /*padding-left: 58px;*/
        /*padding-right: 58px;*/
        width: 100%;
        min-height: 300px;
        background-color: #f6f6f6;
    }

    #h_12 .sv_banner {
        width: 100%;
        height: 518px;
        overflow: hidden;
        position: relative;
        background-position: center center;
        background-repeat: no-repeat;
        -webkit-background-size: cover;
        background-size: cover;
        padding: 16px;
        cursor: pointer;
        transition: .6s;
    }

    #h_12 .sv_banner:hover:after {
        width: 92%;
        opacity: 1;
    }

    #h_12 .sv_banner:hover:before {
        width: 92%;
        opacity: 1;
    }

    #h_12 .sv_banner:after {
        position: absolute;
        content: '';
        width: 1%;
        height: 94%;
        opacity: 0;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        border-top: 2px solid white;
        z-index: 2;
        transition: .6s;
    }

    #h_12 .sv_banner:before {
        position: absolute;
        content: '';
        width: 1%;
        height: 94%;
        opacity: 0;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        border-bottom: 2px solid white;
        transition: .6s;
    }

    #h_12 .sv_banner:hover .border-top-bot {
        opacity: 1;
    }

    #h_12 .sv_banner .border-top-bot {
        width: 100%;
        height: 100%;
        position: absolute;
        top: 0;
        left: 0;
        background-color: rgba(255, 255, 255, 0.2);
        z-index: 1;
        opacity: 0;
        transition: .6s;
    }

    #h_12 .sv_banner .sv_content {
        position: absolute;
        width: 92%;
        text-align: center;
        left: 50%;
        bottom: 3%;
        transform: translateX(-50%);
        padding-bottom: 20px;
    }

    #h_12 .sv_banner .sv_content p {
        color: white;
        text-shadow: 0px 0px 6px #2a2a2a;
        font-size: 18px;
        line-height: 22px;
        font-weight: bold;
        font-family: 'Philosopher', sans-serif !important;
        /*font-family: 'Vollkorn', serif!important;*/
    }

    #h_12 .sv_banner .sv_content h5 {
        font-size: 26px;
        color: white;
        text-shadow: 0px 0px 6px #2a2a2a;
        position: relative;
        padding-bottom: 12px;
    }

    #h_12 .sv_banner .sv_content h5:before {
        position: absolute;
        content: '';
        width: 18%;
        height: 2px;
        background-color: #fff;
        bottom: 0;
        left: 50%;
        transform: translateX(-50%);
        box-shadow: 0px 0px 6px #2a2a2a;;
    }

    #h_12 .sv_banner:hover .border-top-bot:after {
        height: 94%;
        opacity: 1;
    }

    #h_12 .sv_banner .border-top-bot:after {
        position: absolute;
        content: '';
        width: 92%;
        height: 1%;
        opacity: 0;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        border-left: 2px solid white;
        transition: .6s;
    }

    #h_12 .sv_banner:hover .border-top-bot:before {
        height: 94%;
        opacity: 1;
    }

    #h_12 .sv_banner .border-top-bot:before {
        position: absolute;
        content: '';
        width: 92%;
        height: 1%;
        opacity: 0;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        border-right: 2px solid white;
        transition: .6s;
    }

    @media only screen and (max-width: 800px) {
        #h_12 .sv_banner {
            height: 438px;

        }
    }
</style>
<div id="h_12" class="pl-lg-5 pr-lg-5 pl-3 pr-3">

    <div class="row pl-lg-5 pr-lg-5 pl-3 pr-3">
        <div class="col-md-4 mb-3">
            <a href="{{URL::to('album')}}">
                <div class="sv_banner" style="background-image:url({{URL::asset('images/banner/HAI_0034.jpg')}});">
                    <div class="border-top-bot"></div>
                    <div class="sv_content">
                        <h5>CHỤP ẢNH CƯỚI</h5>
                        <div class="pt-3">
                            <p>NHIẾP ẢNH GIA</p>
                            <p>THỢ TRANG ĐIỂM HÀNG ĐẦU</p>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-4 mb-3">
            <a href="{{URL::to('phong-su')}}">
                <div class="sv_banner" style="background-image:url({{URL::asset('images/banner/Y7A2718-X2.jpg')}});">
                    <div class="border-top-bot"></div>
                    <div class="sv_content">
                        <h5>CHỤP PHÓNG SỰ CƯỚI</h5>
                        <div class="pt-3">
                            <p>LƯU GIỮ KHOẢNH KHẮC</p>
                            <p>NGÀY CƯỚI</p>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-4 mb-3">
            <a href="{{URL::to('chup-anh-family')}}">
            <div class="sv_banner" style="background-image:url({{URL::asset('images/uploads/images/family/giadinh/10.jpg')}});">
                <div class="border-top-bot"></div>
                <div class="sv_content">
                    <h5>CHỤP ẢNH FAMILY</h5>
                    <div class="pt-3">
                        <p>LƯU GIỮ KHOẢNH KHẮC</p>
                        <p>GIA ĐÌNH</p>
                    </div>
                </div>
            </div>
            </a>
        </div>
    </div>

</div>