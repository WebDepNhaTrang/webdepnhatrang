@extends('frontend.layouts.master')

@section('title', 'Chuyên Thiết Kế Website Đẹp Giá Rẻ Tại Nha Trang')
@section('description', '')

@section('fb_url', route('frontend.pages.about'))
@section('fb_type', 'website')
@section('fb_title', '')
@section('fb_des', '')
@section('fb_img', '')

@section('content')
<div id="colorlib-main">
    <div class="colorlib-about">
        <div class="colorlib-narrow-content">
            <div class="row row-bottom-padded-md">
                <div class="col-md-6">
                    <div class="about-img animate-box" data-animate-effect="fadeInLeft" style="background-image: url({{ Voyager::image(setting('about.st1_image')) }});">
                    </div>
                </div>
                <div class="col-md-6 animate-box" data-animate-effect="fadeInLeft">
                    <div class="about-desc">
                        <span class="heading-meta">{{ setting('about.st1-title') }}</span>
                        <h2 class="colorlib-heading">{{ setting('about.st1-heading') }}</h2>
                        <div>{!! setting('about.st1_body') !!}</div>
                    </div>
                    <div class="row padding">
                        <div class="col-md-4 no-gutters animate-box" data-animate-effect="fadeInLeft">
                            <a href="#" class="steps active">
                                <p class="icon"><span><i class="icon-check"></i></span></p>
                                <h3>Thiết Kế <br>Web</h3>
                            </a>
                        </div>
                        <div class="col-md-4 no-gutters animate-box" data-animate-effect="fadeInLeft">
                            <a href="#" class="steps">
                                <p class="icon"><span><i class="icon-check"></i></span></p>
                                <h3>Dịch Vụ <br>Hosting</h3>
                            </a>
                        </div>
                        <div class="col-md-4 no-gutters animate-box" data-animate-effect="fadeInLeft">
                            <a href="#" class="steps">
                                <p class="icon"><span><i class="icon-check"></i></span></p>
                                <h3>Quản trị <br>Web</h3>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 animate-box" data-animate-effect="fadeInLeft">
                    <h2 class="colorlib-heading">{{ setting('about.st2_heading') }}</h2>
                    {!! setting('about.st2_body') !!}
                </div>
                <div class="col-md-8 animate-box" data-animate-effect="fadeInRight">
                    <div class="fancy-collapse-panel">
                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingOne">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">{{ setting('about.accordion1_title') }}
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                {!! setting('about.accordion1_body') !!}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingTwo">
                                    <h4 class="panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">{{ setting('about.accordion2_title') }}
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                {!! setting('about.accordion2_body') !!}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingThree">
                                    <h4 class="panel-title">
                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">{{ setting('about.accordion3_title') }}
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                {!! setting('about.accordion1_body') !!}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    @include('frontend.sections.counter')

    @include('frontend.sections.get-in-touch')
</div>
@endsection