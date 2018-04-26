<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<title>COINALL</title>
<style>

body{
	backgound-color: #bab4b4;
}

h1{
	margin: 10px auto;
}

.wrap {
	/* width: 0; */
	height: 50% !important;
	background: none !important;
	border : 1px #9f9fa0 solid;
	padding: 100px 0 0 80px;
	width: 40% !important;
	margin: 100px auto;
	/* border-radius: 4px; */
}

	input[type=text] {
	    width: 80%;
	    padding: 12px 20px;
	    margin: 8px auto;
	   /*  border-radius: 2px; */
	    box-sizing: border-box;	  	     
	   
	}
	
		input[type=password] {
	    width: 80%;
	    padding: 12px 20px;
	    margin: 8px auto;
	    /* border-radius: 2px; */
	    box-sizing: border-box;	  	     
	   
	}
	
	input[type=submit]{
	 	width: 80%;
	 	padding: 12px 20px;
	    margin: 4px auto;
	    box-sizing: border-box;	 
	   /*  border-radius: 2px;  */
		background-color: #2f4a77;
		color: #ffffff;
	}
	p{
		text-align: right; 
		padding-right: 20px;
		display:inline-block;
		color: #153b5b !important;		
	}
	

</style>
</head>
<body>
<jsp:include page="include/header.jsp" flush="true" />
	<div class="wrap">		
		<h2>Login</h2>
	
	<form action="Logins" method="get">  
	  	<input type="text" id="mail" name="id" placeholder="e-mail"><br>
	  	<input type="password" id="psswd" name="pw" placeholder="password"><br>
	  	<input type="submit" value="Login">			
	</form>	
	
	<p><jsp:include page="include/MemberUI.jsp" flush="true"></jsp:include></p>
	<p><jsp:include page="include/searchUI.jsp" flush="true"></jsp:include></p>			
	</div>
		
		
</body>
</html>