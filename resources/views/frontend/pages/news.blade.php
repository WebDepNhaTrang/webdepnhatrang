@extends('frontend.layouts.master')

@section('title', 'Chuyên Thiết Kế Website Đẹp Giá Rẻ Tại Nha Trang')
@section('description', '')

@section('fb_url', route('frontend.pages.news'))
@section('fb_type', 'website')
@section('fb_title', '')
@section('fb_des', '')
@section('fb_img', '')

@section('content')
<div id="colorlib-main">
    <div class="colorlib-blog">
        <div class="colorlib-narrow-content">
            <div class="row">
                <div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
                    <span class="heading-meta">{{ setting('news.title') }}</span>
                    <h2 class="colorlib-heading">{{ setting('news.heading') }}</h2>
                </div>
            </div>
            <?php
                $news = getPostByCategory('*', 1, 'created_at', 'desc', setting('news.paginate'));
            ?>
            @if($news->count() > 0)
                @php $num = 1; @endphp
                @foreach($news as $v)
                    @php
                        if($num == 4){
                            $num = 1;
                        }
                    @endphp
                    @if($num == 1)
                    <div class="row">
                    @endif
                        <div class="col-md-4 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                            <div class="blog-entry">
                                <a href="{{ route('frontend.pages.news-detail', ['slug' => $v->slug, 'id' => $v->id]) }}" class="blog-img"><img src="{{ Voyager::image($v->image) }}" class="img-responsive" alt="{{ $v->title }}"></a>
                                <div class="desc">
                                    <span><small>{{ $v->created_at->format('d-m-Y') }} </small> | <small> Admin </small> | <small> <i class="icon-bubble3"></i> 4</small></span>
                                    <h3><a href="{{ route('frontend.pages.news-detail', ['slug' => $v->slug, 'id' => $v->id]) }}">{{ $v->title }}</a></h3>
                                    <p class="excerpt">{{ shorten_text($v->excerpt, 220, '...', true) }}</p>
                                </div>
                            </div>
                        </div>
                    @if($num == 3)    
                    </div>
                    @endif
                    @php $num++ @endphp
                @endforeach
            @endif
            <div class="row">
                <div class="col-md-12 animate-box" data-animate-effect="fadeInLeft">
                    {{ $news->links() }}
                </div>    
            </div>
        </div>
    </div>

    @include('frontend.sections.get-it-touch')
</div>
@endsection