<%@page import="com.dto.PageDTO"%>
<%@page import="com.dto.BoardDTO"%>
<%@page import="com.dto.CommentDTO"%>
<%@page import="com.dto.ComDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- 합쳐지고 최소화된 최신 CSS -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
   
   <!-- 부가적인 테마 -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
   
   <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

   <link rel="stylesheet" type="text/css" href="/css/style.css">
<style>
    #contentForm {
      width: 40%;
      margin: 0 auto;
      padding-top: 12%;
    }
 
    .table > thead > tr > th, .table > tbody > tr > th {
      background-color: #e6ecff;
      text-align: center;
    }
  </style>

<title>Insert title here</title>
<script type="text/javascript">

/* function comment(f){
	   f.method="post";
	   f.action="writeComment";
} */

</script>

    



</head>
<body>
<jsp:include page="include/header.jsp" flush="true" />

<div id="contentForm">
        <input type="hidden" name="num" value="${read.num}">
        
         
        <div class="input-group input-group-sm" role="group" aria-label="...">
        <table class="table table-striped table-bordered">
          <thead>
            <tr>
              <th width="30%">글쓴이</th>
              <td width="70%"><input type="text" name="id" value="${read.id}" readonly="readonly"><br></td>
            </tr>
            <tr>
              <th style="padding-top: 15px">제목</th>
              <td><input type="text" name="title" value="${read.title}"
                    class="form-control" aria-describedby="basic-addon1"></td>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td colspan="2">
                <textarea class="form-control" rows="20" name="content" >${read.content}</textarea>
              </td>
            </tr>
            
          </tbody>
        </table>
      </div>
      
      



      
      
        
        
        <c:if test="${read.id == login.id}">
<br>
<a href="retrieve?num=${read.num}">수정</a><br>
<a href="retrieve?num=${read.num}">삭제</a><br>
</c:if>
<a href="reply?num=${read.num}">답글</a><br>
<a href="clist?num=${read.num}">댓글보기</a><br>
        </div>
    </div>


<form name="commentForm" method="post" action="writeComment">
<div class="input-group" role="group" aria-label="..." style="margin-top: 10px; width: 100%;">
    <textarea class="form-control" rows="3" name=COMMENT_CONTENT placeholder="댓글을 입력하세요." style="width: 100%;" ></textarea>
    <td width="70%"><input type="hidden" name="id" value="${read.id}"><br></td>
    <input type="hidden" name="num" value="${read.num}">
    <div class="btn-group btn-group-sm" role="group" aria-label="...">
        <input type="submit" value="댓글쓰기"><br>
     
     <tr>
              <td colspan="2">
                
              </td>
            </tr>
       
    </div>
</div>
 
<!-- Comment 태그 추가 -->
<div class="input-group" role="group" aria-label="..." style="margin-top: 10px; width: 100%;">
    <div id="showComment" style="text-align: center;"></div>
</div>
<div class="btn-group btn-group-sm" role="group" aria-label="...">
</form>

<div id="list">
      <b>댓글</b><br><br>
    </div>
<table border="1">
 <!-- 검색 -->
  <tr>
   <td colspan="5">
   
    
   
   </td>
  </tr>
 <!-- 검색 -->
 <div>
      <table class="table table-striped table-bordered table-hover">
        <thead>
          <tr>
            <th width="10%">작성자</th>
            <th width="20%">댓글내용</th>
            <th width="10%">작성일</th>
          </tr>
        </thead>
        <tbody>
 <c:set var="ComDTO" value="${ComDTO}" />
<c:forEach var="ComDTO" items="${ComDTO.clist}" varStatus="status">

 <tr>
  
  <td>${ComDTO.id}</td>
  <td>${ComDTO.COMMENT_CONTENT}</td>
  <td>${ComDTO.COMMENT_DATE}</td>
 </tr>

</c:forEach>
</tbody>
      </table>
</div>

  
</table>
<a href="list">목록보기</a><br>
</body>
</html>





<%-- 
<%@page import="com.dto.PageDTO"%>
<%@page import="com.dto.BoardDTO"%>
<%@page import="com.dto.CommentDTO"%>
<%@page import="com.dto.ComDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">

 <tr>
  <td>작성자</td>
  <td>댓글내용</td>
  <td>작성일</td>
  
 </tr>
 <c:set var="ComDTO" value="${ComDTO}" />
<c:forEach var="ComDTO" items="${ComDTO.clist}" varStatus="status">

 <tr>
  
  <td>${ComDTO.id}</td>
  <td>${ComDTO.COMMENT_CONTENT}</td>
  <td>${ComDTO.COMMENT_DATE}</td>
 </tr>

</c:forEach>


</table>
</body>
</html> --%>