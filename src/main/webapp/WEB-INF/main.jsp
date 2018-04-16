<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<html>
<head>
	<!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	
	<!-- 부가적인 테마 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	
	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>COINALL</title>
<style>
	
</style>

<body>
<div class="wrap">
<%--  <jsp:include page="include/header.jsp" flush="true" />	 --%>
		<div class="border">
		<div class="content">
			<p class="title">Coinall</p>
			<p class="text">The Future of Finance<br>
			비트코인과 이더리움을 거래할 수 있습니다.</p>
			
			  	<button type="button" class="button" data-toggle="modal" data-target="#modalLoginForm">로그인</button>
			  	
			 <!-- Modal -->
			 <div class="modal fade" id="modalLoginForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h4 class="modal-title w-100 font-weight-bold">Login</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body mx-5">
                <div class="md-form mb-5">
                    <i class="fa fa-envelope prefix grey-text"></i>
                    <label data-error="wrong" data-success="right" for="defaultForm-email">Your ID</label>
                    <form action="Logins" method="get">  
                    <input type="text" name="id" size="30" class="form-control validate">                    
               <!--  </div>

                <div class="md-form mb-4"> -->
                    <i class="fa fa-lock prefix grey-text"></i>
                    <label data-error="wrong" data-success="right" for="defaultForm-pass">Your password</label>
                    <input type="password" name="pw" size="10" class="form-control validate">                    
              <!--   </div>

            </div> -->
            <!-- <div class="modal-footer d-flex justify-content-center"> -->
               <!--  <button class="btn btn-default">Login</button> -->               
               	<input type="submit" value="Login" id="Login">
               </form>
            </div>
        </div>
  
</div>		  				  
</div>			
		
	</div>		

</div>	
<button class="button" >카카오 계정으로 로그인</button>	
<a href="kakao">123</a>			

			
			<ul class="member">
				<li><jsp:include page="include/MemberUI.jsp" flush="true"></jsp:include></li>
				<li><jsp:include page="include/searchUI.jsp" flush="true"></jsp:include></li>
			</ul>
	
	<div class="notice">
		<p>[공지] 이용약관 개정안내 — 더 보기</p>
	</div>



</body>
