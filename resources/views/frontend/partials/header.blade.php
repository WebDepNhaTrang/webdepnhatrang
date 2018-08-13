<a href="{{ route('frontend.pages.home') }}">
    <img class="img-responsive mb-50" src="{{ Voyager::image(setting('site.logo')) }}" alt="">
</a>
<nav id="colorlib-main-menu" role="navigation">
    {{ menu('frontend', 'frontend.partials.main-menu') }}
</nav>