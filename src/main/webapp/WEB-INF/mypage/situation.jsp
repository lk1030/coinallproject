<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>  
<!-- 자기 코인 현황 페이지(잔액조회 등) -->

<!-- 캐시 잔액 -->
<c:set value="${cashselect}" var="cashselect" ></c:set>


<c:set value="${bit}" var="bit" ></c:set>
<c:set value="${two}" var="two" ></c:set>
<c:set value="${three}" var="three" ></c:set>
<c:set value="${four}" var="four" ></c:set>
<c:set value="${five}" var="five" ></c:set>
<c:set value="${six}" var="six" ></c:set>
<c:set value="${seven}" var="seven" ></c:set>
<c:set value="${eight}" var="eight" ></c:set>
<c:set value="${nine}" var="nine" ></c:set>
<c:set value="${ten}" var="ten" ></c:set>
<c:set value="${allcount}" var="allcount"></c:set>

<c:set value="${bit.updown}" var="bitupdown" ></c:set>
<c:set value="${two.updown}" var="twoupdown" ></c:set>
<c:set value="${three.updown}" var="threeupdown" ></c:set>
<c:set value="${four.updown}" var="fourupdown" ></c:set>
<c:set value="${five.updown}" var="fiveupdown" ></c:set>
<c:set value="${six.updown}" var="sixupdown" ></c:set>
<c:set value="${seven.updown}" var="sevenupdown" ></c:set>
<c:set value="${eight.updown}" var="eightupdown" ></c:set>
<c:set value="${nine.updown}" var="nineupdown" ></c:set>
<c:set value="${ten.updown}" var="tenupdown" ></c:set>

<c:set value="${id}" var="userid" ></c:set>

<script>

$(document).ready(function(){
	
	myStorage = localStorage;


	localStorage.setItem('id',"${userid}");

	myStorage = localStorage;

	localStorage.setItem('id',"${userid}");
	
	var bitbyun = 0;
	var twobyun = 0;
	var threebyun = 0;
	var fourbyun = 0;
	var fivebyun = 0;
	var sixbyun = 0;
	var sevenbyun = 0;
	var eightbyun = 0;
	var ninebyun = 0;
	var tenbyun = 0;
		
	setInterval(function(){
		var bitsum = 0;
		var twosum = 0;
		var threesum = 0;
		var foursum = 0;
		var fivesum = 0;
		var sixsum = 0;
		var sevensum = 0;
		var eightsum = 0;
		var ninesum = 0;
		var tensum = 0;
		
		//1 ajax
		$.ajax({                  
	        type: "get",
	        url: "Bit",
	        dataType:"json",
	       //async: false,
	        
	        success:function(data,status,xhr){
	      		
	        		$(".1").text(parseInt(data[29]));
	        		
		        	bitbyun = parseInt(data[29])-parseInt("${bitupdown}");
		        	if(parseInt(bitbyun) < 0 ){
		        		$(".11").text(bitbyun+" ("+(bitbyun*0.001).toFixed(2)+"% )").css("color","blue");
		                $("#11").attr({
		                     src:"img/down.jpg"
		                });
		        	}else{
		        		$(".11").text(bitbyun+" ("+(bitbyun*0.001).toFixed(2)+"% )").css("color","red");
		                $("#11").attr({
		                     src:"img/up.jpg"
		                });
		        	}
		        	
		        	bitsum = parseInt(data[29])*parseInt("${bit.mycoin}");
		        	$(".31").text(bitsum);
	        		
	        }, //end success
	        error: function(xhr,status,e){
	              console.log("bit 에러");
	        }
	   }); //end ajax
	
		//2 ajax
		$.ajax({                  
	        type: "get",
	        url: "Two",
	        dataType:"json",
	       //async: false,
	        
	        success:function(data,status,xhr){
 		
		        $(".2").text(parseInt(data[29]));
		        
		        twobyun  = parseInt(data[29])-parseInt("${twoupdown}");
	        	if(parseInt(twobyun) < 0 ){
	        		$(".12").text(twobyun +" ("+(twobyun*0.001).toFixed(2)+"% )").css("color","blue");
	                $("#12").attr({
	                     src:"img/down.jpg"
	                });
	        	}else{
	        		$(".12").text(twobyun+" ("+(twobyun*0.001).toFixed(2)+"% )").css("color","red");
	                $("#12").attr({
	                     src:"img/up.jpg"
	                });
	        	}
	        	
	        	 twosum = parseInt(data[29])*parseInt("${two.mycoin}");
	        	$(".32").text(twosum);
					
	        }, //end success
	        error: function(xhr,status,e){
	              console.log("two 에러");
	        }
	   });
	   
		//3 ajax
			$.ajax({                  
	        type: "get",
	        url: "Three",
	        dataType:"json",
	       //async: false,
	        
	        success:function(data,status,xhr){
	
	        	$(".3").text(parseInt(data[29]));
	        	
	        	threebyun = parseInt(data[29])-parseInt("${threeupdown}");
	        	if(parseInt(threebyun) < 0 ){
	        		$(".13").text(threebyun+" ("+(threebyun*0.001).toFixed(2)+"% )").css("color","blue");
	                $("#13").attr({
	                     src:"img/down.jpg"
	                });
	        	}else{
	        		$(".13").text(threebyun+" ("+(threebyun*0.001).toFixed(2)+"% )").css("color","red");
	                $("#13").attr({
	                     src:"img/up.jpg"
	                });
	        	}
	        	
	        	threesum = parseInt(data[29])*parseInt("${three.mycoin}");
	        	$(".33").text(threesum);
	        	
	        }, //end success
	        error: function(xhr,status,e){
	              console.log("three 에러");
	        }
	   });
	   
		//4 ajax
		$.ajax({                  
	        type: "get",
	        url: "Four",
	        dataType:"json",
	       //async: false,
	        
	        success:function(data,status,xhr){
	        	
	        	$(".4").text(parseInt(data[29]));
	        	
	        	fourbyun = parseInt(data[29])-parseInt("${fourupdown}");
	        	if(parseInt(fourbyun) < 0 ){
	        		$(".14").text(fourbyun+" ("+(fourbyun*0.001).toFixed(2)+"% )").css("color","blue");
	                $("#14").attr({
	                     src:"img/down.jpg"
	                });
	        	}else{
	        		$(".14").text(fourbyun+" ("+(fourbyun*0.001).toFixed(2)+"% )").css("color","red");
	                $("#14").attr({
	                     src:"img/up.jpg"
	                });
	        	}
	        	
	        	foursum = parseInt(data[29])*parseInt("${four.mycoin}");
	        	$(".34").text(foursum);
	        	
	        }, //end success
	        error: function(xhr,status,e){
	              console.log("Four 에러");
	        }
	   });
		
		//5 ajax
		$.ajax({                  
	        type: "get",
	        url: "Five",
	        dataType:"json",
	       //async: false,
	        
	        success:function(data,status,xhr){
	        	
	        	$(".5").text(parseInt(data[29]));
	        	
	        	fivebyun = parseInt(data[29])-parseInt("${fiveupdown}");
	        	if(parseInt(fivebyun) < 0 ){
	        		$(".15").text(fivebyun+" ("+(fivebyun*0.001).toFixed(2)+"% )").css("color","blue");
	                $("#15").attr({
	                     src:"img/down.jpg"
	                });
	        	}else{
	        		$(".15").text(fivebyun+" ("+(fivebyun*0.001).toFixed(2)+"% )").css("color","red");
	                $("#15").attr({
	                     src:"img/up.jpg"
	                });
	        	}
	        	
	        	fivesum = parseInt(data[29])*parseInt("${five.mycoin}");
	        	$(".35").text(fivesum);
	        	
	        }, //end success
	        error: function(xhr,status,e){
	              console.log("Five 에러");
	        }
	   });
		
		//6 ajax
		$.ajax({                  
	        type: "get",
	        url: "Six",
	        dataType:"json",
	       //async: false,
	        
	        success:function(data,status,xhr){
	        	
	        	$(".6").text(parseInt(data[29]));
	        	
	        	sixbyun  = parseInt(data[29])-parseInt("${sixupdown}");
	        	if(parseInt(sixbyun) < 0 ){
	        		$(".16").text(sixbyun +" ("+(sixbyun *0.001).toFixed(2)+"% )").css("color","blue");
	                $("#16").attr({
	                     src:"img/down.jpg"
	                });
	        	}else{
	        		$(".16").text(sixbyun +" ("+(sixbyun *0.001).toFixed(2)+"% )").css("color","red");
	                $("#16").attr({
	                     src:"img/up.jpg"
	                });
	        	}
	        	
	        	sixsum = parseInt(data[29])*parseInt("${six.mycoin}");
	        	$(".36").text(sixsum);
	        	
	        }, //end success
	        error: function(xhr,status,e){
	              console.log("Six 에러");
	        }
	   });
		
		//7 ajax
		$.ajax({                  
	        type: "get",
	        url: "Seven",
	        dataType:"json",
	       //async: false,
	        
	        success:function(data,status,xhr){
	        	
	        	$(".7").text(parseInt(data[29]));
	        	
	        	sevenbyun = parseInt(data[29])-parseInt("${sevenupdown}");
	        	if(parseInt(sevenbyun) < 0 ){
	        		$(".17").text(sevenbyun+" ("+(sevenbyun*0.001).toFixed(2)+"% )").css("color","blue");
	                $("#17").attr({
	                     src:"img/down.jpg"
	                });
	        	}else{
	        		$(".17").text(sevenbyun+" ("+(sevenbyun*0.001).toFixed(2)+"% )").css("color","red");
	                $("#17").attr({
	                     src:"img/up.jpg"
	                });
	        	}
	        	
	        	sevensum = parseInt(data[29])*parseInt("${seven.mycoin}");
	        	$(".37").text(sevensum);
	        	
	        }, //end success
	        error: function(xhr,status,e){
	              console.log("Seven 에러");
	        }
	   });
		
		//8 ajax
		$.ajax({                  
	        type: "get",
	        url: "Eight",
	        dataType:"json",
	       //async: false,
	        
	        success:function(data,status,xhr){
	        	
	        	$(".8").text(parseInt(data[29]));
	        	
	        	eightbyun = parseInt(data[29])-parseInt("${eightupdown}");
	        	if(parseInt(eightbyun) < 0 ){
	        		$(".18").text(eightbyun+" ("+(eightbyun*0.001).toFixed(2)+"% )").css("color","blue");
	                $("#18").attr({
	                     src:"img/down.jpg"
	                });
	        	}else{
	        		$(".18").text(eightbyun+" ("+(eightbyun*0.001).toFixed(2)+"% )").css("color","red");
	                $("#18").attr({
	                     src:"img/up.jpg"
	                });
	        	}
	        	
	        	eightsum = parseInt(data[29])*parseInt("${eight.mycoin}");
	        	$(".38").text(eightsum);
	        	
	        }, //end success
	        error: function(xhr,status,e){
	              console.log("Eight 에러");
	        }
	   });
		
		//9 ajax
		$.ajax({                  
	        type: "get",
	        url: "Nine",
	        dataType:"json",
	       //async: false,
	        
	        success:function(data,status,xhr){
	        	
	        	$(".9").text(parseInt(data[29]));
	        	
	        	ninebyun = parseInt(data[29])-parseInt("${nineupdown}");
	        	if(parseInt(ninebyun) < 0 ){
	        		$(".19").text(ninebyun+" ("+(ninebyun*0.001).toFixed(2)+"% )").css("color","blue");
	                $("#19").attr({
	                     src:"img/down.jpg"
	                });
	        	}else{
	        		$(".19").text(ninebyun+" ("+(ninebyun*0.001).toFixed(2)+"% )").css("color","red");
	                $("#19").attr({
	                     src:"img/up.jpg"
	                });
	        	}
	        	
	        	ninesum = parseInt(data[29])*parseInt("${nine.mycoin}");
	        	$(".39").text(ninesum);
	        	
	        }, //end success
	        error: function(xhr,status,e){
	              console.log("Nine 에러");
	        }
	   });
		
		//10 ajax
		$.ajax({                  
	        type: "get",
	        url: "Ten",
	        dataType:"json",
	       //async: false,
	        
	        success:function(data,status,xhr){
	        	
	        	$(".10").text(parseInt(data[29]));
	        	
	        	tenbyun = parseInt(data[29])-parseInt("${tenupdown}");
	        	if(parseInt(tenbyun) < 0 ){
	        		$(".20").text(tenbyun+" ("+(tenbyun*0.001).toFixed(2)+"% )").css("color","blue");
	                $("#20").attr({
	                     src:"img/down.jpg"
	                });
	        	}else{
	        		$(".20").text(tenbyun+" ("+(tenbyun*0.001).toFixed(2)+"% )").css("color","red");
	                $("#20").attr({
	                     src:"img/up.jpg"
	                });
	        	}
	        	
	        	tensum = parseInt(data[29])*parseInt("${ten.mycoin}");
	        	$(".40").text(tensum);
	        	
	        }, //end success
	        error: function(xhr,status,e){
	              console.log("Ten 에러");
	        }
	   });
		
		} ,1000); //end setInterval
	});	//end ready
	
		</script>
		

<style>

table{
 width:900px;
 height: 200px;
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

buttion{
	text-align: left;

}

</style>



<jsp:include page="../include/header.jsp" flush="true" />

현재 충전 잔액 : ${cashselect}<br><!-- 지금 잔액을 표시 -->

현재 매수 코인 현황

<input type="hidden" id ="userid" value="${id}">

<table>
<tr>
<th>코인이름</th>
<th>보유코인</th>
<th>최근매수날짜</th>
<th>가격변동사항</th>
<th>낱개 현황</th>
<th>총 코인 보유 금액</th>
</tr>


	<c:set value="1" var="count"></c:set>
	<c:forEach var="i" begin="1" end="10">
		<c:set value="" var="coinname"></c:set>	
		<c:set value="" var="mycoin"></c:set>	
		<c:set value="" var="days"></c:set>	

	<c:set value="${imsi+1}" var="imsi"></c:set>	
	<c:set value="${10+i}" var="hyunsang"></c:set>	
	<c:set value="${30+i}" var="coinsum"></c:set>	
		
	<c:if test="${! empty bit and count==1}">
		<c:set value="${bit.coinname}" var="coinname"></c:set>	
		<c:set value="${bit.mycoin}" var="mycoin"></c:set>	
		<c:set value="${bit.days}" var="days"></c:set>

				
	</c:if>

	<c:if test="${! empty two  and count==2}">
		<c:set value="${two.coinname}" var="coinname"></c:set>	
		<c:set value="${two.mycoin}" var="mycoin"></c:set>	
		<c:set value="${two.days}" var="days"></c:set>	
	</c:if>

	<c:if test="${! empty three and count==3}">
		<c:set value="${three.coinname}" var="coinname"></c:set>	
		<c:set value="${three.mycoin}" var="mycoin"></c:set>	
		<c:set value="${three.days}" var="days"></c:set>		
	</c:if>

	<c:if test="${! empty four and count==4}">
		<c:set value="${four.coinname}" var="coinname"></c:set>	
		<c:set value="${four.mycoin}" var="mycoin"></c:set>	
		<c:set value="${four.days}" var="days"></c:set>		
	</c:if>
	
	<c:if test="${! empty five and count==5}">
		<c:set value="${five.coinname}" var="coinname"></c:set>	
		<c:set value="${five.mycoin}" var="mycoin"></c:set>	
		<c:set value="${five.days}" var="days"></c:set>		
	</c:if>
	
	<c:if test="${! empty six and count==6}">
		<c:set value="${six.coinname}" var="coinname"></c:set>	
		<c:set value="${six.mycoin}" var="mycoin"></c:set>	
		<c:set value="${six.days}" var="days"></c:set>		
	</c:if>

	<c:if test="${! empty seven and count==7}">
		<c:set value="${seven.coinname}" var="coinname"></c:set>	
		<c:set value="${seven.mycoin}" var="mycoin"></c:set>	
		<c:set value="${seven.days}" var="days"></c:set>		
	</c:if>
	
	<c:if test="${! empty eight and count==8}">
		<c:set value="${eight.coinname}" var="coinname"></c:set>	
		<c:set value="${eight.mycoin}" var="mycoin"></c:set>	
		<c:set value="${eight.days}" var="days"></c:set>		
	</c:if>

	<c:if test="${! empty nine and count==9}">
		<c:set value="${nine.coinname}" var="coinname"></c:set>	
		<c:set value="${nine.mycoin}" var="mycoin"></c:set>	
		<c:set value="${nine.days}" var="days"></c:set>		
	</c:if>
	
	<c:if test="${! empty ten and count==10}">
		<c:set value="${ten.coinname}" var="coinname"></c:set>	
		<c:set value="${ten.mycoin}" var="mycoin"></c:set>	
		<c:set value="${ten.days}" var="days"></c:set>		
	</c:if>

<c:set value="${i+1}" var="count"></c:set>

<c:if test="${! empty coinname}">
<tr>
<td>${coinname}</td>
<td>${mycoin}</td>
<td>${days}</td>
<td><span class="${hyunsang}"></span><img id="${hyunsang}"></td>
<td><span class="${imsi}"></span></td>
<td><span class="${coinsum}"></span></td>
</tr>
</c:if>
</c:forEach>
</table>

<input type="button" value="충전" onclick=""><!-- 충전 페이지로 이동 -->
<input type="button"value="캐시전환"onclick=""><!-- 전환페이지로 이동 페이지로 이동 -->
