<style>
    #h_13{
        background-color: #f6f6f6;
        padding-top: 58px;
        padding-bottom: 68px;
    }

    #h_13 h4{
        font-size: 26px;
        /*font-weight: bold;*/
        padding-bottom: 15px;
        margin: auto;
        width: fit-content;
        position: relative;
        color: #034b93;
    }

    #h_13 h5{
        font-size: 20px;
        /*font-weight: bold;*/
        width: fit-content;
        margin: auto;
        margin-top: 18px;
        margin-bottom: 28px;
        color: #002752;
    }

    #h_13 h4:before{
        position: absolute;
        content: '';
        width: 68px;
        height: 2px;
        background-color: #034b93;
        top: 100%;
        left: 50%;
        transform: translateX(-50%);
    }

    #h_13 .employee{
        width: 100%;
        height: 296px;
        /*background-color: #454545;*/
        overflow: hidden;
        position: relative;
        cursor: pointer;
    }

    #h_13 .employee:before{
        position: absolute;
        content: '';
        width: 96%;
        height: 97%;
        transform: translate(-50%,-50%);
        top: 50%;
        left: 50%;
        transition: .6s;
        z-index: 2;
        border: 5px solid rgba(255,255,255,0.6);
        transition: .3s;
    }

    #h_13 .employee:hover:before{
        width: 100%;
        height: 100%;
        border: 10px solid rgba(255,255,255,0.6);
        top: 0;
        left: 0;
        transform: translate(0%,0%);
    }

    #h_13 .employee .img-emp{
        width: 100%;
        height: 100%;
        background-repeat: no-repeat;
        -webkit-background-size: cover;
        background-size: cover;
        background-position: center center;
        transition: .6s;
        cursor: pointer;
    }

    #h_13 .employee:hover .img-emp{
        transform: scale(1.2) rotate(6deg);
    }

    #h_13 h6{
        width: fit-content;
        /*margin: auto;*/
        margin: 16px auto 8px auto;
        font-size: 22px;
        color: #034b93;
    }

    #h_13 p{
        color: #002752;
    }
    
</style>
<div class="container-fluid" id="h_13">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h4>ĐỘI NGŨ CỦA CHÚNG TÔI</h4>

                <h5>AMAZING TEAM </h5>
            </div>
            {{--@for ($i = 0; $i < 2; $i++)--}}
                <div class="col-md-3 text-center">
                    <div class="employee">
                        <div class="img-emp" style="background-image:url({{URL::asset('images/nhanvien/nv_1.jpg')}});">

                        </div>
                    </div>
                    <h6>MINH HOÀNG</h6>
                    <p>Photographer</p>
                </div>
                <div class="col-md-3 text-center">
                    <div class="employee">
                        <div class="img-emp" style="background-image:url({{URL::asset('images/nhanvien/nv_2.jpg')}});">

                        </div>
                    </div>
                    <h6>NGUYỄN HẢI</h6>
                    <p>Photographer</p>
                </div>

            <div class="col-md-3 text-center">
                <div class="employee">
                    <div class="img-emp" style="background-image:url({{URL::asset('images/nhanvien/nv_3.jpg')}});">

                    </div>
                </div>
                <h6>MY SA</h6>
                <p>Make-up</p>
            </div>

            <div class="col-md-3 text-center">
                <div class="employee">
                    <div class="img-emp" style="background-image:url({{URL::asset('images/nhanvien/nv_1.jpg')}});">

                    </div>
                </div>
                <h6>MINH HOÀNG</h6>
                <p>Photographer</p>
            </div>
            {{--@endfor--}}

        </div>
    </div>
</div>