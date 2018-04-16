<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="write" method="post">
<c:if test="${login.id == 'admin'}">
공지사항 체크<input type="checkbox" name="notice"><br>
<input type="hidden" name="pos" value="1">
</c:if>
"<script type="text/javascript" src="../../../../../HuskyEZCreator.js" charset="UTF-8"></script>">
제목<input type="text" name="title"><br>
작성자<input type="text" name="id" value="${login.id}"><br>
내용<textarea rows="10" cols="10" name="content" id="post"></textarea>
<input type="submit" value="글작성"><br>
</form>
<a href="list">목록</a>
</body>
</html>