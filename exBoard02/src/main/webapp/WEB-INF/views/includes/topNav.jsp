<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<%
 response.setHeader("Cache-Control","no-cache");
 response.setHeader("Pragma","no-cache");
 response.setDateHeader("Expires",0);
%>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<meta name="description" content="This is a free Bootstrap landing page theme created for BootstrapZero. Feature video background and one page design." />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="generator" content="Codeply">
	<link rel="stylesheet" href="/spring/css/bootstrap.min.css" />
	<link rel="stylesheet" href="/spring/css/animate.min.css" />
	<link rel="stylesheet" href="/spring/css/ionicons.min.css" />
	<link rel="stylesheet" href="/spring/css/styles.css" />
</head>
<body>
	<nav id="topNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-navbar">
                    <span class="sr-only">토글 네비게이션</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span> <!-- 우측 위 아이콘 줄모양 -->
                </button>
                <a class="navbar-brand page-scroll" href="#first"><i class="ion-ios-analytics-outline"></i> SPRING </a>
            </div>
            
            <div class="navbar-collapse collapse" id="bs-navbar">
                <ul class="nav navbar-nav">
                    <li>
                        <a class="page-scroll" href="/spring/main">MAIN</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="/spring/index">INDEX</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="/spring/Image/gallery">GALLERY</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="/spring/Image/uploadAjax">FILEUP</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="/spring/board/BoardListWithPaging">BOARD</a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                   	<c:if test="${LoginUser==null }">
                    	<li>
                        	<a class="page-scroll" data-toggle="modal" title="A free Bootstrap video landing theme" href="#aboutModal">LOGIN</a>
                    	</li>
                   	</c:if>
                   	<c:if test="${LoginUser!=null }">
						<li>           	
           	        		<a class="page-scroll" data-toggle="modal" title="A free Bootstrap video landing theme" href="#aboutModal">LOGOUT</a>
                   		</li>
                   	</c:if>
               	</ul>
            </div>
        </div>
    </nav>
    
    <!-- 어바웃 모달 -->
    <div id="aboutModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
        	<div class="modal-body">
        		<h2 class="text-center">Landing Zero Theme</h2>
        		<h5 class="text-center">
        		    A free, responsive landing page theme built by BootstrapZero.
        		</h5>
        		<p class="text-justify">
        		    This is a single-page Bootstrap template with a sleek dark/grey color scheme, accent color and smooth scrolling.
        		    There are vertical content sections with subtle animations that are activated when scrolled into view using the jQuery WOW plugin. There is also a gallery with modals
        		    that work nicely to showcase your work portfolio. Other features include a contact form, email subscribe form, multi-column footer. Uses Questrial Google Font and Ionicons.
        		</p>
        		
        		<c:if test = "${LoginUser.name==null }">
        			<p class="text-center"><a href="/spring/Member/login">name이 null값이므로 login.jsp 열기</a></p>	
        		</c:if>
        			
        		<c:if test = "${LoginUser.name!=null }">
        			<p class="text-center"><a href="/spring/Member/logout">세션에 저장된 name이 ${vo.name }이므로 logout 합니다.</a></p>
        		</c:if>
        		
        		<c:if test = "${login!='guest' }">
        			<p class="text-center"><a href="/spring/main_pro">로그인 없이 main.jsp 열기</a></p>
        		</c:if>
				<p class="text-center"><a href="/spring/index">index.jsp 열기</a></p>        		        		
        		<br/>
        		<button class="btn btn-primary btn-lg center-block" data-dismiss="modal" aria-hidden="true"> OK </button>
        	</div>
        </div>
        </div>
    </div>
    <!-- 어바웃 모달 -->
    
    
    
    <!-- 스크립트 -->
    <script src="/spring/js/jquery.min.js"></script>
    <script src="/spring/js/bootstrap.min.js"></script>
    <script src="/spring/js/jquery.easing.min.js"></script>
    <script src="/spring/js/wow.js"></script>
    <script src="/spring/js/scripts.js"></script>
</body>
</html>