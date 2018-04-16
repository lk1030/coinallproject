<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<!-- 가상화폐 캐시 전환 페이지 -->

<style>

table{
 width:500px;
 height: 200px;
 border-collapse: collapse;
 text-align: left;
 line-height: 1.5;
 border-top: 1px solid #ccc;
 border-bottom: 1px solid #ccc;
 margin: 20px 10px;
}

table th{
    width: 200px;
    padding: 10px;
    font-weight: bold;
    border-collapse: collapse;
    border-bottom: 1px solid #ccc;
    background: #e5fffa;
    text-align: center;
}

table td{
    width: 300px;
    padding: 10px;
    border-collapse: collapse;
    border-bottom: 1px solid #ccc;
}

table .bor{
	font-weight: bold;
	text-align: center;
}

 .gi{
	width: 200px;
}

input{
	width: 100px;
}


</style>
<jsp:include page="../include/header.jsp" flush="true" />






<center>
<table>
<tr>
<td colspan="2" class = "bor">가상화폐 캐시전환 정보 입력</td>
</tr>

<tr>
<th>코인이름</th>

<td>
<select>
<option>비트빈</option>
<option>레드코인</option>
<option>클록코인</option>
<option>오미세고</option>
<option>모나코인</option>
</select>
</td>
</tr>

<tr>
<th>전환 코인 갯수</th>
<td>
<input type="text">개
</td>
</tr>

<tr>
<th>전환 코인 낱개 현황</th>
<td>
2,500원
</td>
</tr>

<tr>
<th>총 전환 코인 금액</th>
<td>
25,000
</td>
</tr>

<tr>
<td colspan="2" class = "bor">사용자 확인</td>
</tr>

<tr>
<th>아이디</th>
<td>
<input type="text">
</td>
</tr>

<tr>
<th>비밀번호</th>
<td>
<input type="password">
</td>
</tr>

<tr>
<th>
전환 후 캐시 금액<br>
*수수료 10% 차감
</th>
<td>
22,500
</td>
</tr>

</table>
<button>전환</button>
<button>취소</button>
</center>