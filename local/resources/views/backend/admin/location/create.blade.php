@extends('backend.admin.master')
@section('title-page')
    Tạo Mới Địa Điểm
@stop
@section('styles')
@stop
@section('scripts')
@stop
@section('container')
    <div class="col-lg-12">
        <div class="row">
            <div class="col-md-8">
            </div>
            <div class="col-md-4 text-right">
                <a class="btn btn-primary" href="{{ route('location.index') }}"> Back</a>
            </div>
        </div>
    </div>
    @if (count($errors) > 0)
        <div class="alert alert-danger">
            <strong>Úi!</strong> Hình Như Có Gì Đó Sai Sai.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    {!! Form::open(array('route' => 'location.store','method'=>'POST')) !!}
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <strong>Tên Địa Điểm:</strong>
                    {!! Form::text('title',null, array('placeholder' => 'Tên','class' => 'form-control')) !!}
                </div>
                {{--<div class="form-group">--}}
                    {{--<strong>Mô Tả Ngắn:</strong>--}}
                    {{--{!! Form::textarea('description',null,array('placeholder' => '','id'=>'description-post','class' => 'form-control','rows'=>'10','style'=>'resize:none')) !!}--}}
                {{--</div>--}}
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <strong>Hình Đại Diện: </strong>
                    {!! Form::text('image', null, array('class' => 'form-control','id'=>'pathImage')) !!}
                    <br>
                    {!! Form::button('Tìm', array('id' => 'btnBrowseImage','class'=>'btn btn-primary')) !!}
                </div>
                <div class="form-group">
                    {{ Html::image('','',array('id'=>'showHinh','class'=>'show-image'))}}
                </div>
            </div>
        </div>

        <hr>
        <div id="seo-part" class="col-md-12 p-0">
            <h3>SEO</h3>
            <div class="content">
                <div class="show-pattern">
                    <span class="title">Quick Brown Fox and The Lazy Dog - Demo Site</span>
                    <span class="link">example.com/the-quick-brown-fox</span>
                    <span class="description">The story of quick brown fox and the lazy dog. An all time classic children's fairy tale that is helping people with typography and web design.</span>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <strong>Từ khóa cần SEO</strong>
                        {!! Form::text('seo_keywords',null, array('placeholder' => 'keywords cách nhau dấu phẩy','class' => 'form-control')) !!}
                        <ul class="error-notice">
                        </ul>
                    </div>
                </div>
                <div class="col-md-12 form-group">
                    <strong>Tiêu Đề (title):</strong>
                    {!! Form::text('seo_title',null, array('placeholder' => 'Tên','class' => 'form-control')) !!}
                </div>
                <div class="col-md-12 form-group">
                    <strong>Mô Tả (description):</strong>
                    {!! Form::textarea('seo_description',null,array('placeholder' => '','id'=>'seo-description-post','class' => 'form-control','rows'=>'10','style'=>'resize:none')) !!}
                </div>
            </div>
        </div>
        {{--<div class="col-md-12 form-group">--}}
            {{--<strong>Kích Hoạt:</strong>--}}
            {{--<input name="post_is_active" data-on="Có" data-off="Không" type="checkbox" data-toggle="toggle">--}}
        {{--</div>--}}
        <div class="col-md-12" style="text-align:  center;">
            <button id="btnDanhMuc" type="submit" class="btn btn-primary">Tạo Mới Bài Viết</button>
        </div>

    </div>
    {!! Form::close() !!}
@stop