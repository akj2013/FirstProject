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
    <link rel="stylesheet" href="/spring/css/stylesEX.css" />
   
</head>
<body>
	
	
    <header id="first">
        <div class="header-content" >
            <div class="inner">
                <c:if test="${page eq 'gallery' }">
                	<h1 class="cursive">GALLERY</h1>
                	<h4>This is a gallery page</h4>
                </c:if>
                
                <c:if test="${page eq 'main' }">
	                <h1 class="cursive">MAIN</h1>
                	<h4>This is a main page</h4>	
                </c:if>
                
                <c:if test="${page eq 'index' }">
	                <h1 class="cursive">INDEX</h1>
                	<h4>This is a index page</h4>	
                </c:if>               	
            </div>
        </div>    
    </header>
    
    
    
    
    <!-- 스크립트 -->
    <script src="/spring/js/jquery.min.js"></script>
    <script src="/spring/js/bootstrap.min.js"></script>
    <script src="/spring/js/jquery.easing.min.js"></script>
    <script src="/spring/js/wow.js"></script>
    <script src="/spring/js/scripts.js"></script>
</body>
</html>