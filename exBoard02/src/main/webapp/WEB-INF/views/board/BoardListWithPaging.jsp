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

<body>
	<!-- 탑 나브 -->
	<jsp:include page="../includes/topNav.jsp"/>
	<!-- 탑나브 종료 -->
	
	<!-- 헤더 -->
	<jsp:include page="../includes/header.jsp" />
	<!-- 헤더 종료 -->
	
	<!-- 본문 시작 -->
	<section class="container-fluid" id="one" style="padding-top: 35px;">
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
					<tbody id="list">
					<c:forEach items="${list }" var="board">
					<tr>
						
						<td><c:out value="${board.bno }"/></td>
						<td><a href='BoardView?bno=<c:out value="${board.bno }"/>'> <c:out value="${board.title }"/></a></td>
						<td><c:out value="${board.writer }"/></td>
						<td><fmt:formatDate pattern="yyyy-MM-dd-HH-mm-ss" value="${board.regdate }"/></td>
						<td><fmt:formatDate pattern="yyyy-MM-dd-HH-mm-ss" value="${board.updateDate }"/></td>
					</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		</div>
		</div>
		<!-- 페이지 번호 출력 -->
		<section id="last" style="min-height: 100px; padding: 0px">
			<div class="container">
				<div class="row">
					<form id='actionForm' action="/spring/board/BoardListWithPaging" method='get'>
						<input type='hidden' name='pageNum'
							value='${pageMaker.cri.pageNum }'> <input type='hidden'
							name='amount' value='${pageMaker.cri.amount }'>
						<div class='col-lg-8 col-lg-offset-2 text-center'>
							<ul class='pagination'>

								<c:if test="${pageMaker.prev }">
									<li class="paginate_button previous"><a
										href="${pageMaker.startPage -1 }">Previous</a></li>
								</c:if>

								<c:forEach var="num" begin="${pageMaker.startPage }"
									end="${pageMaker.endPage }">
									<li class="paginate_button ${pageMaker.cri.pageNum == num ? "active":"" } ">
										<a href="${num }">${num }</a>
									</li>
								</c:forEach>

								<c:if test="${pageMaker.next }">
									<li class="paginate_button next"><a
										href="${pageMaker.endPage +1 }">Next</a></li>
								</c:if>
							</ul>
						</div>
					</form>
				</div>
			</div>
		</section>
		<!-- 페이지 번호 출력 종료-->
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
	
<!-- addFlashAttiubute 사용 -->
<script type="text/javascript">  
	$(document).ready(function(){
		var result='<c:out value="${result}"/>';
	});
</script>   

<!-- 모달창 띄워주는 스크립트 -->
<!-- jQuery : 버튼 눌렀을 때의 동작을 정의 --> 
<script type="text/javascript"> 
	$(document).ready(function() {
		var result='<c:out value="${result}"/>';
		checkModal(result);
		history.replaceState({},null,null); // history 객체를 이용하여 뒤로가기를 눌러도 모달창이 필요하지 않다는 표시를 해준다.
		function checkModal(result) {
			if(result === '' || history.state) {
				return;
			}
			if(parseInt(result) > 0) {
				$(".modal-body").html("게시글 " + parseInt(result) + " 번이 등록되었습니다.");
			}
			$("#myModal").modal("show");
		}
		$("#regBtn").on("click",function() {
			self.location="register";
		});
		var actionForm = $("#actionForm");
		$(".paginate_button a").on("click", function(e) {
			e.preventDefault();
			console.log('click');
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});
	});
</script>       
</body>
<style type="text/css">
header {
	background-image: url(../assets/board01.jpg);
}
</style>
</html>
