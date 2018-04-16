<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>COINALL</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script type="text/javascript">

	$(document).ready(function(){
		  $.ajax({
   			type:"get",
   			url:"searchId",
   			dataType:"html", //text, jason, xml	       			
   			success: function(data,status,xhr){
   				$("#search").html(data);
   				       				
   			},
   			error: function(xhr,status,e){
   				console.log(e);
   			} 
   		});   
	 	 $("#id").click(function(){ 
	       		$.ajax({
	       			type:"get",
	       			url:"searchId",
	       			dataType:"html", //text, jason, xml	       			
	       			success: function(data,status,xhr){
	       				$("#search").html(data);
	       				       				
	       			},
	       			error: function(xhr,status,e){
	       				console.log(e);
	       			}
	       		});  
	 		 });	 
	 	
	 	$("#pw").click(function(){
       		$.ajax({
       			type:"get",
       			url:"searchPw",
       			dataType:"html", //text, jason, xml	       			
       			success: function(data,status,xhr){
       				$("#search").html(data);
       				       				
       			},
       			error: function(xhr,status,e){
       				console.log(e);
       			}
       		});  
 		});	
       });      
	
</script>

<style>

body {
	backgound-color: #bab4b4;
}


.title-button {
	margin: 100px auto;
	width: 400px; 
}

.title-button button{
	width: 50%;
	border : 1px #9f9fa0 solid;
	background-color: #d5d5d5; 
    border: 1px solid #474747;
    color: #010101; 
    font-weight: bold;
    padding: 10px 24px; 
    cursor: pointer;
    float: left;
}

/* .title-button:after {
    content: "";
    clear: both;
    display: table;
} */

.title-button button:not(:last-child) {
    border-right: none; /* Prevent double borders */
}

.title p {
	display: inline-block;
}

.wrap {
	border : 1px #9f9fa0 solid;
	padding: 30px 0 0 80px;
	width: 500px;
	margin: 200px auto;
	border-radius: 4px;
}

input[type=text] {
	width: 80%;
	padding: 12px 20px;
	margin: 8px auto;
	border-radius: 2px;
	box-sizing: border-box;	
}
	
input[type=submit]{
	width: 80%;
	padding: 12px 20px;
	margin: 4px auto;
	box-sizing: border-box;	 
	border-radius: 2px; 
	background-color: #2f4a77;
	color: #ffffff;
}
	
p {
	text-align: right; 
	margin-right: 20px;
	display:inline-block;
}
	
a {
	text-decoration: none; 
}
	

</style>
</head>
<body>
<jsp:include page="include/header.jsp" flush="true" />
	<div class="title-button">
		<button id="id">아이디 찾기</button>
		<button id="pw">비밀번호 찾기</button>		
	</div>
	<div id="search"></div>
	
<%-- <jsp:include page="searchId.jsp" flush="true" />	 --%>
	
</body>
</html>