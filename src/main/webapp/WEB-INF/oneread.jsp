<%@page import="com.dto.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
   function update(f){
	   f.action="update";
   }
   function del(f){
	   f.method="get";
	   f.action="delete";
   }
</script>
</head>
<body>

<form name="myForm" method="post">
<input type="hidden" name="num" value="${retrieve.num}">
글번호:${retrieve.num}&nbsp;&nbsp;작성자:${retrieve.author}
&nbsp;&nbsp;조회수:${retrieve.readCnt}<br>
제목<input type="text" name="title" value="${retrieve.title}"><br>
작성자<input type="text" name="author" value="${retrieve.author}"><br>
내용<textarea rows="10" cols="10" name="content" >${retrieve.content}</textarea>
<button  onclick="update(myForm);">수정</button>
<button onclick="del(myForm)">삭제</button><br>
</form>
<a href="list">목록보기</a><br>
</body>
</html>



