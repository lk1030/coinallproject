<%@page import="com.dto.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <style>
    #contentForm {
      width: 40%;
      margin: 0 auto;
      padding-top: 12%;
    }
 
    .table > thead > tr > th, .table > tbody > tr > th {
      background-color: #e6ecff;
      text-align: center;
    }
  </style>


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

<div id="contentForm">
        <input type="hidden" name="num" value="${retrieve.num}">
        
         
        <div class="input-group input-group-sm" role="group" aria-label="...">
        <table class="table table-striped table-bordered">
          <thead>
            <tr>
              <th width="30%">글쓴이</th>
              <td width="70%">${retrieve.id}</td>
            </tr>
            <tr>
              <th style="padding-top: 15px">제목</th>
              <td><input type="text" name="title" value="${retrieve.title}"
                    class="form-control" aria-describedby="basic-addon1"></td>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td colspan="2">
                <textarea class="form-control" rows="20" name="content" >${retrieve.content}</textarea>
              </td>
            </tr>
            
          </tbody>
        </table>
      </div>
      <div class="btn-group btn-group-sm" role="group" aria-label="...">
        <button  onclick="update(myForm);">수정</button>
<button onclick="del(myForm)">삭제</button><br>
</div>
</div>


</form>
<a href="list">목록보기</a><br>
</body>
</html>



