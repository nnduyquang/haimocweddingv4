<div id="cont_1">
    <div class="main-img">
        {{ Html::image('images/album/huytram/NAMZ1905-min.png','',array('class'=>'')) }}
    </div>
    <div class="main-title">
        <div class="icon-title" style="background:url('{{URL::to('images/icon/gallry_icon2.png')}}')"></div>
        <h1>Liên hệ</h1>
        <div class="icon-title" style="background:url('{{URL::to('images/icon/garllry_icon1.png')}}')"></div>
    </div>
    <div class="container">
        <div class="col-md-12 pb-5">
            <div class="row">
                <div class="col-md-8">
                    <div class="contact_top">
                        <h3 class="title">Gửi liên hệ</h3>
                        <hr>
                        <p>
                            Nếu bạn có thắc mắc gì, có thể gửi yêu cầu cho chúng tôi, và chúng tôi sẽ liên lạc lại với
                            bạn
                            sớm nhất có thể .
                        </p>
                    </div>
                    <div class="contact_bottom">
                        <div class="ip-name input-group">
                            <input class="form-control input-text" placeholder="Tên Của Bạn" name="name-ct" type="text"
                                   value="">
                            <div class="invalid-feedback">
                                Please choose a username.
                            </div>
                        </div>
                        <div class="ip-email input-group">
                            <input class="form-control input-text" placeholder="Email" name="email-ct" type="text"
                                   value="">
                            <div class="invalid-feedback">
                                Please choose a Email.
                            </div>
                        </div>
                        <div class="ip-phone input-group">
                            <input class="form-control input-text" placeholder="Số Điện Thoại" name="phone-ct"
                                   type="text" value="">
                            <div class="invalid-feedback">
                                Please choose a Email.
                            </div>
                        </div>
                        <div class="ip-contentMail input-group">
                    <textarea class="form-control input-area" placeholder="Viết Nội Dung" name="contentMail" cols="30"
                              rows="5"></textarea>
                            <div class="invalid-feedback">
                                Please choose a Email.
                            </div>
                        </div>
                        <div class="button-group">
                            <button id="btnSendMail" type="button" class="btn btn-contact">Gửi Liên Hệ<i
                                        class="fa fa-spinner fa-spin fa-3x fa-fw loadingSending" style="
    font-size: 15px;display: none"></i><i
                                        class="fa fa-check-circle successSending" style="display: none"
                                        aria-hidden="true"></i></button>
                            <span style="display: none">Chúng tôi đã nhận được mail và sẽ phản hồi quý khách trong 24h. Xin cảm ơn.</span>
                        </div>

                    </div>
                </div>
                <div class="col-md-4">
                    <div class="contact_top">
                        <h3 class="title">Địa chỉ liên hệ</h3>
                        <hr>
                        <h4 class="title">HẢI MỘC WEDDING </h4>
                        <ul>
                            <li><i class="far fa-building"></i>Địa Chỉ:</li>
                            <li><i class="fas fa-phone"></i>Điện Thoại: </li>
                            <li><i class="far fa-envelope"></i></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12">

            <iframe width="100%" height="450" frameborder="0" style="border:0"
                    src="https://www.google.com/maps/embed/v1/place?q=157%20Nguy%E1%BB%85n%20Th%C6%B0%E1%BB%A3ng%20Hi%E1%BB%81n%2C%20P.6%20Qu%E1%BA%ADn%20B%C3%ACnh%20Th%E1%BA%A1nh%2C%20TPHCM&key=AIzaSyCz9f8H5wjJIac5LrePbowoDN8Vp2FEEZ8" allowfullscreen></iframe>
        </div>
    </div>
</div>