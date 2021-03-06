<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>메인</title>
<!-- 페이지 제목 타이틀 -->
<meta name="description"
	content="This is a free Bootstrap landing page theme created for BootstrapZero. Feature video background and one page design." />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="generator" content="Codeply">


</head>

<body>
	
	<!-- 탑 나브 -->
	<jsp:include page="./includes/topNav.jsp"/>
	<!-- 탑나브 종료 -->
	
	<!-- 헤더 -->
	<jsp:include page="./includes/header.jsp"/>
	<!-- 헤더 종료 -->

	<section class="bg-primary" id="one">
		<div class="container">
			<div class="row">
				<div
					class="col-lg-6 col-lg-offset-3 col-md-8 col-md-offset-2 text-center">
					<h2 class="margin-top-0 text-primary">Built On The Bootstrap
						Grid</h2>
					<br>
					<p class="text-faded">Bootstrap's responsive grid comes in 4
						sizes or "breakpoints": tiny (xs), small(sm), medium(md) and
						large(lg). These 4 grid sizes enable you create responsive layouts
						that behave accordingly on different devices.</p>
					<a href="#three" class="btn btn-default btn-xl page-scroll">Learn
						More</a>
				</div>
			</div>
		</div>
	</section>

	<section id="two">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="margin-top-0 text-primary">게시판1로 해보쟝</h2>
					<hr class="primary">
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4 text-center">
					<div class="feature">
						<i class="icon-lg ion-android-laptop wow fadeIn"
							data-wow-delay=".3s"></i>
						<h3>Responsive</h3>
						<p class="text-muted">Your site looks good everywhere</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 text-center">
					<div class="feature">
						<i class="icon-lg ion-social-sass wow fadeInUp"
							data-wow-delay=".2s"></i>
						<h3>Customizable</h3>
						<p class="text-muted">Easy to theme and customize with SASS</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 text-center">
					<div class="feature">
						<i class="icon-lg ion-ios-star-outline wow fadeIn"
							data-wow-delay=".3s"></i>
						<h3>Consistent</h3>
						<p class="text-muted">A mature, well-tested, stable codebase</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="three" class="no-padding">
		<div class="container-fluid">
			<div class="row no-gutter">
				<div class="col-lg-4 col-sm-6">
					<a href="#galleryModal" class="gallery-box" data-toggle="modal"
						data-src="/spring/assets/deer.jpg"> <img src="/spring/assets/deer.jpg"
						class="img-responsive" alt="Image 1">
						<div class="gallery-box-caption">
							<div class="gallery-box-content">
								<div>
									<i class="icon-lg ion-ios-search"></i>
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="#galleryModal" class="gallery-box" data-toggle="modal"
						data-src="/spring/assets/beach.jpg"> <img src="/spring/assets/beach.jpg"
						class="img-responsive" alt="Image 2">
						<div class="gallery-box-caption">
							<div class="gallery-box-content">
								<div>
									<i class="icon-lg ion-ios-search"></i>
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="clearfix hidden-lg"></div>
				<div class="col-lg-4 col-sm-6">
					<a href="#galleryModal" class="gallery-box" data-toggle="modal"
						data-src="/spring/assets/lake.jpg"> <img src="/spring/assets/lake.jpg"
						class="img-responsive" alt="Image 3">
						<div class="gallery-box-caption">
							<div class="gallery-box-content">
								<div>
									<i class="icon-lg ion-ios-search"></i>
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="#galleryModal" class="gallery-box" data-toggle="modal"
						data-src="/spring/assets/bike.jpg"> <img src="/spring/assets/bike.jpg"
						class="img-responsive" alt="Image 4">
						<div class="gallery-box-caption">
							<div class="gallery-box-content">
								<div>
									<i class="icon-lg ion-ios-search"></i>
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="clearfix hidden-lg"></div>
				<div class="col-lg-4 col-sm-6">
					<a href="#galleryModal" class="gallery-box" data-toggle="modal"
						data-src="/spring/assets/city.jpg"> <img src="/spring/assets/city.jpg"
						class="img-responsive" alt="Image 5">
						<div class="gallery-box-caption">
							<div class="gallery-box-content">
								<div>
									<i class="icon-lg ion-ios-search"></i>
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="#galleryModal" class="gallery-box" data-toggle="modal"
						data-src="/spring/assets/colors.jpg"> <img src="/spring/assets/colors.jpg"
						class="img-responsive" alt="Image 6">
						<div class="gallery-box-caption">
							<div class="gallery-box-content">
								<div>
									<i class="icon-lg ion-ios-search"></i>
								</div>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</section>

	<section class="container-fluid" id="four">
		<div class="row">
			<div
				class="col-xs-10 col-xs-offset-1 col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">
				<h2 class="text-center text-primary">Features</h2>
				<hr>
				<div class="media wow fadeInRight">
					<h3>Simple</h3>
					<div class="media-body media-middle">
						<p>What could be easier? Get started fast with this landing
							page starter theme.</p>
					</div>
					<div class="media-right">
						<i class="icon-lg ion-ios-bolt-outline"></i>
					</div>
				</div>
				<hr>
				<div class="media wow fadeIn">
					<h3>Free</h3>
					<div class="media-left">
						<a href="#alertModal" data-toggle="modal"
							data-target="#alertModal"><i
							class="icon-lg ion-ios-cloud-download-outline"></i></a>
					</div>
					<div class="media-body media-middle">
						<p>Yes, please. Grab it for yourself, and make something
							awesome with this.</p>
					</div>
				</div>
				<hr>
				<div class="media wow fadeInRight">
					<h3>Unique</h3>
					<div class="media-body media-middle">
						<p>Because you don't want your Bootstrap site, to look like a
							Bootstrap site.</p>
					</div>
					<div class="media-right">
						<i class="icon-lg ion-ios-snowy"></i>
					</div>
				</div>
				<hr>
				<div class="media wow fadeIn">
					<h3>Popular</h3>
					<div class="media-left">
						<i class="icon-lg ion-ios-heart-outline"></i>
					</div>
					<div class="media-body media-middle">
						<p>There's good reason why Bootstrap is the most used frontend
							framework in the world.</p>
					</div>
				</div>
				<hr>
				<div class="media wow fadeInRight">
					<h3>Tested</h3>
					<div class="media-body media-middle">
						<p>Bootstrap is matured and well-tested. It's a stable
							codebase that provides consistency.</p>
					</div>
					<div class="media-right">
						<i class="icon-lg ion-ios-flask-outline"></i>
					</div>
				</div>
			</div>
		</div>
	</section>

	<aside class="bg-dark">
		<div class="container text-center">
			<div class="call-to-action">
				<h2 class="text-primary">Get Started</h2>
				<a
					href="http://www.bootstrapzero.com/bootstrap-template/landing-zero"
					target="ext" class="btn btn-default btn-lg wow flipInX">Free
					Download</a>
			</div>
			<br>
			<hr />
			<br>
			<div class="row">
				<div class="col-lg-10 col-lg-offset-1">
					<div class="row">
						<h6 class="wide-space text-center">BOOTSTRAP IS BASED ON
							THESE STANDARDS</h6>
						<div class="col-sm-3 col-xs-6 text-center">
							<i class="icon-lg ion-social-html5-outline" title="html 5"></i>
						</div>
						<div class="col-sm-3 col-xs-6 text-center">
							<i class="icon-lg ion-social-sass" title="sass"></i>
						</div>
						<div class="col-sm-3 col-xs-6 text-center">
							<i class="icon-lg ion-social-javascript-outline"
								title="javascript"></i>
						</div>
						<div class="col-sm-3 col-xs-6 text-center">
							<i class="icon-lg ion-social-css3-outline" title="css 3"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</aside>

	<section id="last">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<h2 class="margin-top-0 wow fadeIn">Get in Touch</h2>
					<hr class="primary">
					<p>We love feedback. Fill out the form below and we'll get back
						to you as soon as possible.</p>
				</div>
				<div class="col-lg-10 col-lg-offset-1 text-center">
					<form class="contact-form row">
						<div class="col-md-4">
							<label></label> <input type="text" class="form-control"
								placeholder="Name">
						</div>
						<div class="col-md-4">
							<label></label> <input type="text" class="form-control"
								placeholder="Email">
						</div>
						<div class="col-md-4">
							<label></label> <input type="text" class="form-control"
								placeholder="Phone">
						</div>
						<div class="col-md-12">
							<label></label>
							<textarea class="form-control" rows="9"
								placeholder="Your message here.."></textarea>
						</div>
						<div class="col-md-4 col-md-offset-4">
							<label></label>
							<button type="button" data-toggle="modal"
								data-target="#alertModal"
								class="btn btn-primary btn-block btn-lg">
								Send <i class="ion-android-arrow-forward"></i>
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

	<!-- 풋터 -->
	<jsp:include page = "./includes/footer.jsp"/>
	<!-- 풋터 종료 -->	

	<div id="galleryModal" class="modal fade" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-body">
					<img src="" id="galleryImage" class="img-responsive" />
					<p>
						<br />
						<button class="btn btn-primary btn-lg center-block"
							data-dismiss="modal" aria-hidden="true">
							Close <i class="ion-android-close"></i>
						</button>
					</p>
				</div>
			</div>
		</div>
	</div>

	


	<div id="alertModal" class="modal fade" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-body">
					<h2 class="text-center">Nice Job!</h2>
					<p class="text-center">You clicked the button, but it doesn't
						actually go anywhere because this is only a demo.</p>
					<p class="text-center">
						<a href="http://www.bootstrapzero.com">Learn more at
							BootstrapZero</a>
					</p>
					<br />
					<button class="btn btn-primary btn-lg center-block"
						data-dismiss="modal" aria-hidden="true">
						OK <i class="ion-android-close"></i>
					</button>
				</div>
			</div>
		</div>
	</div>
</body>
    <link rel="stylesheet" href="/spring/css/styles.css" />
</html>