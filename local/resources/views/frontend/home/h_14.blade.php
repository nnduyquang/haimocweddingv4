<style>
    #h_14{
        padding-top: 38px;
        padding-bottom: 58px;
    }

    #h_14 h6{
        font-size: 26px;
        width: fit-content;
        margin: auto;
        color: #034b93;
        /*font-weight: bold;*/
        position: relative;
        padding-bottom: 18px;
        margin-bottom: 38px;
    }

    #h_14 h6:before{
        position: absolute;
        content: '';
        width: 68px;
        height: 2px;
        background-color: #034b93;
        top: 100%;
        left: 50%;
        transform: translateX(-50%);
    }

    #h_14 .bg-dv{
        width: 82%;
        height: auto;
        margin: auto;
        /*overflow: hidden;*/
        background-position: center center;
        background-repeat: no-repeat;
        -webkit-background-size: cover;
        background-size: cover;
        position: relative;
        transition: .6s;
        cursor: pointer;
    }

    #h_14 .bg-dv:hover{
        transform: scale(1.05);
    }

    #h_14 .bg-dv:before{
        position: absolute;
        width: 100%;
        height: 100%;
        content: '';
        border: 12px solid rgba(255,255,255,0.6);
        transition: 1.5s;
    }
    #h_14 .bg-dv:hover:before{
        transform: scale(0.8);
        border: 15px solid rgba(255,255,255,0.6);
    }

    #h_14 .bg-dv:after{
        position: absolute;
        width: 110%;
        content: '';
        height: 90%;
        top:50%;
        left: 50%;
        transform: translate(-50%,-50%);
        border: 6px solid #002752;
        z-index: 2;
    }

    #h_14 .bg-dv img{
        width: 100%;
        height: auto;
    }

    #h_14 h5{
        width: fit-content;
        margin: auto;
        margin-top: 38px;
        font-size: 26px;
        color: #034b93;
    }

    #h_14 h4{
        width: fit-content;
        margin: auto;
        margin-top: 5px;
        font-size: 28px;
        color: #034b93;
        font-weight: bold;
    }
</style>

<div class="container-fluid mb-5" id="h_14">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h6>CÁC GÓI DỊCH VỤ ƯU ĐÃI</h6>
            </div>

            @for ($i = 0; $i < 4; $i++)

            <div class="col-md-6 mb-4">
                <div class="bg-dv">
                    <img src="{{URL::asset('http://seawedding.net/images/price/14.jpg')}}" alt="">
                </div>
                <h5>GÓI ĐÀ NẴNG - BÀ NÀ</h5>
                <h4>5.900.000</h4>
            </div>

            @endfor
            {{--<div class="col-md-6">--}}
                {{--<div class="bg-dv">--}}
                    {{--<img src="{{URL::asset('http://beta.flockthemes.com/dove-wedding/demo1/wp-content/uploads/2017/05/parents-1.jpg')}}" alt="">--}}
                {{--</div>--}}
                {{--<h5>GÓI ĐÀ NẴNG - BÀ NÀ</h5>--}}
                {{--<h4>5.900.000</h4>--}}
            {{--</div>--}}
        </div>
    </div>
</div>