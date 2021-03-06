<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<!-- 개인정보수정 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
var idcount = 1;  
var pwcount = 1;

    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;
                document.getElementById('postcode_h').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('address_h').value = fullAddr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
    
    $(document).ready(function () {
    	
    	$("form").on("submit",function (event){ 
    			
    		if(pwcount==1){
    			alert("비밀번호를 확인 해 주세요.");
    			event.preventDefault();
    		}else if($("#names").val().length <1){
    			alert("이름은 최소 2자리 이상입니다.");
    			event.preventDefault();
    		}else 
    			if($("#ph1").val().length+$("#ph2").val().length+$("#ph3").val().length<=9 || $("#ph1").val().length+$("#ph2").val().length+$("#ph3").val().length>12){
    			alert("핸드폰 번호를 확인 해 주세요.");
    			event.preventDefault();
    		}else if($("#sample6_address2").val().length <3){
    			alert("상세주소를 정확하게 적어주세요.");
    			event.preventDefault(); 
    		}else if($("#email").val().length <=1){
    			alert("이메일을 확인 해 주세요.");
    			event.preventDefault();   			
    		}else 
    			if($("#bank2").val().length !=10){
    			alert("계좌번호는 10자리 입니다.");
    			event.preventDefault();
    		}else if($("#bpw").val().length !=4){
    			alert("계좌비밀번호는 4자리 입니다.");
    			event.preventDefault(); 
    		}	
    });
    	  		
    	$("#pwjong").on("click",function (){ 
    		var pw = $("#pw").val()
    		var pw2 = $("#pw2").val()
    		
    		if(pw.length <=3){
    			alert("비빌번호를 최소 4자리 이상 적으세요.");
    		}else if(pw==pw2){
    			alert("비빌번호 확인이 완료되었습니다.");
    			pwcount = 0;
    		}else if(pw!=pw2){
    			alert("비빌번호가 다릅니다.");
    		}			
    	});  	
    	  	
    });
    
    
</script>


<c:set value="${login}" var="dto" ></c:set>

<jsp:include page="../include/header.jsp" flush="true" />
<style>

table{
 width:700px;
 height: 500px;
 border-collapse: collapse;
 text-align: left;
 line-height: 1.5;
 border-top: 1px solid #ccc;
 border-bottom: 1px solid #ccc;
 margin: 20px 10px;
}

table th{
    width: 150px;
    padding: 10px;
    font-weight: bold;
    border-collapse: collapse;
    border-bottom: 1px solid #ccc;
    background: #e5fffa;
}

table td{
    width: 350px;
    padding: 10px;
    border-collapse: collapse;
    border-bottom: 1px solid #ccc;
}

table .bor{
	font-weight: bold;
}

 .gi{
	width: 200px;
}

input{
	width: 100px;
}


</style>

<center>
<form action="UserSu" method="get">
<input type="hidden" name= "id" value="${dto.getId()}">


<table>

<tr>
<td colspan="2" align="center" class="bor">개인정보 수정</td>
</tr>


<tr>
<th align="center" class="backs">아이디</th>
<td>
${dto.getId()}
</td>
</tr>

<tr>
<th align="center">비밀번호</th>
<td><input type="password" name="pw" id = "pw"></td>
</tr>

<tr>
<th align="center" class="backs">비밀번호 확인</th>
<td class="backs">
<input type="password" id="pw2">&nbsp;<input type= "button" id ="pwjong" value="비밀번호 확인">
</td>
</tr>

<tr>
<th align="center">이름</th>
<td><input type="text" name="name" value="${dto.getName()}" id = "names"></td>
</tr>

<tr>
<th align="center" class="backs">휴대폰</th>
<td class="backs"><input type="text" name="ph1" value="${dto.getPh1()}" id ="ph1">-<input type="text" name="ph2" value="${dto.getPh2()}" id ="ph2">-<input type="text" name="ph3" value="${dto.getPh3()}" id ="ph3"></td>
</tr>

<tr>
<th align="center">우편번호</th>
<td>
<input type="text" id="sample6_postcode" placeholder="우편번호" disabled="disabled" value="${dto.getAddr1()}">&nbsp;
<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
<input type="text" id="sample6_address" placeholder="주소" class="gi" disabled="disabled" value="${dto.getAddr2()}">
<input type="text" id="sample6_address2" placeholder="상세주소" class="gi" name = "addr3" value="${dto.getAddr3()}">
<input type="hidden" id="address_h" placeholder="주소" class="gi" name = "addr2" value="${dto.getAddr2()}">
<input type="hidden" id="postcode_h" placeholder="우편번호" name = "addr1" value="${dto.getAddr1()}">
</td>
</tr>

<tr>
<th align="center" class="backs">이메일</th>
<td class="backs">
<input type="text" name = "email" value="${dto.getEmail()}" id = "email">@

	<c:if test="${dto.getEmail2()=='daum.net'}">
    <select name = "email2">
       <option value="daum.net" selected="selected">daum.net</option>
       <option value="naver.com">naver.com</option>
     </select>
     </c:if>
     <c:if test="${dto.getEmail2()=='naver.com'}">
    <select name = "email2">
       <option value="daum.net">daum.net</option>
       <option value="naver.com" selected="selected">naver.com</option>
     </select>
     </c:if>
</td>
</tr>

<tr>
<td colspan="2" align="center" class="bor">거래계좌 수정하기</td>
</tr>

<tr>
<th align="center" class="backs">은행</th>
<td class="backs">

<c:if test="${dto.getBank1()=='우리은행'}">
<select name="bank1">
<option selected="selected">우리은행</option>
<option>국민은행</option>
<option>신한은행</option>
</select>
</c:if>
<c:if test="${dto.getBank1()=='국민은행'}">
<select name="bank1">
<option>우리은행</option>
<option selected="selected">국민은행</option>
<option>신한은행</option>
</select>
</c:if>
<c:if test="${dto.getBank1()=='신한은행'}">
<select name="bank1">
<option>우리은행</option>
<option>국민은행</option>
<option selected="selected">신한은행</option>
</select>
</c:if>
</td>
</tr>

<tr>
<th align="center">계좌번호</th>
<td><input type="text" class="gi" name="bank2" value="${dto.getBank2()}" id = "bank2"></td>
</tr>

<tr>
<th align="center" class="backs">계좌비밀번호</th>
<td class="backs"><input type="password" name="bpw" id = "bpw"></td>
</tr>

</table>

<input type="submit" value="수정하기">
<button>취소</button>
</form>
</center>
