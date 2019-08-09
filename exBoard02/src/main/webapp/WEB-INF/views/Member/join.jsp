<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript" src="/spring/js/member.js?ver=1"></script>
</head>
<body>

	<!-- topNav -->
	<jsp:include page="../includes/topNav.jsp"/>
	 
	<!-- section -->
	<section id="first">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<h2 class="margin-top-0 wow fadeIn">회원가입</h2>
					<hr class="primary">
					<p>We love feedback. Fill out the form below and we'll get back
						to you as soon as possible.</p>
				</div>
				<div class="col-lg-10 col-lg-offset-1 text-center">

					<form class="contact-form row" action="/spring/Member/join" method="post"
						name="frm">
						<div class="col-md-12">
							<label></label> <input type="text" class="form-control"
								placeholder="이름을 입력하세요." name="name">
						</div>
						<div class="col-md-12">
							<label></label> <input type="text" class="form-control"
								placeholder="아이디를 입력하세요." name="userid">
						</div>
						<div class="col-md-12">
							<label></label> <input type="password" class="form-control"
								placeholder="비밀번호를 입력하세요." name="pwd">
						</div>
						<div class="col-md-12">
							<label></label> <input type="password" class="form-control"
								placeholder="비밀번호를 한 번 더 재입력하세요." name="pwd_check">
						</div>
						<div class="col-md-12">
							<label></label> <input type="text" class="form-control"
								placeholder="이메일을 입력하세요." name="email">
						</div>
						<div class="col-md-12">
							<label></label> <input type="text" class="form-control"
								placeholder="전화번호를 입력하세요." name="phone">
						</div>
						
						<div class="col-md-4 col-md-offset-4">
							<label></label> <!-- 한 줄 띄우기 용도 -->
							<button type="submit" class="btn btn-primary btn-block btn-lg"
								onclick="return joinCheck()">확인</button>
						</div>
						<div class="col-md-4 col-md-offset-4">
							<label></label>
							<button type="button" class="btn btn-primary btn-block btn-lg"
								onclick="location.href='/spring/Member/login'">취소</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- footer -->
	<jsp:include page="../includes/footer.jsp"/>

</body>
</html>