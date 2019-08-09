<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 리스트</title>
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
					<h2 class="margin-top-0 wow fadeIn">게시판 글작성</h2>
					<hr class="primary">
					<p>글을 작성합니다</p>
				</div>
				<div class="col-lg-10 col-lg-offset-1 text-center">
					<form class="contact-form row" action="/spring/board/BoardWrite" method="post" enctype="multipart/form-data">
						
						
						<div class="col-md-4 col-md-offset-4">
							<label></label> <input type="text" class="form-control"
								 name="title" placeholder="title">
						</div>
						
						<div class="col-md-4 col-md-offset-4">
							<label></label> <input type="text" class="form-control"
								 name="writer" placeholder="writer">
						</div>
						
						<div class="col-md-4 col-md-offset-4">
							<label></label> 
							<textarea class="form-control"
								name="content" rows="9" placeholder="content"></textarea>
						</div>						
						
						<div class="col-md-4 col-md-offset-4">
							<label></label>
							<button type="submit" 
								class="btn btn-primary btn-block btn-lg">
								SUBMIT <i class="ion-android-arrow-forward"></i>
							</button>
						</div>
						
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