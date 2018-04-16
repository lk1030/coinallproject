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

	.h2{
	color: 12418c !important;
    float:right;
    margin-bottom: 30px !important;
    /* text-align: -webkit-right ; */

    }
    
    .text-center {
    text-align: -webkit-right !important;
}


.form {
	float:right;
}
td {
	padding: 0;
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
                            <h2 class="py-3 text-center font-bold font-up blue-text">자유게시판</h2>
                        </div>
                        <!-- Grid column -->
                    </div>
                    <!-- Grid row -->
                    
                  <!-- 검색 -->
				  <tr>
				   <!-- <td colspan="5"> -->
				   <form class="search" action="list" method="get">
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
                    
                    
                    
                    <!-- <div class="input-group md-form form-sm form-2 pl-0">
                          <input class="form-control my-0 py-1 pl-3 purple-border" type="text" placeholder="Search something here..." aria-label="Search">
                          <span class="input-group-addon waves-effect purple lighten-2" id="basic-addon1"><a><i class="fa fa-search white-text" aria-hidden="true"></i></a></span>
                    </div> -->
                    <!--Table-->
                    <table class="table table-hover table-responsive mb-0">
                        <!--Table head-->
                        <thead>
                            <tr>
                                <th width="10%">번호</th>
					            <th width="50%">제목</th>
					            <th width="10%">작성자</th>
					            <th width="20%">작성일</th>
					            <th width="10%">조회</th>
                            </tr>
                        </thead>
                        <!--Table head-->
                        <!--Table body-->
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
                        <!--Table body-->
                    </table>
                    <!--Bottom Table UI-->
                    <div class="d-flex justify-content-center">
                        <!--Pagination -->
                        <nav class="my-4 pt-2">
                            <ul class="pagination pagination-circle pg-blue mb-0">
                                <!--First-->
                                <li class="page-item disabled clearfix d-none d-md-block"><a class="page-link">First</a></li>
                                <!--Arrow left-->
                                <li class="page-item disabled">
                                    <a class="page-link" aria-label="Previous">
                                            <span aria-hidden="true">«</span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                </li>
                                <!--Numbers-->
                                <li class="page-item active"><a class="page-link">1</a></li>
                                <li class="page-item"><a class="page-link">2</a></li>
                                <li class="page-item"><a class="page-link">3</a></li>
                                <li class="page-item"><a class="page-link">4</a></li>
                                <li class="page-item"><a class="page-link">5</a></li>
                                <!--Arrow right-->
                                <li class="page-item">
                                    <a class="page-link" aria-label="Next">
                                            <span aria-hidden="true">»</span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                </li>
                                <!--First-->
                                <li class="page-item clearfix d-none d-md-block"><a class="page-link">Last</a></li>
                            </ul>
                        </nav>
                        <!--/Pagination -->
                    </div>
                    <!--Bottom Table UI-->
                </div>
            </div>
          
          





<%-- <div id="list">
      <b>자유게시판</b>
    </div>
<table border="1">
 <!-- 검색 -->
  <tr>
   <!-- <td colspan="5"> -->
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
</table> --%>

</body>
</html>