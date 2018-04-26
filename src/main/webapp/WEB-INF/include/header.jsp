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

<script type="text/javascript">

	/* $(document).ready(function(){
		 $(".navbar-brand").click(function(){ 
			 location.href="loginMain.jsp";
		 });
	}); */
</script>		

<style>

.dropdown-menu>li>a:hover{
 	background-color: red;
	width: 100%;
}


</style>

<body>
		
 	<div class="container">
<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="loginMain">CoinAll</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
       <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">menu</a>
          <ul class="dropdown-menu">
            <li><a href="chartUI">차트</a></li>
            <li><a href="#">menu2</a></li>
            <li><a href="#">menu3</a></li>           
            <li><a href="#">menu4</a></li> 
          </ul>
        </li>
         <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">게시판</a>
          <ul class="dropdown-menu">
            <li><a href="list">게시판</a></li>
            <c:if test="${login.id != 'admin'}">
            <li><a href="olist">1:1문의</a></li>
            </c:if>
            <c:if test="${login.id == 'admin'}">
            <li><a href="olist">1:1답변</a></li>
            </c:if>
            <li><a href="#">menu3</a></li>           
            <li><a href="#">menu4</a></li> 
          </ul>
        </li>
      
       <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">마이페이지</a>
          <ul class="dropdown-menu">
            <li><a href="rechargeUI">충전</a></li>
            <li><a href="refundUI">입금</a></li>
            <li><a href="situationUI">거래 코인 현황</a></li>          
            <li><a href="informationUI">개인정보 수정</a></li>
            
          </ul>
        </li>
        <a><jsp:include page="loginout.jsp" flush="true" /></a></li>
       <!--  <button class="loginbtn">Login</button>   -->
      </ul>        
    </div><!-- /.navbar-collapse -->
     
  </div><!-- /.container-fluid -->
</nav>
</div>
</body>