<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
	var fid = $("#name").val();
	var fph = $("#ph").val();	
	
	/* document.write(fph1);
	document.write(fph2);
	document.write(fph3); */
		
	if((fid.length < 1) || (fph.length < 1)) {
		alert("다시 입력 해주세요.");
		event.preventDefault();
	} else  {
		window.open("searchIdax?name="+fid+"&ph="+fph, "", "width=200, height=200");		
	}		
});

</script>

</head>
<body>

	
	<div class="wrap">				
	<form method="get">  
	  	<input type="text" id="name" name="name" placeholder="이름"><br>
	  	<input type="text" id="ph" name="ph" placeholder="휴대전화"><br>
	  	<input type="submit" value="다음">			
	</form>	
	
	
	<p><jsp:include page="include/MemberUI.jsp" flush="true" /></p>		
	</div>
