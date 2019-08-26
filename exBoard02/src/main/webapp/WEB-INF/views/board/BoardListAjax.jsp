<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AJAX페이징</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
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
	<select id="pagePerCnt">
		<option value="5" selected>5개</option>
		<option value="10">10개</option>
		<option value="15">15개</option>
		<option value="20">20개</option>
	</select>
	
	<table>
		<thead>
			<tr>
				<th>bno</th>
				<th>title</th>
				<th>writer</th>
				<th>regdate</th>
				<th>updateDate</th>
				<th>${json.page }</th>
			</tr>
		</thead>
		<tbody id="list">
			<!-- list print -->
		</tbody>
		<tr>
			<td colspan="6" id="paging">
				
			</td>
		</tr>
	</table>
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

<script>
	$(document).ready(function(){ // 이 jQuery는 한 페이지 내에서 여러 번 나와도 상관없다.

		var obj={};
		obj.dataType = "JSON";
		obj.error=function(e){console.log(e)};
		
		
		
		showPage = 1; //보여줄 페이지
		console.log(showPage);
		listCall(showPage); //리스트 호출 함수
		
		$("#pagePerCnt").change(function(){
			listCall(showPage);
		});
		
		
		
		function listCall(page){
			obj.type="get";
	 		obj.data ={};
	 		obj.url="/spring/Rest/BoardListAjax/";		
	 		obj.url +=$("#pagePerCnt").val()+"/";
	 		obj.url += page;
	 		console.log(obj.url);
	
			obj.success= function(d){
				console.log(d); // object 객체이다.
				listPrint(d.list); //리스트 그리기 
				showPage = d.currPage;
				
				// 페이징 처리
				var replyCnt = d.pageMaker.total;
				console.log("replyCnt : "+replyCnt);
				showReplyPage(replyCnt, d);
			};	
				
			ajaxCall(obj);
			
		}
		
		function ajaxCall(obj){
			$.ajax(obj);
		}
		
		//받아온 리스트 그리기
		function listPrint(list){
			var content="";
			list.forEach(function(item, bno){
				content += "<tr>"
				content +="<td>"+item.bno+"</td>"
				content +="<td>"+item.title+"</td>"
				content +="<td>"+item.writer+"</td>"
				content +="<td>"+displayTime(item.regdate)+"</td>"
				content +="<td>"+displayTime(item.updateDate)+"</td>"
				content +="<td>"+""+"</td>"
				content += "</tr>"			
			});		
			//내용 붙이기 
			$("#list").empty();
			$("#list").append(content);
		}
		
		// 페이징 번호 출력		
		function showReplyPage(replyCnt, d) {
			var endNum = d.pageMaker.endPage;
			console.log("endNum : " + endNum);
			var startNum = d.pageMaker.startPage;
			var prev = d.pageMaker.prev;
			var next = d.pageMaker.next;
			var str = "<ul class='pagination pull-right'>";
			
			if(prev) { // <li> 태그는 반드시 <ul> 태그 또는 <ol> 태그의 하위로 사용한다.
				str += "<li class='page-item' id='page-item'><a class='page-link' href='"+(startNum-1)+"' id='page-link'>Previous</a></li>";
			}
			
			for(var i=startNum ; i<=endNum; i++) {
				var active = pageNum == i? "active":"";
				str += "<li class='page-item "+active+" ' ><a class='page-link' href='"+i+"'>"+i+"</a></li>"; 
			}
			if(next) {
				str += "<li class='page-item' id='page-item'><a class='page-link' href='"+(endNum+1)+"' id='page-link'>Next</a></li>";
			}
			str +="</ul></div>";
			console.log(str);
			
			//내용 붙이기 
			$("#paging").empty();
			$("#paging").append(str);
		}
		
		// 페이지의 번호를 클릭했을 때 새로운 댓글을 가져오도록 하는 부분.
		var pageNum = 1;
		var replyPageFooter = $("#paging");

		replyPageFooter.on("click", "li a", function(e) {
			e.preventDefault();
			
			var targetPageNum = $(this).attr("href");
			console.log("targetPageNum: " + targetPageNum);
			pageNum = targetPageNum;
			
			listCall(pageNum);
		});
		
/*
		$(".page-link a").on("click", function(e){
			e.preventDefault();
			var num = $(this).attr("href");
			console.log("num의 값 : " + num);
		});
		
		
		$("#pagination pull-right").on("click", "li", function(e){
			e.preventDefault();
			var page = $(this).attr("href");
			console.log("page값 : " + page);
		});
*/
		// 시간 출력
		function displayTime(timeValue){
			var today = new Date();
			var gap = today.getTime() - timeValue;
			var dateObj = new Date(timeValue);
			var str = "";
			var hh = dateObj.getHours();
			var mi = dateObj.getMinutes();
			var ss = dateObj.getSeconds();
			
			
			if (gap < (1000 * 60 * 60 * 24)){ // 1초 * 60초 * 60분 * 24시간
				return [ (hh > 9 ? '' : '0') + hh, ':', (mi > 9 ? '' : '0') + mi, ':', (ss > 9 ? '' : '0') + ss].join('');
			} else{
				var yy = dateObj.getFullYear();
				var mm = dateObj.getMonth() + 1;
				var dd = dateObj.getDate();
				
				return [ yy, '-', (mm > 9 ? '' : '0') + mm, '-', (dd > 9 ? '' : '0') + dd, '-', (hh > 9 ? '' : '0') + hh, '-', (mi > 9 ? '' : '0') + mi, '-', (ss > 9 ? '' : '0') + ss].join('');
			} 
		};
	});


	
	</script>
	<style type="text/css">
		header {
			background-image: url(../assets/board01.jpg);
		}
	</style>
</html>
