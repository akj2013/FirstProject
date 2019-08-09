<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
	<div class="container">
	<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Board Read</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Board Read Page</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<div class="form-group">
					<h2>Bno</h2> <input class="form-control" name='bno' value='<c:out value="${board.bno }"/>' >
				</div>
				<div class="form-group">
					<h2>Title</h2> <input class="form-control" name='title' value='<c:out value="${board.title }"/>' >
				</div>
				<div class="form-group">
					<h2>Text area</h2> <textarea class="form-control" rows="6" name='content' ><c:out value="${board.content }"/>
					</textarea>
				</div>
				<div class="form-group">
					<h2>Writer</h2> <input class="form-control" name='writer' value='<c:out value="${board.writer }"/>' >
				</div>
				<button data-oper='modify' class="btn btn-info" onClick="location.href='/spring/board/BoardModify?bno=<c:out value="${board.bno }"/>'">수정</button>
				<button data-oper='list' class="btn btn-info" onClick="location.href='/spring/board/BoardList'">리스트</button>
				<button data-oper='delete' class="btn btn-info" onClick="location.href='/spring/board/BoardDelete?bno=<c:out value="${board.bno }"/>'">삭제</button>
				<button data-oper='list' class="btn btn-info" onClick="location.href='/spring/board/BoardWrite'">글쓰기</button>
			</div>
			<!-- end panel-body -->
		</div>
		<!-- end panel-body -->
	</div>
	<!-- end panel -->
</div>
<!-- /.row -->
</div>

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