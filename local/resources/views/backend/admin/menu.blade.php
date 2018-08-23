<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
    {{--<li class="header">HEADER</li>--}}
    <li class="nav-item"><a class="nav-link {{ set_active('sml_admin/dashboard') }}" href="{{ route('dashboard') }}"><i class="fa fa-link"></i>
            <p>Dashboard</p></a>
    @if(Auth::user()->hasRole('admin')||Auth::user()->can('user-list'))
        <li class="nav-item"><a class="nav-link {{ set_active('sml_admin/users') }}" href="{{ route('users.index') }}"><i class="fa fa-link"></i> <p>Người Dùng</p></a>
        </li>
    @endif
    @if(Auth::user()->can('role-list'))
        <li  class="nav-item"><a class="nav-link {{ set_active('sml_admin/roles')}}" href="{{ route('roles.index') }}"><i class="fa fa-link"></i> <p>Quyền</p></a></li>
        @endif
        </li>
        <li  class="nav-item"><a class="nav-link {{ set_active('sml_admin/danh-muc-bai-viet') }}" href="{{ route('categorypost.index') }}"><i class="fa fa-link"></i> <p>Chuyên Mục Bài Viết</p></a>
        </li>
        <li  class="nav-item"><a class="nav-link {{ set_active('sml_admin/page') }}" href="{{ route('page.index') }}"><i class="fa fa-link"></i> <p>Trang</p></a>
        </li>
        <li  class="nav-item"><a class="nav-link {{ set_active('sml_admin/post') }}" href="{{ route('post.index') }}"><i class="fa fa-link"></i> <p>Bài Viết</p></a>
        </li>
            <li  class="nav-item"><a class="nav-link {{ set_active('sml_admin/dia-diem') }}" href="{{ route('location.index') }}"><i class="fa fa-link"></i> <p>Địa Điểm</p></a>
            </li>
        <li  class="nav-item"><a class="nav-link {{ set_active('sml_admin/danh-muc-san-pham') }}" href="{{ route('categoryproduct.index') }}"><i class="fa fa-link"></i>
                <p>Loại Album</p></a>
        </li>
        <li  class="nav-item"><a class="nav-link {{ set_active('sml_admin/san-pham') }}" href="{{ route('product.index') }}"><i class="fa fa-link"></i> <p>Album</p></a>
        </li>
        {{--<li  class="nav-item"><a class="nav-link" href="{{ route('config.index') }}"><i class="fa fa-link"></i> <p>Cấu Hình</p></a>--}}
        {{--</li>--}}
        <li class="nav-item has-treeview menu-open">
            <a href="#" class="nav-link">
                <i class="fa fa-link"></i>
                    Cấu hình
                    <i class="right fa fa-angle-left"></i>
            </a>
            <ul class="nav nav-treeview">
                <li class="nav-item">
                    <a href="{{ route('config.general.index') }}" class="nav-link {{ set_active('sml_admin/config/general') }}">
                        {{--<i class="fa fa-link"></i>--}}
                        <p>Cấu Hình Chung</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('config.email.index') }}" class="nav-link {{ set_active('sml_admin/config/email') }}">
                        {{--<i class="fa fa-link"></i>--}}
                        <p>Cấu Hình Email</p>
                    </a>
                </li>
            </ul>
        </li>

        {{--<li><a href="{{ route('tuyendung.index') }}"><i class="fa fa-link"></i> <span>Tuyển Dụng</span></a>--}}
        {{--</li>--}}
        {{--<li><a href="{{ route('menu.index') }}"><i class="fa fa-link"></i> <span>Quản Lý Menu</span></a>--}}
        {{--</li>--}}
        {{--<li class="treeview">--}}
        {{--<a href="#"><i class="fa fa-link"></i><span>Cấu Hình</span>--}}
        {{--<span class="pull-right-container">--}}
        {{--<i class="fa fa-angle-left pull-right"></i>--}}
        {{--</span>--}}
        {{--</a>--}}
        {{--<ul class="treeview-menu">--}}
        {{--<li><a href="#">Cấu Hình Chung</a></li>--}}
        {{--<li><a href="{{ route('config.email.index') }}">Email</a></li>--}}
        {{--<li><a href="{{ route('config.slider.index') }}"><i class="fa fa-link"></i>--}}
        {{--<span>Quản Lý Slider</span></a>--}}
        {{--</li>--}}
        {{--</ul>--}}
        {{--</li>--}}
</ul>