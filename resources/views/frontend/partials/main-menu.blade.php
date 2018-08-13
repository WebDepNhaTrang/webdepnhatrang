<ul>
    @foreach($items as $menu_item)
        <li class="{{ Route::currentRouteName() == $menu_item->route ? 'colorlib-active' : '' }}"><a href="{{ $menu_item->link() }}">{{ $menu_item->title }}</a></li>
    @endforeach
</ul>