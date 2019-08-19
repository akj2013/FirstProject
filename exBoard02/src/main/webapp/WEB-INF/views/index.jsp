<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인덱스 페이지</title>
    <link rel="stylesheet" href="/spring/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/spring/css/animate.min.css" />
    <link rel="stylesheet" href="/spring/css/ionicons.min.css" />
    <link rel="stylesheet" href="/spring/css/stylesEX.css" />
</head>
<body>
	<jsp:include page = "./includes/topNav.jsp"/>
	<jsp:include page = "./includes/header.jsp"/>
		<section class="bg-primary" id="one">
	        <div class="container">
	            <div class="row">
	                <div class="col-lg-6 col-lg-offset-3 col-md-8 col-md-offset-2 text-center">
	                    <h2 class="margin-top-0 text-primary">Built On The Bootstrap Grid</h2>
	                    <br>
	                    <p class="text-faded">
	                        Bootstrap's responsive grid comes in 4 sizes or "breakpoints": tiny (xs), small(sm), medium(md) and large(lg). These 4 grid sizes enable you create responsive layouts that behave accordingly on different devices.
	                    </p>
	                    <a href="#three" class="btn btn-default btn-xl page-scroll">Learn More</a>
	                </div>
	            </div>
	        </div>
	    </section>
	<jsp:include page = "./includes/footer.jsp"/>
</body>
</html>