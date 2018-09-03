@extends('backend.admin.master')
@section('title-page')
    Cập Nhật Bài Viết
@stop
@section('styles')
@stop
@section('scripts')
@stop
@section('container')

    <div class="col-lg-12">
        <div class="row">
            <div class="col-md-8">
                {{--<h2>Cập Nhật Bài Viết</h2>--}}
            </div>
            <div class="col-md-4 text-right">
                <a class="btn btn-primary" href="{{ route('post.index') }}"> Back</a>
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
    {!! Form::model($data['post'],array('route' => ['post.update',$data['post']->id],'method'=>'PATCH')) !!}
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-6">

                <strong>Tên Bài Viết:</strong>
                {!! Form::text('title',null, array('placeholder' => 'Tên','class' => 'form-control')) !!}

                <div class="form-group">
                    <strong>Chuyên Mục</strong>
                    <select class="form-control" name="category_item_id">'
                        @foreach($data['dd_categorie_posts'] as $key=>$item) {
                        @if($item['index']==$data['post']->category_item_id)
                            <option value="{{$item['index']}}" selected>{{$item['value']}}</option>
                        @else
                            <option value="{{$item['index']}}">{{$item['value']}}</option>
                        @endif
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <strong>Mô Tả Ngắn:</strong>
                    {!! Form::textarea('description',null,array('placeholder' => '','id'=>'description-post','class' => 'form-control','rows'=>'10','style'=>'resize:none')) !!}
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <strong>Hình Đại Diện: </strong>
                    @if($data['post']->image!='')
                        {!! Form::text('image', url('/').'/'.$data['post']->image, array('class' => 'form-control','id'=>'pathImagePost')) !!}
                    @else
                        {!! Form::text('image', '', array('class' => 'form-control','id'=>'pathImagePost')) !!}
                    @endif
                    <br>
                    {!! Form::button('Tìm', array('id' => 'btnBrowseImagePost','class'=>'btn btn-primary')) !!}
                </div>
                <div class="form-group">
                    @if($data['post']->image!='')
                        {{ Html::image($data['post']->image,'',array('id'=>'showHinhPost','class'=>'show-image'))}}
                    @else
                        {{ Html::image('','',array('id'=>'showHinhPost','class'=>'show-image'))}}
                    @endif
                </div>
                <div class="form-group">
                    <strong>Đính kèm album?</strong>
                    <div class="list-album">
                        <table class="table table-bordered">
                            <tr>
                                <th></th>
                                <th>Tên Album</th>
                                <th>Hình đại diện</th>
                                <th>Địa điểm chụp</th>
                            </tr>
                            @php
                                $arrayID=$data['post']->products()->get();
                            @endphp
                            @foreach ($data['products'] as $key => $item)
                                <tr>
                                    @if(in_array($item->id,explode(',',$arrayID->implode('id',','))))
                                        <td>{{Form::checkbox('list_id[]',$item->id,true)}}</td>
                                    @else
                                        <td>{{Form::checkbox('list_id[]',$item->id,false)}}</td>
                                    @endif
                                    <td>{{$item->name}}</td>
                                    <td>{{Html::image($item->image,'',array('class'=>'product-img'))}}</td>
                                    @php
                                        $arrayLocationItem=$item->locations()->get();
                                    @endphp
                                    <td>{{$arrayLocationItem->implode('name',',')}}</td>
                                </tr>
                            @endforeach
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <strong>Nội Dung Bài Viết:</strong>
                {!! Form::textarea('content',null,array('placeholder' => '','id'=>'content-post','class' => 'form-control','rows'=>'10','style'=>'resize:none')) !!}

            </div>
            <hr>
            <div id="seo-part" class="col-md-12 p-0">
                <h3>SEO</h3>
                <div class="content">
                    <div class="show-pattern">
                        <span class="title">{{$data['post']->seos->seo_title}}</span>
                        <span class="link">{{URL::to('/')}}/{{$data['post']->path}}</span>
                        <span class="description">{{$data['post']->seos->seo_description}}</span>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <strong>Từ khóa cần SEO</strong>
                            {!! Form::text('seo_keywords',$data['post']->seos->seo_keywords, array('placeholder' => 'keywords cách nhau dấu phẩy','class' => 'form-control')) !!}
                            <ul class="error-notice">
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-12 form-group">
                        <strong>Tiêu Đề (title):</strong>
                        {!! Form::text('seo_title',$data['post']->seos->seo_title, array('placeholder' => 'Tên','class' => 'form-control')) !!}
                    </div>
                    <div class="col-md-12 form-group">
                        <strong>Mô Tả (description):</strong>
                        {!! Form::textarea('seo_description',$data['post']->seos->seo_description,array('placeholder' => '','id'=>'seo-description-post','class' => 'form-control','rows'=>'10','style'=>'resize:none')) !!}
                    </div>
                </div>
            </div>
            <div class="col-md-12 form-group">
                <strong>Kích Hoạt:</strong>
                <input type="checkbox" {{$data['post']->isActive==1?'checked':''}} value="false"  name="isActive" data-on="Có"
                       data-off="Không"
                       data-toggle="toggle">
            </div>
            <div class="col-md-12" style="text-align:  center;">
                <button id="btnDanhMuc" type="submit" class="btn btn-primary">Cập Nhật Bài Viết</button>
            </div>
        </div>
    </div>
    {!! Form::close() !!}
@stop