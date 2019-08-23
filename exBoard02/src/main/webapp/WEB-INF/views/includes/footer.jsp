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
    <footer id="footer">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-6 col-sm-3 column">
                    <h4>Member</h4>
                    <ul class="list-unstyled">
                        <li><a href="/spring/Member/login">Login</a></li>
                        <li><a href="/spring/Member/logout">Logout</a></li>
                        <li><a href="/spring/Member/join">Join</a></li>
                    </ul>
                </div>
                <div class="col-xs-6 col-sm-3 column">
                    <h4>About</h4>
                    <ul class="list-unstyled">
                        <li><a href="/spring/board/BoardListWithPaging">BoardListWithPaging</a></li>
                        <li><a href="/spring/Rest/list/page=1&pagePerCnt=5">RestController</a></li>
                        <li><a href="/spring/Rest/BoardListAjax/5/1">RestController2</a></li>
                        <li><a href="/spring/board/BoardListAjax">컨트롤러 두개활용</a></li>
                    </ul>
                </div>
                <div class="col-xs-12 col-sm-3 column">
                    <h4>Stay Posted</h4>
                    <form>
                        <div class="form-group">
                          <input type="text" class="form-control" title="No spam, we promise!" placeholder="Tell us your email">
                        </div>
                        <div class="form-group">
                          <button class="btn btn-primary" data-toggle="modal" data-target="#alertModal" type="button">Subscribe for updates</button>
                        </div>
                    </form>
                </div>
                <div class="col-xs-12 col-sm-3 text-right">
                    <h4>Follow</h4>
                    <ul class="list-inline">
                      <li><a rel="nofollow" href="" title="Twitter"><i class="icon-lg ion-social-twitter-outline"></i></a>&nbsp;</li>
                      <li><a rel="nofollow" href="" title="Facebook"><i class="icon-lg ion-social-facebook-outline"></i></a>&nbsp;</li>
                      <li><a rel="nofollow" href="" title="Dribble"><i class="icon-lg ion-social-dribbble-outline"></i></a></li>
                    </ul>
                </div>
            </div>
            <br/>
            <span class="pull-right text-muted small"><a href="http://www.bootstrapzero.com">Landing Zero by BootstrapZero</a> ©2015 Company</span>
        </div>
    </footer>
    
    <!-- 스크립트 -->
    <script src="/spring/js/jquery.min.js"></script>
    <script src="/spring/js/bootstrap.min.js"></script>
    <script src="/spring/js/jquery.easing.min.js"></script>
    <script src="/spring/js/wow.js"></script>
    <script src="/spring/js/scripts.js"></script>
</body>
<!-- css 수정 : 모달을 클릭했을 때와 종료했을 때 padding-right이 적용되는 것을 방지하기 위해서 작성. 
모든 페이지에서 footer를 호출하며, 가장 마지막에 적용되기 때문에 여기에서 적용시켜 준다. 실제로는 js에서 적용하는 것 같지만 수정이 어렵다. -->
<style type="text/css">  
body.modal-open { overflow: inherit; padding-right: 0 !important; } 
body {padding-right: 0 !important;}

header {
	min-height: 70%;
}
</style>

</html>