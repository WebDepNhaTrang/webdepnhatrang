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
                    <span class="heading-meta">Blog</span>
                    <h2 class="colorlib-heading">Read Blog</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                    <div class="blog-entry">
                        <a href="blog.html" class="blog-img"><img src="images/blog-1.jpg" class="img-responsive" alt="HTML5 Bootstrap Template by colorlib.com"></a>
                        <div class="desc">
                            <span><small>April 14, 2018 </small> | <small> Web Design </small> | <small> <i class="icon-bubble3"></i> 4</small></span>
                            <h3><a href="blog.html">Renovating National Gallery</a></h3>
                            <p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                    <div class="blog-entry">
                        <a href="blog.html" class="blog-img"><img src="images/blog-2.jpg" class="img-responsive" alt="HTML5 Bootstrap Template by colorlib.com"></a>
                        <div class="desc">
                            <span><small>April 14, 2018 </small> | <small> Web Design </small> | <small> <i class="icon-bubble3"></i> 4</small></span>
                            <h3><a href="blog.html">Wordpress for a Beginner</a></h3>
                            <p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                    <div class="blog-entry">
                        <a href="blog.html" class="blog-img"><img src="images/blog-3.jpg" class="img-responsive" alt="HTML5 Bootstrap Template by colorlib.com"></a>
                        <div class="desc">
                            <span><small>April 14, 2018 </small> | <small> Inspiration </small> | <small> <i class="icon-bubble3"></i> 4</small></span>
                            <h3><a href="blog.html">Make website from scratch</a></h3>
                            <p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                    <div class="blog-entry">
                        <a href="blog.html" class="blog-img"><img src="images/blog-4.jpg" class="img-responsive" alt="HTML5 Bootstrap Template by colorlib.com"></a>
                        <div class="desc">
                            <span><small>April 14, 2018 </small> | <small> Web Design </small> | <small> <i class="icon-bubble3"></i> 4</small></span>
                            <h3><a href="blog.html">Renovating National Gallery</a></h3>
                            <p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                    <div class="blog-entry">
                        <a href="blog.html" class="blog-img"><img src="images/blog-5.jpg" class="img-responsive" alt="HTML5 Bootstrap Template by colorlib.com"></a>
                        <div class="desc">
                            <span><small>April 14, 2018 </small> | <small> Web Design </small> | <small> <i class="icon-bubble3"></i> 4</small></span>
                            <h3><a href="blog.html">Wordpress for a Beginner</a></h3>
                            <p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                    <div class="blog-entry">
                        <a href="blog.html" class="blog-img"><img src="images/blog-6.jpg" class="img-responsive" alt="HTML5 Bootstrap Template by colorlib.com"></a>
                        <div class="desc">
                            <span><small>April 14, 2018 </small> | <small> Inspiration </small> | <small> <i class="icon-bubble3"></i> 4</small></span>
                            <h3><a href="blog.html">Make website from scratch</a></h3>
                            <p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                        </div>
                    </div>
                </div>
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
        </div>
    </div>

    @include('frontend.sections.get-in-touch')
</div>
@endsection