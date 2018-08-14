@extends('frontend.layouts.master')

@section('title', 'Chuyên Thiết Kế Website Đẹp Giá Rẻ Tại Nha Trang')
@section('description', '')

@section('fb_url', route('frontend.pages.project'))
@section('fb_type', 'website')
@section('fb_title', 'Chuyên Thiết Kế Website Đẹp Giá Rẻ Tại Nha Trang')
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
                $projects = getAllProjects('*', 'created_at', 'asc', setting('project.paginate'));
            @endphp
            @if($projects->count() >0)
                <div class="row row-bottom-padded-md">
                    @foreach($projects as $v)
                    <div class="col-md-3 animate-box" data-animate-effect="fadeInLeft">
                        <div class="project" style="background-image: url({{ Voyager::image($v->image) }});">
                            <div class="desc">
                                <div class="con">
                                    <h3><a href="{{ $v->external_link }}" target="_blank">{{ $v->name }}</a></h3>
                                    <span>{{ $v->business }}</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            @endif
            <div class="row">
                <div class="col-md-12 animate-box" data-animate-effect="fadeInLeft">
                    {{ $projects->links() }}
                </div>    
            </div>
        </div>
    </div>

    @include('frontend.sections.get-it-touch')
</div>
@endsection