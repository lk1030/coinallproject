<%@page import="com.dto.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    


<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<jsp:include page="include/header.jsp" flush="true" />
<div class="container">
	
		<div class="row">
    	<script src="//tinymce.cachefly.net/4.0/tinymce.min.js"></script>
  <script>
          tinymce.init({
              selector: "textarea",
              plugins: [
                  "advlist autolink lists link image charmap print preview anchor",
                  "searchreplace visualblocks code fullscreen",
                  "insertdatetime media table contextmenu paste"
              ],
              toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
          });
  </script>
  
  
  
  
  <hr>

                <!-- the comment box -->
                <div class="well">
                    <h4><i class="fa fa-paper-plane-o"></i> 1:1문의하기:</h4>
                    
                        <div class="form-group">
                        <input type="hidden" name="num" value="${oneread.num}">
                        제목<input type="text" name="title" value="${oneread.title}">
작성자<input type="text" name="id" value="${oneread.id}"><br>
                            <textarea class="form-control" rows="3" name="content">${oneread.content}</textarea>
                        </div>
                        
                         <a href="olist">목록</a>
                   
                </div>

                <hr>

                
            </div>
  
  
  
	</div>


<!-- the comment box -->
                <div class="well">
                    <h4><i class="fa fa-paper-plane-o"></i> 답변:</h4>
                    
                        <div class="form-group">
                        <form action="onereply" method="post">
                        <input type="hidden" name="num" value="${oneread.num}">
                      
                            <textarea class="form-control" rows="3" name="reply">${oneread.reply}</textarea>
                        <input type="hidden" name="situation" value="1">
<c:if test="${login.id == 'admin'}">
<input type="submit" value="답변달기"><br>
</c:if>
</form>
                        </div>
                        
                         <a href="olist">목록</a>
                   
                </div>

                <hr>

                
            </div>
  
  
  
	</div>






<%-- <input type="hidden" name="num" value="${oneread.num}">
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
</html> --%>



