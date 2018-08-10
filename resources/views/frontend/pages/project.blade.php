@extends('frontend.layouts.master')

@section('title', 'Chuyên Thiết Kế Website Đẹp Giá Rẻ Tại Nha Trang')
@section('description', '')

@section('fb_url', route('frontend.pages.project'))
@section('fb_type', 'website')
@section('fb_title', '')
@section('fb_des', '')
@section('fb_img', '')

@section('content')
<div id="colorlib-main">
    <div class="colorlib-work">
        <div class="colorlib-narrow-content">
            <div class="row">
                <div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
                    <span class="heading-meta">{{ setting('project.title') }}</span>
                    <h2 class="colorlib-heading">{{ setting('project.heading') }}</h2>
                </div>
            </div>
            @php
                $projects = getAllProjects('*', 'created_at', 'asc', 4);
            @endphp
            @if($projects->count() >0)
                <div class="row row-bottom-padded-md">
                    @foreach($projects as $v)
                    <div class="col-md-3 animate-box" data-animate-effect="fadeInLeft">
                        <div class="project" style="background-image: url({{ Voyager::image($v->image) }});">
                            <div class="desc">
                                <div class="con">
                                    <h3><a href="work.html">{{ $v->name }}</a></h3>
                                    <span>{{ $v->business }}</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
                <div class="row">
                    <div class="col-md-12 animate-box" data-animate-effect="fadeInLeft">
                        <ul class="pagination">
                            <li class="disabled"><a href="#">&laquo;</a></li>
                            <li class="active"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">&raquo;</a></li>
                        </ul>
                    </div>
                </div>
            @endif
        </div>
    </div>

    @include('frontend.sections.get-it-touch')
</div>
@endsection