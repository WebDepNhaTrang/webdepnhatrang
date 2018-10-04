@extends('frontend.layouts.master')

@section('title', $news->title)
@section('description', $news->meta_description)
@section('meta_keywords', $news->meta_keywords)

@section('fb_url', route('frontend.pages.news-detail', ['slug' => $news->slug, 'id' => $news->id]))
@section('fb_type', 'website')
@section('fb_title', $news->title)
@section('fb_des', $news->meta_description)
@section('fb_img', Voyager::image($news->image))

@section('content')
    <div id="colorlib-main">
        <div class="colorlib-blog" style="padding-top: 5em;">
            <div class="colorlib-narrow-content">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
                        <span class="heading-meta">Tin Tức</span>
                        <h2 class="colorlib-heading">{{ $news->title }}</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 animate-box" data-animate-effect="fadeInLeft">
                        <span><i class="icon-time"></i> {{ $news->created_at->format('d-m-Y') }}</span>
                    </div>
                    <div class="col-md-12 col-sm-12 animate-box" data-animate-effect="fadeInLeft">
                        <div class="blog-entry">
                            {!! $news->body !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>

        @include('frontend.sections.get-it-touch')
    </div>
@endsection

@section('script')
    <!-- Insert script here -->
@endsection