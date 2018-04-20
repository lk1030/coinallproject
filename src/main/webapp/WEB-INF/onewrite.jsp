<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
 
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
                    <form action="onewrite" method="post">
                        <div class="form-group">
                        제목<input type="text" name="title">
                        작성자<input type="text" name="id" value="${login.id}"><br>
                            <textarea class="form-control" rows="3" name="content"></textarea>
                        </div>
                        <button type="submit" name="say" value="" class="btn btn-primary"><i class="fa fa-reply"></i> Submit</button>
                         <a href="olist">목록</a>
                    </form>
                </div>

                <hr>

                
            </div>
  
  
  
	</div>


 
 
 
 
 
 
 
    
<%-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="onewrite" method="post">
제목<input type="text" name="title"><br>
작성자<input type="text" name="id" value="${login.id}"><br>
내용<textarea rows="10" cols="10" name="content" ></textarea>
<input type="submit" value="글작성"><br>
</form>
<a href="olist">목록</a>
</body>
</html> --%>