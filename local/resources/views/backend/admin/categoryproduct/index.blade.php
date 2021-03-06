@extends('backend.admin.master')
@section('title-page')
    Quản Lý Chuyên Mục Sản Phẩm
@stop
@section('styles')
@stop
@section('scripts')
@stop
@section('container')
    <div class="col-lg-12 margin-tb">
        <div class="row">
            <div class="col-md-8">
                {{--<h2>Quản Lý Chuyên Mục Sản Phẩm</h2>--}}
            </div>
            <div class="col-md-4 text-right">
                @permission(('page-create'))
                <a class="btn btn-success" href="{{ route('categoryproduct.create') }}"> Tạo Mới</a>
                @endpermission
            </div>
        </div>
    </div>
    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif
    {!! Form::open(array('route' => 'categoryproduct.search','method'=>'POST','id'=>'formSearchCategory')) !!}
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-6">
                {!! Form::text('txtSearch',null, array('class' => 'form-control','id'=>'txtSearch')) !!}
            </div>
            <div class="col-md-6">
                {!! Form::submit('Tìm Kiếm', ['class' => 'btn btn-info']) !!}
            </div>

        </div>
    </div>
    {!! Form::close() !!}
    @if(!empty($keywords))
        <div id="showKeySearch" class="col-md-12">
            <div class="wrap-search">
                <i class="fa fa-caret-right" aria-hidden="true"></i>{{$keywords}} <a
                        href="{{ route('categoryproduct.search') }}">X</a>
            </div>
        </div>
        {{ Form::hidden('hdKeyword', $keywords) }}
    @endif
    <div id="ulti-bar" class="col-md-12">
        <div class="row">
            <div class="ulti-edit" class="col-md-2">
                <ul class="ulti-head">
                    <li><a href="">Chỉnh Sửa</a>
                        <ul class="ulti-head-dropdown">
                            <li><a class="ulti-copy" href="#">Sao Chép</a></li>
                            {!! Form::open(array('route' => 'categoryproduct.paste','method'=>'POST','id'=>'formPaste')) !!}
                            {{ Form::hidden('listID') }}
                            <li><a class="ulti-paste" href="#">Dán</a></li>
                            {!! Form::close() !!}
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <table class="table table-bordered">
        <tr>
            <th>TT</th>
            <th></th>
            <th>ID</th>
            <th>Tên Chuyên Mục</th>
            <th>Ngày Đăng</th>
            <th>Ngày Cập Nhật</th>
            <th width="280px">Action</th>
        </tr>
        @foreach ($categoryposts as $key => $data)
            <td>{{ ++$i }}</td>
            <td>{{Form::checkbox('id[]',$data->id)}}</td>
            <td>{{ $data->id }}</td>
            <td>{{ $data->name }}</td>
            <td>{{ $data->created_at }}</td>
            <td>{{ $data->updated_at }}</td>
            <td>
                @permission(('page-edit'))
                <a class="btn btn-primary" href="{{ route('categoryproduct.edit',$data->id) }}">Cập Nhật</a>
                @endpermission
                @permission(('page-delete'))
                {!! Form::open(['method' => 'DELETE','route' => ['categoryproduct.destroy', $data->id],'style'=>'display:inline']) !!}
                {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                {!! Form::close() !!}
                @endpermission
            </td>
            </tr>
        @endforeach
    </table>
    {{--{!! $pages->links() !!}--}}
@stop