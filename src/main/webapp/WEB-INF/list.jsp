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
<title>BBS List</title>
  <!-- 합쳐지고 최소화된 최신 CSS -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
   
   <!-- 부가적인 테마 -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
   
   <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

   <link rel="stylesheet" type="text/css" href="/css/style.css">
<title>Insert title here</title>
<style>
    #container {
      width: 70%;
      margin: 0 auto;     /* 가로로 중앙에 배치 */
      padding-top: 10%;   /* 테두리와 내용 사이의 패딩 여백 */
    }
     
    #list {
      text-align: center;
    }
   
    #write {
      text-align: right;
    }
     
    /* Bootstrap 수정 */
    .table > thead {
      background-color: #b3c6ff;
    }
    .table > thead > tr > th {
      text-align: center;
    }
    .table-hover > tbody > tr:hover {
      background-color: #e6ecff;
    }
    .table > tbody > tr > td {
      text-align: center;
    }
    .table > tbody > tr > #title {
      text-align: left;
    }
     
    div > #paging {
      text-align: center;
    }
     
    .hit {
      animation-name: blink;
      animation-duration: 1.5s;
      animation-timing-function: ease;
      animation-iteration-count: infinite;
      /* 위 속성들을 한 줄로 표기하기 */
      /* -webkit-animation: blink 1.5s ease infinite; */
    }
     
    /* 애니메이션 지점 설정하기 */
    /* 익스플로러 10 이상, 최신 모던 브라우저에서 지원 */
    @keyframes blink {
      from {color: white;}
      30% {color: yellow;}
      to {color: red; font-weight: bold;}
      /* 0% {color:white;}
      30% {color: yellow;}
      100% {color:red; font-weight: bold;} */
    }
  </style>

</head>
<jsp:include page="include/header.jsp" flush="true" />
<body>
<div id="list">
      <b>자유게시판</b>
    </div>
<table border="1">
 <!-- 검색 -->
  <tr>
   <td colspan="5">
   <form action="list" method="get">
    <select name="searchName">
        <option value="title">제목</option>
        <option value="id">작성자</option>
     </select>
     <input type="text" name="searchValue">
     <input type="submit" value="검색">
   </form> 
   </td>
  </tr>
 <!-- 검색 -->
 <div>
      <table class="table table-striped table-bordered table-hover">
        <thead>
          <tr>
            <th width="10%">번호</th>
            <th width="50%">제목</th>
            <th width="10%">작성자</th>
            <th width="20%">작성일</th>
            <th width="10%">조회</th>
          </tr>
        </thead>
        <tbody>
 <c:set var="pageDTO" value="${pageDTO}" />
 <c:set var="comDTO" value="${comDTO}" />

 
<c:forEach var="dto" items="${pageDTO.list}" varStatus="status">
<input type="hidden" name="commentNumber" value="${comDTO.commentNumber}">
<input type="hidden" name="id" value="${comDTO.id}">
<input type="hidden" name="commentContent" value="${comDTO.commentContent}">
<input type="hidden" name="commentDate" value="${comDTO.commentDate}">
 <tr>
  <td>${dto.num}</td>
  <td id="title">
                <c:if test="${dto.depth > 0}">
                <c:forEach var="i" begin="1" end="${dto.depth}">
                  <span>&nbsp;&nbsp;</span>
                  </c:forEach>
                </c:if>
                <c:if test="${dto.id == 'admin'}">
  <a href="read?num=${dto.num}" style="font-weight:bold">[공지사항] ${dto.title}</a>
  </c:if>
  <c:if test="${dto.id != 'admin'}">
  <a href="read?num=${dto.num}">${dto.title}</a>
  </c:if>
   <c:if test="${dto.readCnt >= 20}">
                  <span class="hit">hit!</span>
                </c:if>
  </td>
  <td>${dto.id}</td>
  <td>${dto.writeday}</td>
  <td>${dto.readCnt}</td>
 <tr>
</c:forEach>

</tbody>
      </table>
</div>
   <!-- 페이지번호 -->
  <tr>
  
   <td colspan="5"><jsp:include page="page.jsp" flush="true" /></td>
  </tr>
  <!-- 페이지번호 -->
  <div id="write">
<a href="writeUI">글쓰기</a>
</div>
</table>

</body>
</html>