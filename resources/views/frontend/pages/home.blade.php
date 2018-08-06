@extends('frontend.layouts.master')

@section('title', 'Chuyên Thiết Kế Website Đẹp Giá Rẻ Tại Nha Trang')
@section('description', '')

@section('fb_url', route('frontend.pages.home'))
@section('fb_type', 'website')
@section('fb_title', '')
@section('fb_des', '')
@section('fb_img', '')

@section('content')
	<div id="colorlib-main">
		<?php
			$banners = getAllBanners('*', 'order', 'asc');
		?>
		@if($banners->count() > 0)
		<aside id="colorlib-hero" class="js-fullheight">
			<div class="flexslider js-fullheight">
				<ul class="slides">
					@foreach($banners as $v)
					<li style="background-image: url({{ Voyager::image($v->image) }});">
						<div class="overlay"></div>
						<div class="container-fluid">
							<div class="row">
								<div class="col-md-6 col-md-offset-3 col-md-push-3 col-sm-12 col-xs-12 js-fullheight slider-text">
									<div class="slider-text-inner">
										<div class="desc">
											<h1>{{ $v->title }}</h1>
											<h2>{{ $v->content }}</h2>
												<p><a href="{{ $v->link_btn }}" class="btn btn-primary btn-learn">{{ $v->text_btn }} <i class="icon-arrow-right3"></i></a></p>
											</div>
									</div>
								</div>
							</div>
						</div>
					</li>
					@endforeach
				</ul>
			</div>
		</aside>
		@endif

		<div class="colorlib-about">
			<div class="colorlib-narrow-content">
				<div class="row">
					<div class="col-md-6">
						<div class="about-img animate-box" data-animate-effect="fadeInLeft" style="background-image: url(images/img_bg_2.jpg);">
						</div>
					</div>
					<div class="col-md-6 animate-box" data-animate-effect="fadeInLeft">
						<div class="about-desc">
							<span class="heading-meta">Giới Thiệu</span>
							<h2 class="colorlib-heading">WEBDEPNHATRANG.COM</h2>
							<p>Web Đẹp Nha Trang - Là một nhóm thiết kế Website chuyên nghiệp, chúng tôi luôn đảm bảo chất lượng sản phẩm cao nhất cho khách hàng với uy tín và kỹ thuật được tích lũy trong hơn 5 năm. Chúng tôi tự tin sẽ giúp quý khách đạt được hiệu quả cao nhất trong việc quảng bá thương hiệu của công ty.</p>
                        <p>Thiết kế web đẹp - chuyên nghiệp - hiện đại - nhanh chóng, đó là điều chúng tôi có thể giúp quý khách thực hiện, bởi đó là lĩnh vực của chúng tôi với kinh nghiệm hơn 5 năm đủ để hiểu quý khách cần gì !</p>
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
			</div>
		</div>
		
		<div class="colorlib-services">
			<div class="colorlib-narrow-content">
				<div class="row">
					<div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
						<span class="heading-meta">Dịch Vụ</span>
						<h2 class="colorlib-heading">Các Dịch Vụ Của Web Đẹp Nha Trang</h2>
					</div>
				</div>
				<div class="row">
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
					<div class="col-md-6">
						<div class="row">
							<div class="col-md-6">
								<a href="services.html" class="services-wrap animate-box" data-animate-effect="fadeInRight">
									<div class="services-img" style="background-image: url(images/services-1.jpg)"></div>
									<div class="desc">
										<h3>Thiết Kế Trang Web</h3>
									</div>
								</a>
								<a href="services.html" class="services-wrap animate-box" data-animate-effect="fadeInRight">
									<div class="services-img" style="background-image: url(images/services-2.jpg)"></div>
									<div class="desc">
										<h3>Dịch Vụ Hosting</h3>
									</div>
								</a>
								<a href="services.html" class="services-wrap animate-box" data-animate-effect="fadeInRight">
									<div class="services-img" style="background-image: url(images/services-3.jpg)"></div>
									<div class="desc">
										<h3>Quảng Cáo Trực Tuyến</h3>
									</div>
								</a>
							</div>
							<div class="col-md-6 move-bottom">
								<a href="services.html" class="services-wrap animate-box" data-animate-effect="fadeInRight">
									<div class="services-img" style="background-image: url(images/services-4.jpg)"></div>
									<div class="desc">
										<h3>Quản Trị Trang Web</h3>
									</div>
								</a>
								<a href="services.html" class="services-wrap animate-box" data-animate-effect="fadeInRight">
									<div class="services-img" style="background-image: url(images/services-5.jpg)"></div>
									<div class="desc">
										<h3>Đẩy Từ Khóa</h3>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div id="colorlib-counter" class="colorlib-counters" style="background-image: url(images/cover_bg_1.jpg);" data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="colorlib-narrow-content">
				<div class="row">
				</div>
				<div class="row">
					<div class="col-md-3 text-center animate-box">
						<span class="icon"><i class="flaticon-skyline"></i></span>
						<span class="colorlib-counter js-counter" data-from="0" data-to="1539" data-speed="5000" data-refresh-interval="50"></span>
						<span class="colorlib-counter-label">Projects</span>
					</div>
					<div class="col-md-3 text-center animate-box">
						<span class="icon"><i class="flaticon-engineer"></i></span>
						<span class="colorlib-counter js-counter" data-from="0" data-to="3653" data-speed="5000" data-refresh-interval="50"></span>
						<span class="colorlib-counter-label">Employees</span>
					</div>
					<div class="col-md-3 text-center animate-box">
						<span class="icon"><i class="flaticon-architect-with-helmet"></i></span>
						<span class="colorlib-counter js-counter" data-from="0" data-to="5987" data-speed="5000" data-refresh-interval="50"></span>
						<span class="colorlib-counter-label">Constructor</span>
					</div>
					<div class="col-md-3 text-center animate-box">
						<span class="icon"><i class="flaticon-worker"></i></span>
						<span class="colorlib-counter js-counter" data-from="0" data-to="3999" data-speed="5000" data-refresh-interval="50"></span>
						<span class="colorlib-counter-label">Partners</span>
					</div>
				</div>
			</div>
		</div>

		<div class="colorlib-work">
			<div class="colorlib-narrow-content">
				<div class="row">
					<div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
						<span class="heading-meta">My Work</span>
						<h2 class="colorlib-heading animate-box">Recent Work</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 animate-box" data-animate-effect="fadeInLeft">
						<div class="project" style="background-image: url(images/img-1.jpg);">
							<div class="desc">
								<div class="con">
									<h3><a href="work.html">Work 01</a></h3>
									<span>Building</span>
									<p class="icon">
										<span><a href="#"><i class="icon-share3"></i></a></span>
										<span><a href="#"><i class="icon-eye"></i> 100</a></span>
										<span><a href="#"><i class="icon-heart"></i> 49</a></span>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 animate-box" data-animate-effect="fadeInLeft">
						<div class="project" style="background-image: url(images/img-2.jpg);">
							<div class="desc">
								<div class="con">
									<h3><a href="work.html">Work 02</a></h3>
									<span>House, Apartment</span>
									<p class="icon">
										<span><a href="#"><i class="icon-share3"></i></a></span>
										<span><a href="#"><i class="icon-eye"></i> 100</a></span>
										<span><a href="#"><i class="icon-heart"></i> 49</a></span>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 animate-box" data-animate-effect="fadeInLeft">
						<div class="project" style="background-image: url(images/img-3.jpg);">
							<div class="desc">
								<div class="con">
									<h3><a href="work.html">Work 03</a></h3>
									<span>Dining Room</span>
									<p class="icon">
										<span><a href="#"><i class="icon-share3"></i></a></span>
										<span><a href="#"><i class="icon-eye"></i> 100</a></span>
										<span><a href="#"><i class="icon-heart"></i> 49</a></span>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 animate-box" data-animate-effect="fadeInLeft">
						<div class="project" style="background-image: url(images/img-4.jpg);">
							<div class="desc">
								<div class="con">
									<h3><a href="work.html">Work 04</a></h3>
									<span>House, Building</span>
									<p class="icon">
										<span><a href="#"><i class="icon-share3"></i></a></span>
										<span><a href="#"><i class="icon-eye"></i> 100</a></span>
										<span><a href="#"><i class="icon-heart"></i> 49</a></span>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 animate-box" data-animate-effect="fadeInLeft">
						<div class="project" style="background-image: url(images/img-5.jpg);">
							<div class="desc">
								<div class="con">
									<h3><a href="work.html">Work 05</a></h3>
									<span>Condo, Pad</span>
									<p class="icon">
										<span><a href="#"><i class="icon-share3"></i></a></span>
										<span><a href="#"><i class="icon-eye"></i> 100</a></span>
										<span><a href="#"><i class="icon-heart"></i> 49</a></span>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 animate-box" data-animate-effect="fadeInLeft">
						<div class="project" style="background-image: url(images/img-6.jpg);">
							<div class="desc">
								<div class="con">
									<h3><a href="work.html">Work 06</a></h3>
									<span>Table, Chairs</span>
									<p class="icon">
										<span><a href="#"><i class="icon-share3"></i></a></span>
										<span><a href="#"><i class="icon-eye"></i> 100</a></span>
										<span><a href="#"><i class="icon-heart"></i> 49</a></span>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="colorlib-blog">
			<div class="colorlib-narrow-content">
				<div class="row">
					<div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
						<span class="heading-meta">Read</span>
						<h2 class="colorlib-heading">Recent Blog</h2>
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
			</div>
		</div>

		@include('frontend.partials.get-in-touch')
	</div>
@endsection