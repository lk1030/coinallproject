<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> script>    
<style>

table{
 width:800px;
 height: 100px;
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
   <!-- 거래 내역 페이지 -->
   
   <!-- 판매 내역 테이블 -->
  <table>
  
  <tr>
  <th>판매 날짜</th>
  <th>판매 코인</th>
  <th>수량</th>
  <th>판매 금액</th>
  <th>판매 상태</th>

  </tr>
  
  <tr>
  <td>2018-02-22</td>
  <td>비트코인</td>
  <td>10개</td>
  <td>25,000</td>
  <td>완료 or 대기 or 취소</td>
  </tr>
 
  </table>
  
   <!-- 매수 내역 테이블 -->
   
     <table>
  
  <tr>
  <th>매수 날짜</th>
  <th>매수 코인</th>
  <th>수량</th>
  <th>매수 금액</th>
  <th>매수 상태</th>

  </tr>
  
  <tr>
  <td>2018-02-20</td>
  <td>비트코인</td>
  <td>10개</td>
  <td>25,000</td>
  <td>완료 or 대기 or 취소</td>
  </tr>
 
  </table>
  
  