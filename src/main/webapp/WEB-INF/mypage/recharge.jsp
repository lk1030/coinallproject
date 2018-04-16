<%@page import="com.dto.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<!--캐시 충전 페이지 -->
<script>

$(document).ready(function () {
	
	$("form").on("submit",function (event){
		
			var bankselect = $("#bankselect").val();
			var bpw = $("#bpw").val();
			var bpw2 = $("#bpw2").val();	
			var cmoney = $("#cmoney").val();
			var cmoney2 = $("#cmoney2").val();
			
		if(bpw!=bpw2){
			 alert("계좌 비밀번호가 틀렸습니다.");
			 event.preventDefault();
		 }else if(cmoney2.length != 0){
			 if(parseInt(cmoney2) > parseInt(bankselect)){
				 alert("계좌 잔액이 부족합니다.");
				 event.preventDefault();
			 }		 
		 }else if(cmoney2.length == 0){
			 if(parseInt(cmoney) > parseInt(bankselect)){
				 alert("계좌 잔액이 부족합니다.");
				 event.preventDefault();
			 }
		 }
    });
	
	$("#rea1").on("click",function(){
		 $("#cmoney2").attr("disabled","disabled");
		 $("#cmoney").removeAttr("disabled");	
	});
	
	$("#rea2").on("click",function(){
		 $("#cmoney").attr("disabled","disabled");
		 $("#cmoney2").removeAttr("disabled");
	});
	

});


</script>


<style>

table{
 width:400px;
 height: 300px;
 border-collapse: collapse;
 text-align: left;
 line-height: 1.5;
 border-top: 1px solid #ccc;
 border-bottom: 1px solid #ccc;
 margin: 20px 10px;
}

table th{
    width: 150px;
    padding: 10px;
    font-weight: bold;
    border-collapse: collapse;
    border-bottom: 1px solid #ccc;
    background: #e5fffa;
}

table td{
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

<c:set value="${dto.getId()}" var="id" ></c:set>
<c:set value="${dto.getBpw()}" var="bpw" ></c:set>
<c:set value="${dto.getBank1()}" var="bank1" ></c:set>
<c:set value="${dto.getBank2()}" var="bank2" ></c:set>

<c:set value="${bankselect}" var="bankselect" ></c:set>




<jsp:include page="../include/header.jsp" flush="true" />
<center>

<form method="get" action="CashUp">
<input type="hidden" name = "id" value="${id}">
<input type="hidden" id = "bpw" value="${bpw}">
<input type="hidden" id = "bankselect" value="${bankselect}">
<table>

<tr>
<td colspan="2" align="center" class = "bor">코인 충전 계좌 정보 입력</td>
</tr>

<tr>
<th align="center">충전금액</th>

<td>
<input type="radio" name="jo" class='ga' id ="rea1" checked>
<select name = "cmoney" id = "cmoney">
<option value="50000">50,000</option>
<option value="30000">30,000</option>
<option value="10000">10,000</option>
</select>원
<input type="radio" name="jo" class='ga' id = "rea2">
<input type="text"  placeholder="직접입력" name = "cmoney" id = "cmoney2" disabled="disabled">원
</td>
</tr>

<tr>
<td colspan="2" align="center" class="bor">결제 정보 입력</td>
</tr>

<tr>
<th align="center">출금은행</th>

<td>
${bank1}
</td>
</tr>

<tr>
<th align="center">출금계좌번호(출금 가능금액 :${bankselect}원)</th>

<td>${bank2}</td>
</tr>

<tr>
<th align="center">계좌비밀번호</th>

<td><input type="password" id ="bpw2"></td>
</tr>


</table>


<input type="checkbox" class='ga'>위 내용을 확인하였고 결제에 동의합니다.<br>

<input type="submit" value="충전">
</form>
</center>