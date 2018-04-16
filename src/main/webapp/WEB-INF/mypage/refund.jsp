<%@page import="com.dto.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>   
	<!-- 환급 페이지 -->
<script>

$(document).ready(function () {
	
	$("#ret").on("keyup",function (){

		 var re2 = $("#ret").val() *0.9;
		 var re3 = re2.toFixed(0);
		 $("#mon").text(re3);	
			 
    });

		
	$("form").on("submit",function (event){

		//span에 name로는 url에 넘어가지 않기 때문에 다시 hidden으로 넣어서 url값으로 넘김
		var mon = $("#mon").text();
		$("#bmoney").val(mon);
		 var pw = $("#pw").val();
		 var pw2 = $("#pw2").val();
		 
		 var omon = $("#omon").val();
		 var ret = $("#ret").val()
		 	 
		if(pw!=pw2){
			 alert("계정 비밀번호가 틀렸습니다.");
             event.preventDefault();
		}else if(parseInt(omon) < parseInt(ret)){
			 alert("환급 가능금액 이상은 환전할 수 없습니다.");
             event.preventDefault();
		}
   });	
});

</script>


	
<style>

table{
 width:430px;
 height: 200px;
 border-collapse: collapse;
 text-align: left;
 line-height: 1.5;
 border-top: 1px solid #ccc;
 border-bottom: 1px solid #ccc;
 margin: 20px 10px;
}

table th{
    width: 180px;
    padding: 10px;
    font-weight: bold;
    border-collapse: collapse;
    border-bottom: 1px solid #ccc;
    background: #e5fffa;
}

table td {
    width: 350px;
    padding: 10px;
    border-collapse: collapse;
    border-bottom: 1px solid #ccc;
}

table .bor{
	font-weight: bold;
}

 .gi{
	width: 200px;
}

input{
	width: 100px;
}

.ga{
	width: 10px;

}


</style>

<c:set value="${login}" var="dto" ></c:set>
<c:set value="${dto.getBank1()}" var="bank1" ></c:set>
<c:set value="${dto.getBank2()}" var="bank2" ></c:set>
<c:set value="${cashselect}" var="cashselect" ></c:set>

<c:set value="${dto.getId()}" var="id" ></c:set>
<c:set value="${dto.getPw()}" var="pw" ></c:set>


<jsp:include page="../include/header.jsp" flush="true" />
<center>

<form method="get" action="BankAdd">
<input type="hidden" name = "id" value="${id}">
<input type="hidden" id = "pw" value="${pw}">
<input type="hidden" id = "bmoney" name = "bmoney">
<input type="hidden" id = "omon" value="${cashselect}">
<table>

<tr>
<td colspan="2" align="center">환급 정보 입력</td>
</tr>

<tr>
<th align="center">환급 가능금액</th>
<td>${cashselect}</td><!-- 현재 잔액을 표시 -->
</tr>

<tr>
<th align="center">환급 금액</th>
<td><input type="text" class="siz" id = "ret" name = "recmoney"></td>
</tr>

<tr>
<td colspan="2" align="center">입금 계좌 정보 입력</td>
</tr>

<tr>
<th align="center">입금 금액</th>
<td ><span id = "mon"></span></td>
</tr>

<tr>
<th align="center">입금 은행</th>
<td>
${bank1}
</td>
</tr>

<tr>
<th align="center">입금 계좌번호</th>
<td>${bank2}</td>
</tr>

<tr>
<th align="center">계정 비밀번호</th>
<td><input type="password" class="siz" id = pw2></td>
</tr>
</table>


<input type="checkbox" class = "ga">위 내용을 확인하였고 입금에 동의합니다.<br>

<input type="submit" value="확인">
</form>
</center>