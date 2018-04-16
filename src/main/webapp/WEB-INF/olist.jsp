<%@page import="com.dto.OneBoardDTO"%>
<%@page import="com.dto.OneDTO"%>
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
  <td>글번호</td>
  <td>제목</td>
  <td>작성자</td>
  <td>작성일</td>
  <td>조회수</td>
 </tr>
 <c:set var="OneDTO" value="${OneDTO}" />
<c:forEach var="OneDTO" items="${OneDTO.olist}" varStatus="status">

 <tr>
  <td>${OneDTO.num}</td>
  <td><a href="oneread?num=${OneDTO.num}">${OneDTO.title}</a></td>
  <td>${OneDTO.id}</td>
  <td>${OneDTO.writeday}</td>
  <td>${OneDTO.situation}</td>
 </tr>

</c:forEach>
  
<a href="onewrite">글쓰기</a>
</table>
</body>
</html>