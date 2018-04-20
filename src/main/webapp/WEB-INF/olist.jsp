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
<title>BBS List</title>
  <!-- 합쳐지고 최소화된 최신 CSS -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
   
   <!-- 부가적인 테마 -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
   
   <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

   <link rel="stylesheet" type="text/css" href="css/style.css">
   <title>Insert title here</title>
<style>
 .hm-gradient {
    background-image: linear-gradient(to top, #f3e7e9 0%, #e3eeff 99%, #e3eeff 100%);
}
.darken-grey-text {
    color: #2E2E2E;
}
.input-group.md-form.form-sm.form-2 input {
    border: 1px solid #bdbdbd;
    border-top-left-radius: 0.25rem;
    border-bottom-left-radius: 0.25rem;
}
.input-group.md-form.form-sm.form-2 input.purple-border {
    border: 1px solid #9e9e9e;
}
.input-group.md-form.form-sm.form-2 input[type=text]:focus:not([readonly]).purple-border {
    border: 1px solid #ba68c8;
    box-shadow: none;
}
.form-2 .input-group-addon {
    border: 1px solid #ba68c8;
}
.danger-text {
    color: #ff3547; 
}  
.success-text {
    color: #00C851; 
}
.table-bordered.red-border, .table-bordered.red-border th, .table-bordered.red-border td {
    border: 1px solid #ff3547!important;
}        
.table.table-bordered th {
    text-align: center;
}
.card{
	width: 80%;
	margin: 0 auto;
}

	.py-3 text-center font-bold font-up blue-text{
	/* color: 12418c!important;
    float:right;
    margin-bottom: 30px !important; */
    /* text-align: -webkit-right ; */

    }
    
    .text-center {
    text-align: -webkit-right !important;
    color: 12418c !important;
    margin-bottom: 30px !important;
}


.form {
	float:right;	
}
td {
	padding: 0;
}

.pagination{
	display: inline-flex !important;
	padding: auto !important;
	border-radius: 0;
}
.search {
	float:right;
	margin-bottom: 30px;
}

  </style>
 
</head>
<jsp:include page="include/header.jsp" flush="true" />
<body>


<div class="card">
                <div class="card-body">
                    <!-- Grid row -->
                    <div class="row">
                        <!-- Grid column -->
                        <div class="col-md-12">
                            <h2 class="py-3 text-center font-bold font-up blue-text">1:1문의게시판</h2>
                        </div>
                        <!-- Grid column -->
                    </div>
                    <!-- Grid row -->
                    
                    
                    
<table class="table table-hover table-responsive mb-0">
<thead>
   <tr>
        <th width="10%">글번호</th>
		<th width="50%">제목</th>
		<th width="10%">작성자</th>
		<th width="20%">작성일</th>
		<th width="10%">답변상태</th>
 
   </tr>
</thead>
 <c:set var="OneDTO" value="${OneDTO}" />
<c:forEach var="OneDTO" items="${OneDTO.olist}" varStatus="status">
<c:choose>
<c:when test="${login.id == OneDTO.id}">
 <tr>
  <td>${OneDTO.num}</td>
  <td><a href="oneread?num=${OneDTO.num}">${OneDTO.title}</a></td>
  <td>${OneDTO.id}</td>
  <td>${OneDTO.writeday}</td>
  <c:if test="${OneDTO.situation == 0}">
  <td>답변대기</td>
  </c:if>
  <c:if test="${OneDTO.situation == 1}">
  <td>답변완료</td>
  </c:if>
 </tr>
</c:when>

<c:when test="${login.id == 'admin'}">
 <tr>
 <c:if test="${OneDTO.situation == 0}">
  <td>${OneDTO.num}</td>
  <td><a href="oneread?num=${OneDTO.num}">${OneDTO.title}</a></td>
  <td>${OneDTO.id}</td>
  <td>${OneDTO.writeday}</td>
  <td>답변대기</td>
  </c:if>
  
 </tr>
</c:when>

</c:choose>
</c:forEach>
  
<a href="onewriteUI">글쓰기</a>
</table>
</body>
</html>






<%-- <table border="1">

 <tr>
  <td>글번호</td>
  <td>제목</td>
  <td>작성자</td>
  <td>작성일</td>
  <td>답변상태</td>
 </tr>
 <c:set var="OneDTO" value="${OneDTO}" />
<c:forEach var="OneDTO" items="${OneDTO.olist}" varStatus="status">
<c:choose>
<c:when test="${login.id == OneDTO.id}">
 <tr>
  <td>${OneDTO.num}</td>
  <td><a href="oneread?num=${OneDTO.num}">${OneDTO.title}</a></td>
  <td>${OneDTO.id}</td>
  <td>${OneDTO.writeday}</td>
  <c:if test="${OneDTO.situation == 0}">
  <td>답변대기</td>
  </c:if>
  <c:if test="${OneDTO.situation == 1}">
  <td>답변완료</td>
  </c:if>
 </tr>
</c:when>

<c:when test="${login.id == 'admin'}">
 <tr>
 <c:if test="${OneDTO.situation == 0}">
  <td>${OneDTO.num}</td>
  <td><a href="oneread?num=${OneDTO.num}">${OneDTO.title}</a></td>
  <td>${OneDTO.id}</td>
  <td>${OneDTO.writeday}</td>
  <td>답변대기</td>
  </c:if>
  
 </tr>
</c:when>

</c:choose>
</c:forEach>
  
<a href="onewriteUI">글쓰기</a>
</table>
</body>
</html> --%>