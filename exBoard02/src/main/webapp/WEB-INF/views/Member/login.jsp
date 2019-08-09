<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<script type="text/javascript" src="/resources/js/member.js?ver=1"></script>
</head>
<body>

	<!-- topNav & header -->
	<jsp:include page="../includes/topNav.jsp" />
	

	<!-- section -->
	<section id="last">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<h2 class="margin-top-0 wow fadeIn">로그인</h2>
					<hr class="primary">
					<p>We love feedback. Fill out the form below and we'll get back
						to you as soon as possible.</p>
				</div>
				<div class="col-lg-10 col-lg-offset-1 text-center">

					<form class="contact-form row" action="login" method="post"
						name="frm">
						<input type ="hidden" name="name" value="${vo.name }">
						<div class="col-md-6">
							<label></label> <input type="text" class="form-control"
								placeholder="아이디를 입력하세요." name="userid" value="${vo.userid }">
						</div>
						<div class="col-md-6">
							<label></label> <input type="password" class="form-control"
								placeholder="비밀번호를 입력하세요." name="pwd">
						</div>
						<div class="col-md-4 col-md-offset-4">
							<label></label><!-- 한 줄 띄우기 용도 -->
							<button type="submit" class="btn btn-primary btn-block btn-lg"
								onclick="return loginCheck()">확인</button>
						</div>
						<div class="col-md-4 col-md-offset-4">
							<label></label>
							<button type="button" class="btn btn-primary btn-block btn-lg"
								onclick="location.href='/spring/Member/join'">회원가입</button>
						</div>
						<div class="col-md-4 col-md-offset-4">
							<label></label>
							<button type="button" class="btn btn-primary btn-block btn-lg"
								onclick="location.href='/spring/index'">취소</button>
						</div>
					</form>

				</div>
			</div>
		</div>
	</section>

	<!-- footer -->
	<jsp:include page="../includes/footer.jsp" />



</body>
</html>