<%@page import="com.dto.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<style>


</style>
<!-- 로그인, 로그아웃 버튼 -->

<c:set value="${login}" var="dto" ></c:set>
<c:if test="${empty dto}">
<button class="loginbtn" onclick="login()">Login</button>
</c:if>

<c:if test="${!empty dto}">
<button class="loginbtn" onclick="logout()">Logout</button>
</c:if>

<script type="text/javascript">

	function login() {
		location.href="login"
	}

	function logout() {
		location.href="LogOut"
	}
	
</script>
