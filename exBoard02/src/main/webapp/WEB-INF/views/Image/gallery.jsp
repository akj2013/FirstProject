<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<%
 response.setHeader("Cache-Control","no-cache");
 response.setHeader("Pragma","no-cache");
 response.setDateHeader("Expires",0);
%>
<html>
<head>
<meta charset="UTF-8">
<title>갤러리</title>
<meta name="description"
	content="This is a free Bootstrap landing page theme created for BootstrapZero. Feature video background and one page design." />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="generator" content="Codeply">
<link rel="stylesheet" type="text/css"
	href="/spring/css/bootstrap.min.css?ver=1" />
<link rel="stylesheet" type="text/css"
	href="/spring/css/animate.min.css?ver=1" />
<link rel="stylesheet" type="text/css"
	href="/spring/css/ionicons.min.css?ver=1" />
<link rel="stylesheet" type="text/css" 
	href="/spring/css/styles.css?ver=1" />

<meta http-equiv="Cache-Control" content="no-cache"/>
<meta http-equiv="Expires" content="0"/>
<meta http-equiv="Pragma" content="no-cache"/>

</head>

<body>
	<!-- 탑 나브 -->
	<jsp:include page="../includes/topNav.jsp" />
	<!-- 탑나브 종료 -->

	<!-- 헤더 -->
	<jsp:include page="../includes/header.jsp" />
	<!-- 헤더 종료 -->

	<!-- 본문 시작 -->
	<section id="three" class="no-padding">
		<div class="container-fluid">
			<div class="row no-gutter">
				<c:if test="${!empty list }">
					<c:set var="listcnt" value="${list.size() }" />
					<c:forEach var="list" items="${list }">
						<div class="col-lg-4 col-sm-6">
							<a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="/spring/assets/${list.getFilename() }"> 

								<img src="/spring/assets/${list.getFilename() }" class="img-responsive" alt="${list.getFilename() }" />
								<div class="gallery-box-caption">
									<div class="gallery-box-content">
										<div>
											<i class="icon-lg ion-ios-search"></i>
										</div>
									</div>
								</div>
							</a>
						</div>
						<c:set var="listcnt" value="${listcnt-1 }" />
					</c:forEach>
				</c:if>
			</div>
		</div>
		
		<section id="last">
		<div class="container">
			<div class="row">
				
				
				<!-- 페이지 번호 출력 -->
	<form id='actionForm' action="/spring/Image/gallery" method='get'>
		<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum }'>
		<input type='hidden' name='amount' value='${pageMaker.cri.amount }'>
			<div class='col-lg-8 col-lg-offset-2 text-center'>
				<ul class='pagination'>
					
					<c:if test="${pageMaker.prev }">
						<li class="paginate_button previous"><a href="${pageMaker.startPage -1 }">Previous</a>
						</li>
					</c:if>
					
					<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
						<li class="paginate_button ${pageMaker.cri.pageNum == num ? "active":"" } ">
							<a href="${num }">${num }</a>
						</li>
					</c:forEach>
					
					<c:if test="${pageMaker.next }">
						<li class="paginate_button next">
							<a href="${pageMaker.endPage +1 }">Next</a>
						</li>
					</c:if>
				</ul>
			</div>
	</form>
	<!-- 페이지 번호 출력 종료-->
				
				
			</div>
		</div>
	</section>
		
		
	</section>
	<!-- 본문 끝 -->
	
	
	
	<!-- 풋터 시작 -->
	<jsp:include page="../includes/footer.jsp" />
	<!-- 풋터 종료 -->

	<!-- 갤러리 모달 -->
	<div id="galleryModal" class="modal fade" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-body">
					<img src="" id="galleryImage" class="img-responsive" />
					<p>
						<br />
					<form method="post" action="/spring/Image/delete">
						<button class="btn btn-primary btn-lg center-block"
							data-dismiss="modal" aria-hidden="true">
							Delete <i class="ion-android-close"></i>
						</button>
					</form>
					<button class="btn btn-primary btn-lg center-block"
						data-dismiss="modal" aria-hidden="true">
						Close <i class="ion-android-close"></i>
					</button>


					</p>
				</div>
			</div>
		</div>
	</div>
	<!-- 갤러리 모달 종료-->
	
	<!--scripts loaded here -->
	<script src="/spring/js/jquery.min.js?ver=1"></script>
	<script src="/spring/js/bootstrap.min.js?ver=1"></script>
	<script src="/spring/js/jquery.easing.min.js?ver=1"></script>
	<script src="/spring/js/wow.js?ver=1"></script>
	<script src="/spring/js/scripts.js?ver=1"></script>



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
</html>