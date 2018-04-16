<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>COINALL</title>
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
	background-image: none;
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

<script type="text/javascript">

$("form").on("submit", function(event){
	var fid = $("#fid").val();
	var fph = $("#ph").val();
	var fb = $("#bank").val();
	
	/* document.write(fph1) */
	/* document.write(fid);
	document.write(fph);
	document.write(fb); */
	
	if((fid.length < 1) || (fph.length < 1) || (fb.length < 1)) {
		alert("다시 입력 해주세요.");
		event.preventDefalt();
	} else  {
		window.open("searchPwax?fid="+fid+"&ph="+fph+"&bank="+fb, "", "width=200, height=200");		
	}		
	
});
	

</script>

</head>
<body>
	<div class="wrap">				
	<form>  
	  	<input type="text" id="fid" name="fid" placeholder="아이디"><br>
	  	<input type="text" id="ph" name="ph" placeholder="휴대전화"><br>
	  	<input type="text" id="bank" name="bank" placeholder="계좌번호"><br>
	  	<input type="submit" value="다음">			
	</form>	
	
	
	<p><jsp:include page="include/MemberUI.jsp" flush="true" /></p>		
	</div>
		
		
</body>
</html>