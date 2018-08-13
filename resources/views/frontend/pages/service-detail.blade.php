@extends('frontend.layouts.master')

@section('title', $service->title)
@section('description', '')

@section('fb_url', route('frontend.pages.service-detail', ['slug' => $service->slug, 'id' => $service->id]))
@section('fb_type', 'website')
@section('fb_title', $service->title)
@section('fb_des', '')
@section('fb_img', Voyager::image($service->image))

@section('content')
    <div id="colorlib-main">
        <div class="colorlib-blog" style="padding-top: 5em;">
            <div class="colorlib-narrow-content">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
                        <span class="heading-meta">Dịch Vụ</span>
                        <h2 class="colorlib-heading">{{ $service->title }}</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 col-sm-12 animate-box" data-animate-effect="fadeInLeft">
                        <div class="blog-entry">
                            {!! $service->body !!}
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