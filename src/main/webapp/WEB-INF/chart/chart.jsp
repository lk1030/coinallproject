<%@page import="com.dto.ChartDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<html>
<head>
	<!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	
	<!-- 부가적인 테마 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	
	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>

.container-fluid {
	margin: 10px 0;
	padding: 0;	
	
}
.cha{
	height: 500px;
	width: 1000px;
	display: inline-block;	
}

.contents{
	font-size: 1.2em;
	line-height: 1.5em;
}
.sell{
	width:300px;
	display: inline-block;
	border: 1px solid #aeaeae;	
	padding: 10px;
	margin: auto 0;
	position: fixed;
}

.select {
	margin: 10px auto;
	width: 100%;
	height: 40px;	
	border-bottom: 1px solid #12418c;
}
#up, #down {
	border: 1px solid #12418c;
	color: #12418c;
	font-size: 20px;
	padding:2px 10px;	
	margin-right:1px;
}
.count {
	margin-top: 20px;
	font-weight: bold;
} 
#buy {
	background-color: #12418c;
	color: #ffffff;
	border: 0;
	width:90%;
	height:7%;
	margin: 10px;
}
</style>

<script type="text/javascript">

var alphacoin= [];
var alphacoin2=[];

var betacoin= [];
var betacoin2= [];

var chariecoin= [];
var chariecoin2= [];

var deltacoin= [];
var deltacoin2= [];

var d = new Date();


$(document).ready(function(){
		$("#up").on("click",function(event)
			{
				var count = $("#quantity").val();
				$("#quantity").val(parseInt(count)+1);
				$("span3").text($("#quantity").val());
			});
		$("#down").on("click",function(event)
			{
				var count = $("#quantity").val();
				if(count!=1)
				{
					$("#quantity").val(parseInt(count)-1);
				}
				$("span3").text($("#quantity").val());				
			});
	
	
	$("#select").on("change",function(){	
		var str = $("#select").val();
		var total = $("#quantity").val();
		var month =d.getMonth()+1;		
		
		if(str == 'alphacoin') {
			$("span").text(alphacoin[29]+'a');	
			$("span4").text(alphacoin[29]*total);
			$("#coinname").val('alphacoin');
			$("#nmbr").val(total);
			$("#hyundete").val(d.getFullYear()+"-"+month+"-" + d.getDate());
			$("#coin28").val(parseInt(alphacoin[28]));
			$("#coin29").val(parseInt(alphacoin[29]));
			$("#px").val(parseInt(alphacoin[29]));
		}else if(str == 'betacoin') {
			$("span").text(betacoin[29]+'b');	
			$("span4").text(betacoin[29]*total)
			$("#coinname").val('betacoin');
			$("#nmbr").val(total);
			$("#hyundete").val(d.getFullYear()+"-"+month+"-" + d.getDate());
			$("#coin28").val(parseInt(betacoin[28]));
			$("#coin29").val(parseInt(betacoin[29]));
			$("#px").val(parseInt(betacoin[29]));
		} else if(str == 'chariecoin') {
			$("span").text(chariecoin[29]+'c');		
			$("span4").text(chariecoin[29]*total)
			$("#coinname").val('chariecoin');
			$("#nmbr").val(total);
			$("#hyundete").val(d.getFullYear()+"-"+month+"-" + d.getDate());
			$("#coin28").val(parseInt(chariecoin[28]));
			$("#coin29").val(parseInt(chariecoin[29]));
			$("#px").val(parseInt(chariecoin[29]));
		} else if(str == 'deltacoin') {
			$("span").text(deltacoin[29]+'d');		
			$("span4").text(deltacoin[29]*total)
			$("#coinname").val('deltacoin');
			$("#nmbr").val(total);
			$("#hyundete").val(d.getFullYear()+"-"+month+"-" + d.getDate());
			$("#coin28").val(parseInt(deltacoin[28]));
			$("#coin29").val(parseInt(deltacoin[29]));
			$("#px").val(parseInt(deltacoin[29]));
		} 		
	});		
});	
	
	




// coin값을 랜덤으로 뽑아 오는 코드
setInterval(function(){
   	//Alphacoin 가져오기
	$.ajax({                  
        type: "get",
        url: "Alphacoin",
        dataType:"text",

        success: function(data,status,xhr){
        	$("select").on("change",function()
        			{
        		
        		$("span1").text($(":selected").text());
        		
        		
        		
        			});
        	if(alphacoin[29]==null){	
        	alphacoin.push(data);
        	$("span").text(data);
        	$("span4").text(data*$("#quantity").val());
        	}else if(alphacoin[29]!=null){
        		for(var i = 0; i<=29;i++){
        			if(i<29){
        			alphacoin2[i]=alphacoin[i+1]; 
        			}
        		}
        		for(var i = 0; i<=28;i++){
        			alphacoin[i] = null
        			alphacoin[i]=alphacoin2[i];
        			$("span").text(data);
        			$("span4").text(data*$("#quantity").val());
        		}
        		alphacoin[29]=data;
        	}
        }, //end success
        error: function(xhr,status,e){
              console.log("alphacoin 에러");
        }
   });

   	
    //Betacoin 가져오기
     $.ajax({                  
        type: "get",
        url: "Betacoin",
        dataType:"text",

        success: function(data,status,xhr){
        	if(betacoin[29]==null){	
        		betacoin.push(data);
        	}else if(betacoin[29]!=null){
        		for(var i = 0; i<=29;i++){
        			if(i<29){
        				betacoin2[i]=betacoin[i+1]; 
        			}
        		}
        		for(var i = 0; i<=28;i++){
        			betacoin[i] = null
        			betacoin[i]=betacoin2[i];
        		}
        		betacoin[29]=data;
        	}
        }, //end success
        error: function(xhr,status,e){
              console.log("betacoin 에러");
        }
   }); 
    //chariecoin 가져오기
    $.ajax({                  
        type: "get",
        url: "Chariecoin",
        dataType:"text",

        success: function(data,status,xhr){
        	if(chariecoin[29]==null){	
        		chariecoin.push(data);
        	}else if(chariecoin[29]!=null){
        		for(var i = 0; i<=29;i++){
        			if(i<29){
        				chariecoin2[i]=chariecoin[i+1]; 
        			}
        		}
        		for(var i = 0; i<=28;i++){
        			chariecoin[i] = null
        			chariecoin[i]=chariecoin2[i];
        		}
        		chariecoin[29]=data;
        	}
        }, //end success
        error: function(xhr,status,e){
              console.log("chariecoin 에러");
        }
   }); 
    //deltacoin 가져오기
     $.ajax({                  
        type: "get",
        url: "Deltacoin",
        dataType:"text",

        success: function(data,status,xhr){
        	if(deltacoin[29]==null){	
        		deltacoin.push(data);
        	}else if(deltacoin[29]!=null){
        		for(var i = 0; i<=29;i++){
        			if(i<29){
        				deltacoin2[i]=deltacoin[i+1]; 
        			}
        		}
        		for(var i = 0; i<=28;i++){
        			deltacoin[i] = null
        			deltacoin[i]=deltacoin2[i];
        		}
        		deltacoin[29]=data;
        	}
        }, //end success
        error: function(xhr,status,e){
              console.log("deltacoin 에러");
        } 
   }); 
    
   
    google.charts.load('current', {packages: ['corechart', 'line']});
	google.charts.setOnLoadCallback(drawCurveTypes);

function drawCurveTypes() {
	  //차트 스크립트1
      var data1 = new google.visualization.DataTable();
      
      data1.addColumn('number', 'X');
      data1.addColumn('number', 'alphacoin;');     
      
      data1.clone();
      
      data1.addRows([

    	  [1	,parseInt(alphacoin[0])],
    	  [2	,parseInt(alphacoin[1])],
    	  [3	,parseInt(alphacoin[2])],
    	  [4	,parseInt(alphacoin[3])],
    	  [5	,parseInt(alphacoin[4])],
    	  [6	,parseInt(alphacoin[5])],
    	  [7	,parseInt(alphacoin[6])],
    	  [8	,parseInt(alphacoin[7])],
    	  [9	,parseInt(alphacoin[8])],
    	  [10	,parseInt(alphacoin[9])],
    	  [11	,parseInt(alphacoin[10])],
    	  [12	,parseInt(alphacoin[11])],
    	  [13	,parseInt(alphacoin[12])],
    	  [14	,parseInt(alphacoin[13])],
    	  [15	,parseInt(alphacoin[14])],
    	  [16	,parseInt(alphacoin[15])],
    	  [17	,parseInt(alphacoin[16])],
    	  [18	,parseInt(alphacoin[17])],
    	  [19	,parseInt(alphacoin[18])],
    	  [20	,parseInt(alphacoin[19])],
    	  [21	,parseInt(alphacoin[20])],
    	  [22	,parseInt(alphacoin[21])],
    	  [23	,parseInt(alphacoin[22])],
    	  [24	,parseInt(alphacoin[23])],
    	  [25	,parseInt(alphacoin[24])],
    	  [26	,parseInt(alphacoin[25])],
    	  [27	,parseInt(alphacoin[26])],
    	  [28	,parseInt(alphacoin[27])],
    	  [29	,parseInt(alphacoin[28])],
    	  [30	,parseInt(alphacoin[29])]       	  	  
          ]);
      
      //차트 스크립트2
	  var data2 = new google.visualization.DataTable();
      
	  data2.addColumn('number', 'X');	  
	  data2.addColumn('number', 'betacoin;');	  
      
      data2.clone();
      
      data2.addRows([

    	  [1	,parseInt(betacoin[0])],
    	  [2	,parseInt(betacoin[1])],
    	  [3	,parseInt(betacoin[2])],
    	  [4	,parseInt(betacoin[3])],
    	  [5	,parseInt(betacoin[4])],
    	  [6	,parseInt(betacoin[5])],
    	  [7	,parseInt(betacoin[6])],
    	  [8	,parseInt(betacoin[7])],
    	  [9	,parseInt(betacoin[8])],
    	  [10	,parseInt(betacoin[9])],
    	  [11	,parseInt(betacoin[10])],
    	  [12	,parseInt(betacoin[11])],
    	  [13	,parseInt(betacoin[12])],
    	  [14	,parseInt(betacoin[13])],
    	  [15	,parseInt(betacoin[14])],
    	  [16	,parseInt(betacoin[15])],
    	  [17	,parseInt(betacoin[16])],
    	  [18	,parseInt(betacoin[17])],
    	  [19	,parseInt(betacoin[18])],
    	  [20	,parseInt(betacoin[19])],
    	  [21	,parseInt(betacoin[20])],
    	  [22	,parseInt(betacoin[21])],
    	  [23	,parseInt(betacoin[22])],
    	  [24	,parseInt(betacoin[23])],
    	  [25	,parseInt(betacoin[24])],
    	  [26	,parseInt(betacoin[25])],
    	  [27	,parseInt(betacoin[26])],
    	  [28	,parseInt(betacoin[27])],
    	  [29	,parseInt(betacoin[28])],
    	  [30	,parseInt(betacoin[29])] 	  
    	  ]);
      
    //차트 스크립트3
	  var data3 = new google.visualization.DataTable();
      
	  data3.addColumn('number', 'X');	  
	  data3.addColumn('number', 'chariecoin;');	  
      
      data3.clone();
      
      data3.addRows([

    	  [1	,parseInt(chariecoin[0])],
    	  [2	,parseInt(chariecoin[1])],
    	  [3	,parseInt(chariecoin[2])],
    	  [4	,parseInt(chariecoin[3])],
    	  [5	,parseInt(chariecoin[4])],
    	  [6	,parseInt(chariecoin[5])],
    	  [7	,parseInt(chariecoin[6])],
    	  [8	,parseInt(chariecoin[7])],
    	  [9	,parseInt(chariecoin[8])],
    	  [10	,parseInt(chariecoin[9])],
    	  [11	,parseInt(chariecoin[10])],
    	  [12	,parseInt(chariecoin[11])],
    	  [13	,parseInt(chariecoin[12])],
    	  [14	,parseInt(chariecoin[13])],
    	  [15	,parseInt(chariecoin[14])],
    	  [16	,parseInt(chariecoin[15])],
    	  [17	,parseInt(chariecoin[16])],
    	  [18	,parseInt(chariecoin[17])],
    	  [19	,parseInt(chariecoin[18])],
    	  [20	,parseInt(chariecoin[19])],
    	  [21	,parseInt(chariecoin[20])],
    	  [22	,parseInt(chariecoin[21])],
    	  [23	,parseInt(chariecoin[22])],
    	  [24	,parseInt(chariecoin[23])],
    	  [25	,parseInt(chariecoin[24])],
    	  [26	,parseInt(chariecoin[25])],
    	  [27	,parseInt(chariecoin[26])],
    	  [28	,parseInt(chariecoin[27])],
    	  [29	,parseInt(chariecoin[28])],
    	  [30	,parseInt(chariecoin[29])]       	  	  
          ]);
      
    //차트 스크립트4
	  var data4 = new google.visualization.DataTable();
      
	  data4.addColumn('number', 'X');	  
	  data4.addColumn('number', 'deltacoin;');	  
      
      data4.clone();
      
      data4.addRows([

    	  [1	,parseInt(deltacoin[0])],
    	  [2	,parseInt(deltacoin[1])],
    	  [3	,parseInt(deltacoin[2])],
    	  [4	,parseInt(deltacoin[3])],
    	  [5	,parseInt(deltacoin[4])],
    	  [6	,parseInt(deltacoin[5])],
    	  [7	,parseInt(deltacoin[6])],
    	  [8	,parseInt(deltacoin[7])],
    	  [9	,parseInt(deltacoin[8])],
    	  [10	,parseInt(deltacoin[9])],
    	  [11	,parseInt(deltacoin[10])],
    	  [12	,parseInt(deltacoin[11])],
    	  [13	,parseInt(deltacoin[12])],
    	  [14	,parseInt(deltacoin[13])],
    	  [15	,parseInt(deltacoin[14])],
    	  [16	,parseInt(deltacoin[15])],
    	  [17	,parseInt(deltacoin[16])],
    	  [18	,parseInt(deltacoin[17])],
    	  [19	,parseInt(deltacoin[18])],
    	  [20	,parseInt(deltacoin[19])],
    	  [21	,parseInt(deltacoin[20])],
    	  [22	,parseInt(deltacoin[21])],
    	  [23	,parseInt(deltacoin[22])],
    	  [24	,parseInt(deltacoin[23])],
    	  [25	,parseInt(deltacoin[24])],
    	  [26	,parseInt(deltacoin[25])],
    	  [27	,parseInt(deltacoin[26])],
    	  [28	,parseInt(deltacoin[27])],
    	  [29	,parseInt(deltacoin[28])],
    	  [30	,parseInt(deltacoin[29])]       	  	  
          ]);

      var options = {
        hAxis: {
          title: 'Time'
        },
        vAxis: {
          title: 'Popularity'
        },
        series: {
          1: {curveType: 'function'}
        }
      };
	
      var chart1 = new google.visualization.LineChart(document.getElementById('chart_div1'));
      chart1.draw(data1, options); 
      
      var chart2 = new google.visualization.LineChart(document.getElementById('chart_div2'));
      chart2.draw(data2, options);     
      
      var chart3 = new google.visualization.LineChart(document.getElementById('chart_div3'));
      chart3.draw(data3, options);
      
      var chart4 = new google.visualization.LineChart(document.getElementById('chart_div4'));
      chart4.draw(data4, options);
    }
} ,500);   
 
</script>
 <jsp:include page="../include/header.jsp" flush="true" />
 

<body> 

<div>
  <div id="chart_div1" class="cha"></div>

  <div id="sell_div" class="sell">
	<h3>코인종류 변경</h3> 
	<select id="select" class="select">
	<option value="alphacoin">A코인</option>
	<option value="betacoin">B코인</option>
	<option value="chariecoin">C코인</option>
	<option value="deltacoin">D코인</option>
	</select><br>
	
<c:set value="${login}" var="dto" ></c:set>
<c:set value="${dto.getId()}" var="id" ></c:set>

	<div class="contents">
	아이디: ${login.id}<br>
	잔액: ${cashselect}원<br>
	
	<span1></span1> 가격: <span></span>원<br>
	수량: <span3></span3>개<br>
	합산: <span4></span4>원<br>
	<p class="count">갯수</p><input type="text" name="quantity"  id="quantity" value="1">
	<button id="up">+</button><button id="down">-</button><br>
<form action="Purchase">
	<input type="submit" value="구매하기" id="buy">
	</div>
  </div>
  <div id="chart_div2" class="cha"></div>
  <div id="chart_div3" class="cha"></div>
  <div id="chart_div4" class="cha"></div>
</div>

<input type="hidden" name="id" id ="id" value="1">
<input type="hidden" name="coinname"  id ="coinname">
<input type="hidden" name="nmbr"  id ="nmbr">
<input type="hidden" name="hyundete"  id ="hyundete">
<input type="hidden" name="coin28"  id ="coin28">
<input type="hidden" name="coin29"  id ="coin29">
<input type="hidden" name="px"  id ="px">
</form>


</body>


    