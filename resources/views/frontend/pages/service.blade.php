@extends('frontend.layouts.master')

@section('title', 'Dịch Vụ Thiết Kế Website Đẹp Giá Rẻ Tại Nha Trang')
@section('description', '')

@section('fb_url', route('frontend.pages.service'))
@section('fb_type', 'website')
@section('fb_title', '')
@section('fb_des', '')
@section('fb_img', '')

@section('content')
<div id="colorlib-main">
    <div class="colorlib-services">
        <div class="colorlib-narrow-content">
            <div class="row">
                <div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
                    <span class="heading-meta">{{ setting('service.title') }}</span>
                    <h2 class="colorlib-heading">{{ setting('service.heading') }}</h2>
                </div>
            </div>
            <div class="row row-bottom-padded-md">
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="colorlib-feature animate-box" data-animate-effect="fadeInLeft">
                                <div class="colorlib-icon">
                                    <i class="flaticon-website"></i>
                                </div>
                                <div class="colorlib-text">
                                    <h3>{{ setting('service.item1_title') }}</h3>
                                    {!! setting('service.item1_body') !!}
                                </div>
                            </div>

                            <div class="colorlib-feature animate-box" data-animate-effect="fadeInLeft">
                                <div class="colorlib-icon">
                                    <i class="flaticon-data-storage"></i>
                                </div>
                                <div class="colorlib-text">
                                    <h3>{{ setting('service.item2_title') }}</h3>
                                    {!! setting('service.item2_body') !!}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="colorlib-feature animate-box" data-animate-effect="fadeInLeft">
                                <div class="colorlib-icon">
                                    <i class="flaticon-income"></i>
                                </div>
                                <div class="colorlib-text">
                                    <h3>{{ setting('service.item3_title') }}</h3>
                                    {!! setting('service.item3_body') !!}
                                </div>
                            </div>

                            <div class="colorlib-feature animate-box" data-animate-effect="fadeInLeft">
                                <div class="colorlib-icon">
                                    <i class="flaticon-best"></i>
                                </div>
                                <div class="colorlib-text">
                                    <h3>{{ setting('service.item4_title') }}</h3>
                                    {!! setting('service.item4_body') !!}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <a href="services.html" class="services-wrap animate-box" data-animate-effect="fadeInRight">
                        <div class="services-img" style="background-image: url(images/services-1.jpg)"></div>
                        <div class="desc">
                            <h3>Design &amp; Build</h3>
                        </div>
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="services.html" class="services-wrap animate-box" data-animate-effect="fadeInRight">
                        <div class="services-img" style="background-image: url(images/services-2.jpg)"></div>
                        <div class="desc">
                            <h3>House Remodeling</h3>
                        </div>
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="services.html" class="services-wrap animate-box" data-animate-effect="fadeInRight">
                        <div class="services-img" style="background-image: url(images/services-3.jpg)"></div>
                        <div class="desc">
                            <h3>Construction Management</h3>
                        </div>
                    </a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <a href="services.html" class="services-wrap animate-box" data-animate-effect="fadeInRight">
                        <div class="services-img" style="background-image: url(images/services-4.jpg)"></div>
                        <div class="desc">
                            <h3>Painting &amp; Tiling</h3>
                        </div>
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="services.html" class="services-wrap animate-box" data-animate-effect="fadeInRight">
                        <div class="services-img" style="background-image: url(images/services-5.jpg)"></div>
                        <div class="desc">
                            <h3>Kitchen Remodeling</h3>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>

    @include('frontend.partials.get-in-touch')
</div>
@endsection