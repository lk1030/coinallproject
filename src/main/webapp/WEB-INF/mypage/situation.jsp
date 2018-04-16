<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>  
<!-- 자기 코인 현황 페이지(잔액조회 등) -->

<!-- 
<script>

setInterval(function(){
    $.ajax({                  
        type: "get",
        url: "Deltacoin",
        dataType:"text",

        success: function(data,status,xhr){
        	if(deltacoin[29]==null){	
        		deltacoin.push(data);
        	}else if(deltacoin[29]!=null){
        		for(var i = 0; i<=29;i++){
        			if(i<29){
        				deltacoin2[i]=deltacoin[i+1]; 
        			}
        		}
        		for(var i = 0; i<=28;i++){
        			deltacoin[i] = null
        			deltacoin[i]=deltacoin2[i];
        		}
        		deltacoin[29]=data;
        	}
        }, //end success
        error: function(xhr,status,e){
              console.log("deltacoin 에러");
        }
   });
	
	},500); 


</script>
 -->
<style>

table{
 width:900px;
 height: 200px;
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

buttion{
	text-align: left;

}

</style>

<c:set value="${cashselect}" var="cashselect" ></c:set>
<c:set value="${prch}" var="prch" ></c:set>

<c:set value="${prch.coin29}-${prch.coin28}" var="cionm" ></c:set>
<c:set value="${prch.coin29}*${prch.nmbr}" var="chcionm" ></c:set>

<jsp:include page="../include/header.jsp" flush="true" />

현재 충전 잔액 : ${cashselect}<br><!-- 지금 잔액을 표시 -->

현재 매수 코인 현황

<table>
<tr>
<th>코인이름</th>
<th>보유코인</th>
<th>최근매수날짜</th>
<th>가격변동사항</th>
<th>낱개 현황</th>
<th>총 코인 보유 금액</th>
</tr>

<c:forEach var="i" begin="1" end="10">

<tr>
<td>${prch.coinname}</td>
<td>${prch.nmbr}</td>
<td>${prch.hyundete}</td>
<td>${cionm}</td>
<td>${prch.coin29}</td>
<td>${chcionm}</td>
<%-- <td>${prch.nmbr*prch.coin29}</td> --%>
</tr>
</c:forEach>

</table>

<input type="button" value="충전" onclick=""><!-- 충전 페이지로 이동 -->
<input type="button"value="캐시전환"onclick=""><!-- 전환페이지로 이동 페이지로 이동 -->
