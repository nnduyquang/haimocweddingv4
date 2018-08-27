<div class="modal fade" data-id="0" id="pl_modal_register" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" style="text-align: center;width: 100%;color: #007bff" id="exampleModalLabel">ĐĂNG KÝ GÓI CHỤP ẢNH CƯỚI</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                {!! Form::select('register_type', array(
                '1' => 'Gói phim trường(basic)',
                '2' => 'Gói phim trường (vip)',
                '3' => 'Gói Đà Nẵng (basic)',
                '4' => 'Gói Đà Nẵng (vip)',
                '5' => 'Gói Đà Nẵng - Hội An (basic)',
                '6' => 'Gói Đà Nẵng - Hội An (vip)',
                '7' => 'Gói Đà Nẵng - Bà Nà (basic)',
                '8' => 'Gói Đà Nẵng - Bà Nà (vip)',
                '9' => 'Gói Đà Nẵng - Bà Nà - Hội An (basic)',
                '10' => 'Gói Đà Nẵng - Bà Nà - Hội An (vip)',
                '11' => 'Gói Đà Nẵng - Đồi Chè (basic)',
                '12' => 'Gói Đà Nẵng - Đồi Chè (vip)',
                '13' => 'Gói Đà Nẵng - Đèo Hải Vân - Lăng Cô (basic)',
                '14' => 'Gói Đà Nẵng - Đèo Hải Vân - Lăng Cô (vip)',
                '15' => 'Gói 4 Địa Điểm (Đà Nẵng, Hội An, Đồi Chè, Bà Nà, Lăng Cô) (basic)',
                '16' => 'Gói 4 Địa Điểm (Đà Nẵng, Hội An, Đồi Chè, Bà Nà, Lăng Cô) (vip)',
                '17' => 'Đảo Lý Sơn',
                '18' => 'Quy Nhơn',
                '19' => 'Đà Lạt',
                '20' => 'Nha Trang',
                )); !!}
                <div class="ip-name input-group">
                    {!! Form::text('register_name', null, array('placeholder' => 'Tên Quý Khách','class' => 'form-control input-text')) !!}
                    <div class="invalid-feedback" style="font-size: 15px;font-weight:  bold;">
                    </div>
                </div>
                <div class="ip-email input-group">
                    {!! Form::text('register_email', null, array('placeholder' => 'Email','class' => 'form-control input-text')) !!}
                    <div class="invalid-feedback" style="font-size: 15px;font-weight:  bold;">
                    </div>
                </div>
                <div class="ip-phone input-phone">
                    {!! Form::text('register_phone', null, array('placeholder' => 'Số điện thoại','class' => 'form-control input-text')) !!}
                    <div class="invalid-feedback" style="font-size: 15px;font-weight:  bold;">
                    </div>
                </div>
                {!! Form::textarea('register_note',null, array('placeholder' => 'Thông tin thêm','id'=>'emp-note','class' => 'form-control','rows'=>'5','style'=>'resize:none')) !!}
            </div>
            <div class="modal-footer">
                <button type="button" id="btnRegister" class="btn btn-primary">Đăng Ký<i
                            class="fa fa-spinner fa-spin fa-3x fa-fw loadingSending" style="
    font-size: 15px;display: none"></i><i
                            class="fa fa-check-circle successSending" aria-hidden="true"
                            style="display: none"></i></button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>

            </div>
            <span class="txt-success" style="display: none;color:  green;font-weight:  bold;padding: 0 20px;font-size: 18px">Chúng tôi đã nhận được yêu cầu và sẽ phản hồi quý khách trong 24h. Xin cảm ơn.</span>

        </div>
    </div>
</div>