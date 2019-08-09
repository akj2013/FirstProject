<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>




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
<style type="text/css">
header {
	background-image: url(../assets/lake.jpg);
}
</style>
<body>
	<!-- 탑 나브 -->
	<jsp:include page="../includes/topNav.jsp"/>
	<!-- 탑나브 종료 -->
	
	<!-- 헤더 -->
	
	<!-- 헤더 종료 -->
	
	<!-- 본문 시작 -->
	<section class="container-fluid" id="one">
		<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				
				<h2 class="text-center text-primary">게시판 리스트</h2>
				<hr class="primary">
				
				<!-- /.panel-heading -->
			<div class="panel-body">
				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<td>#번호</td>
							<td>제목</td>
							<td>작성자</td>
							<td>작성일</td>
							<td>수정일</td>
						</tr>
					</thead>
					
					<c:forEach items="${list }" var="board">
					
					<tr>
						
						<td><c:out value="${board.bno }"/></td>
						<td><a href='BoardView?bno=<c:out value="${board.bno }"/>'> <c:out value="${board.title }"/></a></td>
						<td><c:out value="${board.writer }"/></td>
						<td><fmt:formatDate pattern="yyyy-MM-dd-HH-mm-ss" value="${board.regdate }"/></td>
						<td><fmt:formatDate pattern="yyyy-MM-dd-HH-mm-ss" value="${board.updateDate }"/></td>
					</tr>
					</c:forEach>
				</table>
			</div>
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
