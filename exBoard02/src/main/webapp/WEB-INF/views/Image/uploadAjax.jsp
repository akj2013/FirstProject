<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
 response.setHeader("Cache-Control","no-cache");
 response.setHeader("Pragma","no-cache");
 response.setDateHeader("Expires",0);
%>
<html>
<head>
<meta charset="UTF-8">
<title>파일업로드</title>
<meta name="description"
	content="This is a free Bootstrap landing page theme created for BootstrapZero. Feature video background and one page design." />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="generator" content="Codeply">
<link rel="stylesheet" type="text/css" href="/spring/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/spring/css/animate.min.css" />
<link rel="stylesheet" type="text/css" href="/spring/css/ionicons.min.css" />
<link rel="stylesheet" type="text/css" href="/spring/css/styles.css" />



</head>

<body>
	<!-- 탑 나브 -->
	<jsp:include page="../includes/topNav.jsp"/>
	<!-- 탑나브 종료 -->
	
	<!-- 헤더 -->

	<!-- 헤더 종료 -->
	
	<!-- 본문 시작 -->
	<section id="last">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<h2 class="margin-top-0 wow fadeIn">FILE UPLOAD</h2>
					<hr class="primary">
					<p>파일을 업로드 합니당~</p>
				</div>
				<div class="col-lg-10 col-lg-offset-1 text-center">
					<form class="contact-form row" action="/spring/Image/uploadAjax" method="post" enctype="multipart/form-data">
						
						
						<div class="col-md-4 col-md-offset-4">
							<label></label> <input type="text" class="form-control"
								 name="name" placeholder="name">
						</div>
						
						<div class="col-md-4 col-md-offset-4">
							<label></label> 
							<textarea class="form-control"
								name="message" rows="9" placeholder="message"></textarea>
						</div>
						
						<div class="col-md-4 col-md-offset-4">
							<label></label> 
							<input type='file'  name='uploadFile' multiple>
						</div>
						
						
						
						<div class="col-md-4 col-md-offset-4">
							<label></label>
							<button type="submit" id = "uploadBtn" 
								class="btn btn-primary btn-block btn-lg">
								SUBMIT <i class="ion-android-arrow-forward"></i>
							</button>
						</div>
						
						<script>
							src="https://code.jquery.com/jquery-3.3.1.min.js"
							integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
							crossorigin="anonymous"
						</script>
						
						<script>
							$(document).ready(function() {
								$("#uploadBtn").on("click",fuction(e) {
									var formData = new FormData();
									var inputFile = $("input[name='uploadFile']");
									var files = inputFile[0].files;
									console.log(files);
									
									for(var i = 0; i < files.length; i++) {
										formData.append("uploadFile",files[i]);
									}
									
									$.ajax({
										url : '/uploadAjaxAction',
											processData : false,
											contentType : false,
											data : formData,
											type : 'POST',
											success : function(result) {
												alert("Uploaded");
											}
									}); // $.ajax
								});
							});
						</script>
						
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- 본문 끝 -->
	
	<!-- 풋터 시작 -->
	<jsp:include page = "../includes/footer.jsp"/>
	<!-- 풋터 종료 -->	
	
	<!--scripts loaded here -->
	<script src="/spring/js/jquery.min.js"></script>
	<script src="/spring/js/bootstrap.min.js"></script>
	<script src="/spring/js/jquery.easing.min.js"></script>
	<script src="/spring/js/wow.js"></script>
	<script src="/spring/js/scripts.js"></script>
	
</body>
</html>