<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="${pageContext.request.contextPath}/resources/img/favicon.png" type="image/png">
	<title>호호하하하하</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/linericon/style.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/owl-carousel/owl.carousel.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/nice-select/css/nice-select.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/animate-css/animate.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/flaticon/flaticon.css">
	<!-- main css -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>

<body>

	<!--================Header Menu Area =================-->
	<header class="header_area">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand" href="index.html"><img src="${pageContext.request.contextPath}/resources/img/logo.png" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav justify-content-end">
							<li class="nav-item active"><a class="nav-link" href="index.html">Home</a></li>
							<li class="nav-item"><a class="nav-link" href="about-us.html">About</a></li>
							<li class="nav-item submenu dropdown">
								<a class="nav-link" href="#">Portfolio</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="portfolio.html">Portfolio</a></li>
									<li class="nav-item"><a class="nav-link" href="portfolio-details.html">Portrfolio Details</a>
								</ul>
							</li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Pages</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="elements.html">Elements</a>
								</ul>
							</li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Blog</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li>
									<li class="nav-item"><a class="nav-link" href="single-blog.html">Blog Details</a></li>
								</ul>
							</li>
							<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<!--================Header Menu Area =================-->

	<!--================Home Banner Area =================-->
	<section class="banner-area owl-carousel" id="home">
		<div class="single_slide_banner slide_bg1">
			<div class="container">
				<div class="row fullscreen d-flex align-items-center">
					<div class="banner-content col-lg-12 justify-content-center">
						<h1>NEXTUDY 좌석예약시스템</h1>
						<h3>NEXTUDY 좌석예약시스템</h3>
						<a href="#" class="primary-btn">눌러봐</a>
					</div>
				</div>
			</div>
		</div>
		<div class="single_slide_banner slide_bg2">
			<div class="container">
				<div class="row fullscreen d-flex align-items-center">
					<div class="banner-content col-lg-12 justify-content-center">
						<h1>Steve Henriques</h1>
						<h3>Personal portfolio Website</h3>
						<a href="#" class="primary-btn">Hire Me</a>
					</div>
				</div>
			</div>
		</div>
		<div class="single_slide_banner slide_bg3">
			<div class="container">
				<div class="row fullscreen justify-content-endd-flex align-items-center">
					<div class="banner-content col-lg-12 justify-content-center">
						<h1>Steve Henriques</h1>
						<h3>Personal portfolio Website</h3>
						<a href="#" class="primary-btn">Hire Me</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Home Banner Area =================-->

	<!--================ Start Portfolio Area =================-->
	<section class="section_gap portfolio_area" id="work">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6 text-center">
					<div class="main-title">
						<h1>Latest Works</h1>
						<p>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may
							see some for as low as $.17 each.</p>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-lg-10">
					<div class="projects_fillter">
						<ul class="filter list">
							<li class="active" data-filter="*">All Categories</li>
							<li data-filter=".brand">Branding</li>
							<li data-filter=".work">Creative Work </li>
							<li data-filter=".web">Web Design</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="projects_inner row grid">
				<div class="grid-sizer col-sm-6 col-md-3 col-lg-3"></div>
				<div class="col-lg-6 col-sm-6 col-sm-12 brand web grid-item">
					<div class="projects_item">
						<img class="img-fluid w-100" src="${pageContext.request.contextPath}/resources/img/works/work1.jpg" alt="">
						<div class="projects_text">
							<a href="portfolio-details.html">
								<h4>2D Vinyl Design</h4>
							</a>
							<p>Client Project</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 col-sm-12 brand work grid-item">
					<div class="projects_item">
						<img class="img-fluid w-100" src="${pageContext.request.contextPath}/resources/img/works/work2.jpg" alt="">
						<div class="projects_text">
							<a href="portfolio-details.html">
								<h4>2D Vinyl Design</h4>
							</a>
							<p>Client Project</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 work grid-item">
					<div class="projects_item">
						<img class="img-fluid w-100" src="${pageContext.request.contextPath}/resources/img/works/work3.jpg" alt="">
						<div class="projects_text">
							<a href="portfolio-details.html">
								<h4>2D Vinyl Design</h4>
							</a>
							<p>Client Project</p>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-sm-6 brand work grid-item">
					<div class="projects_item">
						<img class="img-fluid w-100" src="${pageContext.request.contextPath}/resources/img/works/work5.jpg" alt="">
						<div class="projects_text">
							<a href="portfolio-details.html">
								<h4>2D Vinyl Design</h4>
							</a>
							<p>Client Project</p>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-sm-6 brand web grid-item">
					<div class="projects_item">
						<img class="img-fluid w-100" src="${pageContext.request.contextPath}/resources/img/works/work4.jpg" alt="">
						<div class="projects_text">
							<a href="portfolio-details.html">
								<h4>2D Vinyl Design</h4>
							</a>
							<p>Client Project</p>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-sm-6 brand work web grid-item">
					<div class="projects_item">
						<img class="img-fluid w-100" src="${pageContext.request.contextPath}/resources/img/works/work8.jpg" alt="">
						<div class="projects_text">
							<a href="portfolio-details.html">
								<h4>2D Vinyl Design</h4>
							</a>
							<p>Client Project</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 brand work web grid-item">
					<div class="projects_item">
						<img class="img-fluid w-100" src="${pageContext.request.contextPath}/resources/img/works/work6.jpg" alt="">
						<div class="projects_text">
							<a href="portfolio-details.html">
								<h4>2D Vinyl Design</h4>
							</a>
							<p>Client Project</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 brand work web grid-item">
					<div class="projects_item">
						<img class="img-fluid w-100" src="${pageContext.request.contextPath}/resources/img/works/work7.jpg" alt="">
						<div class="projects_text">
							<a href="portfolio-details.html">
								<h4>2D Vinyl Design</h4>
							</a>
							<p>Client Project</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ End Portfolio Area =================-->

	<!--================ Start About Area =================-->
	<section class="about-area section_gap gray-bg">
		<div class="container">
			<div class="row align-items-center justify-content-between">
				<div class="col-lg-5 about-left">
					<img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/about-img.png" alt="">
				</div>
				<div class="col-lg-6 col-md-12 about-right">
					<div class="main-title text-left">
						<h1>about myselt</h1>
					</div>
					<div class="mb-50 wow fadeIn" data-wow-duration=".8s">
						<p>
							inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct standards
							especially in the
							workplace. That’s why it’s crucial that, as women, our behavior on the job is beyond reproach. inappropriate
							behavior
							is often laughed. inappropriate behavior is often laughed off as “boys will be boys,” women face higher.
						</p>
						<p>That’s why it’s crucial that, as women, our behavior on the job is beyond reproach. inappropriate behavior is
							often
							laughed.
						</p>
					</div>
					<a href="#" class="primary-btn">More Info</a>
				</div>
			</div>
		</div>
	</section>
	<!--================ End About Area =================-->

	<!--================ Start Testimonial Area =================-->
	<div class="section_gap testimonial_area">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-7 text-left">
					<div class="active_testimonial owl-carousel" data-slider-id="1">
						<!-- single testimonial -->
						<div class="single_testimonial">
							<div class="testimonial_head">
								<img src="${pageContext.request.contextPath}/resources/img/quote.png" alt="">
								<h4>Fanny Spencer</h4>
								<div class="review">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
								</div>
							</div>
							<div class="testimonial_content">
								<p>As conscious traveling Paup ers we must always be oncerned about our dear Mother Earth. If you think about
									it, you travel across her face</p>
							</div>
						</div>

						<div class="single_testimonial">
							<div class="testimonial_head">
								<img src="${pageContext.request.contextPath}/resources/img/quote.png" alt="">
								<h4>Fanny Spencer</h4>
								<div class="review">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
								</div>
							</div>
							<div class="testimonial_content">
								<p>As conscious traveling Paup ers we must always be oncerned about our dear Mother Earth. If you think about
									it, you travel across her face</p>
							</div>
						</div>

						<div class="single_testimonial">
							<div class="testimonial_head">
								<img src="${pageContext.request.contextPath}/resources/img/quote.png" alt="">
								<h4>Fanny Spencer</h4>
								<div class="review">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
								</div>
							</div>
							<div class="testimonial_content">
								<p>As conscious traveling Paup ers we must always be oncerned about our dear Mother Earth. If you think about
									it, you travel across her face</p>
							</div>
						</div>

						<div class="single_testimonial">
							<div class="testimonial_head">
								<img src="${pageContext.request.contextPath}/resources/img/quote.png" alt="">
								<h4>Fanny Spencer</h4>
								<div class="review">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
								</div>
							</div>
							<div class="testimonial_content">
								<p>As conscious traveling Paup ers we must always be oncerned about our dear Mother Earth. If you think about
									it, you travel across her face</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 offset-lg-1">
					<div class="testimonial_logos">
						<div class="top_logos">
							<img src="${pageContext.request.contextPath}/resources/img/brands/logo1.png" alt="">
							<img src="${pageContext.request.contextPath}/resources/img/brands/logo2.png" alt="">
						</div>
						<div class="mid_logo">
							<img src="${pageContext.request.contextPath}/resources/img/brands/logo3.png" alt="">
						</div>
						<div class="bottom_logos jus">
							<img src="${pageContext.request.contextPath}/resources/img/brands/logo4.png" alt="">
							<img src="${pageContext.request.contextPath}/resources/img/brands/logo5.png" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================ End Testimonial Area =================-->

	<!--================ Start Newsletter Area =================-->
	<section class="section_gap newsletter-area">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6 text-center">
					<div class="main-title">
						<h1>Join Our Newsletter</h1>
						<p>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may
							see some for as low as $.17 each.</p>
					</div>
				</div>
			</div>
			<div class="row newsletter_form justify-content-center">
				<div class="col-lg-6 col-md-6 col-sm-6">
					<div class="d-flex flex-row" id="mc_embed_signup">
						<form class="w-100" novalidate="true" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
						 method="get">
							<div class="navbar-form">
								<div class="input-group add-on">
									<input class="form-control" name="EMAIL" placeholder="Your email address" onfocus="this.placeholder = ''"
									 onblur="this.placeholder = 'Your email address'" required="" type="email">
									<div style="position: absolute; left: -5000px;">
										<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
									</div>
									<div class="input-group-btn">
										<button class="genric-btn text-uppercase">
											Subscribe
										</button>
									</div>
								</div>
							</div>
							<div class="info mt-20"></div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ End Newsletter Area =================-->

	<!--================ Start Footer Area =================-->
	<footer class="footer_area section_gap">
		<div class="container">
			<div class="row footer_inner justify-content-center">
				<div class="col-lg-6 text-center">
					<aside class="f_widget social_widget">
						<div class="f_logo">
							<img src="${pageContext.request.contextPath}/resources/img/logo.png" alt="">
						</div>
						<div class="f_title">
							<h4>Follow Me</h4>
						</div>
						<ul class="list">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
							<li><a href="#"><i class="fa fa-behance"></i></a></li>
						</ul>
					</aside>
					<div class="copyright">
						<p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!--================End Footer Area =================-->

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/popper.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/stellar.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendors/isotope/imagesloaded.pkgd.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendors/isotope/isotope-min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.ajaxchimp.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/mail-script.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="${pageContext.request.contextPath}/resources/js/gmaps.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/theme.js"></script>
</body>

</html>