<%@page import="com.dto.BoardDTO"%>
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
<script type="text/javascript">
  
</script>
</head>
<body>


<input type="hidden" name="num" value="${oneread.num}">
제목<input type="text" name="title" value="${oneread.title}"><br>
작성자<input type="text" name="id" value="${oneread.id}"><br>
내용<textarea rows="10" cols="10" name="content" >${oneread.content}</textarea>

<form action="onereply" method="post">
<input type="hidden" name="num" value="${oneread.num}">
댓글<textarea rows="10" cols="10" name="reply" >${oneread.reply}</textarea>
<input type="hidden" name="situation" value="1">
<c:if test="${login.id == 'admin'}">
<input type="submit" value="댓글쓰기"><br>
</c:if>
</form>
<a href="olist">목록보기</a><br>
</body>
</html>



