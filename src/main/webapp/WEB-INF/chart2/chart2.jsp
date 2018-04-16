<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script>
$(document).ready(function(){
	
	setInterval(function(){
		
		$.ajax({                  
	        type: "get",
	        url: "Bit",
	        dataType:"text",
	        
	        success:function(data,status,xhr){
	        	console.log(data);
	        	
	        }, //end success
	        error: function(xhr,status,e){
	              console.log("alphacoin 에러");
	        }
	   }); //end ajax
	
	
	} ,500); //end setInterval
});	//end ready

</script>

<style>

table{
 width:1200px;
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

</style>
 
 
 
 <jsp:include page="../include/header.jsp" flush="true" />
 <center>
 <table>
 
 <tr>
 <th>코인</th>
 <th>시가총액</th>
 <th>실시간 시세</th>
 <th>변동률</th>
 <th>매수/매도</th> 
 </tr>
 
 <!-- 비트코인 -->
 <tr>
 <td><img src="img/a.JPG" border="0" align="center" width="80" /></td>
 <td> </td>
 <td> </td>
 <td> </td>
 <td> </td>
 </tr>
 
  <!-- 이더리움 -->
 <tr>
 <td><img src="img/b.JPG" border="0" align="center" width="80" /></td>
 <td> </td>
 <td> </td>
 <td> </td>
 <td> </td>
 </tr>
 
  <!-- 리플 -->
  <tr>
 <td><img src="img/c.JPG" border="0" align="center" width="80" /></td>
 <td> </td>
 <td> </td>
 <td> </td>
 <td> </td>
 </tr>
 
  <!-- 라이트코인 -->
  <tr>
 <td><img src="img/d.JPG" border="0" align="center" width="80" /></td>
 <td> </td>
 <td> </td>
 <td> </td>
 <td> </td>
 </tr>
 
  <!-- 이오스 -->
  <tr>
 <td><img src="img/e.JPG" border="0" align="center" width="80" /></td>
 <td> </td>
 <td> </td>
 <td> </td>
 <td> </td>
 </tr>
 
  <!-- 모네로 -->
  <tr>
 <td><img src="img/f.JPG" border="0" align="center" width="80" /></td>
 <td> </td>
 <td> </td>
 <td> </td>
 <td> </td>
 </tr>
 
  <!-- 대시 -->
  <tr>
 <td><img src="img/g.JPG" border="0" align="center" width="80" /></td>
 <td> </td>
 <td> </td>
 <td> </td>
 <td> </td>
 </tr>
 
  <!-- 에이다 -->
  <tr>
 <td><img src="img/h.JPG" border="0" align="center" width="80" /></td>
 <td> </td>
 <td> </td>
 <td> </td>
 <td> </td>
 </tr>
 
  <!-- 퀀텀 -->
  <tr>
 <td><img src="img/i.JPG" border="0" align="center" width="80" /></td>
 <td> </td>
 <td> </td>
 <td> </td>
 <td> </td>
 </tr>
 
  <!-- 아이콘 -->
  <tr>
 <td><img src="img/j.JPG" border="0" align="center" width="80" /></td>
 <td> </td>
 <td> </td>
 <td> </td>
 <td> </td>
 </tr>
 
 </table>
 
 </center>