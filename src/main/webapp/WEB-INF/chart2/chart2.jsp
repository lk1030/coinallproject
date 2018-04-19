<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script>

$(document).ready(function(){

	var bitcoin= [];
	var bitbyun = 0;
	var twocoin= [];
	var twobyun = 0;
	var threecoin= [];
	var threebyun = 0;
	var fourcoin= [];
	var fourbyun = 0;
	var fivecoin= [];
	var fivebyun = 0;
	var sixcoin= [];
	var sixbyun = 0;
	var sevencoin= [];
	var sevenbyun = 0;
	var eightcoin= [];
	var eightbyun = 0;
	var ninecoin= [];
	var ninebyun = 0;
	var tencoin= [];
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
	        	
	        	for(var i=0;i<30;i++){
	        		bitcoin[i]=parseInt(data[i]);
	        		bitsum+=parseInt(data[i]);
	        		}
	        	$("#bit30").text(bitcoin[29]);
	        	$("#bitsum").text(bitsum);
	        	
	        	
	        	bitbyun = parseInt(bitcoin[29])-parseInt(bitcoin[28]);
	        	if(bitbyun < 0 ){
	        		$("#bitbyun").text(bitbyun+" ("+(bitbyun*0.001).toFixed(2)+"% )").css("color","blue");
	                $("#bitimg").attr({
	                     src:"img/down.jpg"
	                });
	        	}else{
	        		$("#bitbyun").text(bitbyun+" ("+(bitbyun*0.001).toFixed(2)+"% )").css("color","red");
	                $("#bitimg").attr({
	                     src:"img/up.jpg"
	                });
	        	}
	        	

	        	//$("#bitbyun").text(bitbyun+" ("+(bitbyun*0.001).toFixed(2)+"% )");
	        	
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
	        	
	        	for(var i=0;i<30;i++){
	        		twocoin[i]=parseInt(data[i]);
	        		twosum+=parseInt(data[i]);
	        		}
	        	$("#two30").text(twocoin[29]);
	        	$("#twosum").text(twosum);
	        	
	        	twobyun = parseInt(twocoin[28])-parseInt(twocoin[29]);
	        	
	        	if(twobyun < 0 ){
	        		$("#twobyun").text(twobyun+" ("+(twobyun*0.001).toFixed(2)+"% )").css("color","blue");
	                $("#twoimg").attr({
	                     src:"img/down.jpg"
	                });
	        	}else{
	        		$("#twobyun").text(twobyun+" ("+(twobyun*0.001).toFixed(2)+"% )").css("color","red");
	                $("#twoimg").attr({
	                     src:"img/up.jpg"
	                });
	        	}
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
	        	
	        	for(var i=0;i<30;i++){
	        		threecoin[i]=parseInt(data[i]);
	        		threesum+=parseInt(data[i]);
	        		}
	        	$("#three30").text(threecoin[29]);
	        	$("#threesum").text(threesum);
	        	
	        	threebyun = parseInt(threecoin[28])-parseInt(threecoin[29]);
	        
	        	if(threebyun < 0 ){
	        		$("#threebyun").text(threebyun+" ("+(threebyun*0.001).toFixed(2)+"% )").css("color","blue");
	                $("#threeimg").attr({
	                     src:"img/down.jpg"
	                });
	        	}else{
	        		$("#threebyun").text(threebyun+" ("+(threebyun*0.001).toFixed(2)+"% )").css("color","red");
	                $("#threeimg").attr({
	                     src:"img/up.jpg"
	                });
	        	}
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
	        	
	        	for(var i=0;i<30;i++){
	        		fourcoin[i]=parseInt(data[i]);
	        		foursum+=parseInt(data[i]);
	        		}
	        	$("#four30").text(fourcoin[29]);
	        	$("#foursum").text(foursum);
	        	
	        	fourbyun = parseInt(fourcoin[28])-parseInt(fourcoin[29]);
	        	if(fourbyun < 0 ){
	        		$("#fourbyun").text(fourbyun+" ("+(fourbyun*0.001).toFixed(2)+"% )").css("color","blue");
	                $("#fourimg").attr({
	                     src:"img/down.jpg"
	                });
	        	}else{
	        		$("#fourbyun").text(fourbyun+" ("+(fourbyun*0.001).toFixed(2)+"% )").css("color","red");
	                $("#fourimg").attr({
	                     src:"img/up.jpg"
	                });
	        	}
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
	        	
	        	for(var i=0;i<30;i++){
	        		fivecoin[i]=parseInt(data[i]);
	        		fivesum+=parseInt(data[i]);
	        		}
	        	$("#five30").text(fivecoin[29]);
	        	$("#fivesum").text(fivesum);
	        	
	        	fivebyun = parseInt(fivecoin[28])-parseInt(fivecoin[29]);
	        	if(fivebyun < 0 ){
	        		$("#fivebyun").text(fivebyun+" ("+(fivebyun*0.001).toFixed(2)+"% )").css("color","blue");
	                $("#fiveimg").attr({
	                     src:"img/down.jpg"
	                });
	        	}else{
	        		$("#fivebyun").text(fivebyun+" ("+(fivebyun*0.001).toFixed(2)+"% )").css("color","red");
	                $("#fiveimg").attr({
	                     src:"img/up.jpg"
	                });
	        	}
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
	        	
	        	for(var i=0;i<30;i++){
	        		sixcoin[i]=parseInt(data[i]);
	        		sixsum+=parseInt(data[i]);
	        		}
	        	$("#six30").text(sixcoin[29]);
	        	$("#sixsum").text(sixsum);
	        	
	        	sixbyun = parseInt(sixcoin[28])-parseInt(sixcoin[29]);
	        	if(sixbyun < 0 ){
	        		$("#sixbyun").text(sixbyun+" ("+(sixbyun*0.001).toFixed(2)+"% )").css("color","blue");
	                $("#siximg").attr({
	                     src:"img/down.jpg"
	                });
	        	}else{
	        		$("#sixbyun").text(sixbyun+" ("+(sixbyun*0.001).toFixed(2)+"% )").css("color","red");
	                $("#siximg").attr({
	                     src:"img/up.jpg"
	                });
	        	}
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
	        	
	        	for(var i=0;i<30;i++){
	        		sevencoin[i]=parseInt(data[i]);
	        		sevensum+=parseInt(data[i]);
	        		}
	        	$("#seven30").text(sevencoin[29]);
	        	$("#sevensum").text(sevensum);
	        	
	        	sevenbyun = parseInt(sevencoin[28])-parseInt(sevencoin[29]);
	        	if(threebyun < 0 ){
	        		$("#sevenbyun").text(sevenbyun+" ("+(sevenbyun*0.001).toFixed(2)+"% )").css("color","blue");
	                $("#sevenimg").attr({
	                     src:"img/down.jpg"
	                });
	        	}else{
	        		$("#sevenbyun").text(sevenbyun+" ("+(sevenbyun*0.001).toFixed(2)+"% )").css("color","red");
	                $("#sevenimg").attr({
	                     src:"img/up.jpg"
	                });
	        	}
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
	        	
	        	for(var i=0;i<30;i++){
	        		eightcoin[i]=parseInt(data[i]);
	        		eightsum+=parseInt(data[i]);
	        		}
	        	$("#eight30").text(eightcoin[29]);
	        	$("#eightsum").text(eightsum);
	        	
	        	eightbyun = parseInt(eightcoin[28])-parseInt(eightcoin[29]);
	        	if(eightbyun < 0 ){
	        		$("#eightbyun").text(eightbyun+" ("+(eightbyun*0.001).toFixed(2)+"% )").css("color","blue");
	                $("#eightimg").attr({
	                     src:"img/down.jpg"
	                });
	        	}else{
	        		$("#eightbyun").text(eightbyun+" ("+(eightbyun*0.001).toFixed(2)+"% )").css("color","red");
	                $("#eightimg").attr({
	                     src:"img/up.jpg"
	                });
	        	}
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
	        	
	        	for(var i=0;i<30;i++){
	        		ninecoin[i]=parseInt(data[i]);
	        		ninesum+=parseInt(data[i]);
	        		}
	        	$("#nine30").text(ninecoin[29]);
	        	$("#ninesum").text(ninesum);
	        	
	        	ninebyun = parseInt(ninecoin[28])-parseInt(ninecoin[29]);
	        	if(threebyun < 0 ){
	        		$("#ninebyun").text(ninebyun+" ("+(ninebyun*0.001).toFixed(2)+"% )").css("color","blue");
	                $("#nineimg").attr({
	                     src:"img/down.jpg"
	                });
	        	}else{
	        		$("#ninebyun").text(ninebyun+" ("+(ninebyun*0.001).toFixed(2)+"% )").css("color","red");
	                $("#nineimg").attr({
	                     src:"img/up.jpg"
	                });
	        	}
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
	        	
	        	for(var i=0;i<30;i++){
	        		tencoin[i]=parseInt(data[i]);
	        		tensum+=parseInt(data[i]);
	        		}
	        	$("#ten30").text(tencoin[29]);
	        	$("#tensum").text(tensum);
	        	
	        	tenbyun = parseInt(tencoin[28])-parseInt(tencoin[29]);
	        	if(threebyun < 0 ){
	        		$("#tenbyun").text(tenbyun+" ("+(tenbyun*0.001).toFixed(2)+"% )").css("color","blue");
	                $("#tenimg").attr({
	                     src:"img/down.jpg"
	                });
	        	}else{
	        		$("#tenbyun").text(tenbyun+" ("+(tenbyun*0.001).toFixed(2)+"% )").css("color","red");
	                $("#tenimg").attr({
	                     src:"img/up.jpg"
	                });
	        	}
	        }, //end success
	        error: function(xhr,status,e){
	              console.log("Ten 에러");
	        }
	   });
		
		////////////차트
		function drawCurveTypes() {
	  //차트 스크립트1
      var data1 = new google.visualization.DataTable();
      
      data1.addColumn('number', 'X');
      data1.addColumn('number', 'Bitcoin');     
      
      data1.clone();
      
      data1.addRows([

    	  [1	,parseInt(bitcoin[0])],
    	  [2	,parseInt(bitcoin[1])],
    	  [3	,parseInt(bitcoin[2])],
    	  [4	,parseInt(bitcoin[3])],
    	  [5	,parseInt(bitcoin[4])],
    	  [6	,parseInt(bitcoin[5])],
    	  [7	,parseInt(bitcoin[6])],
    	  [8	,parseInt(bitcoin[7])],
    	  [9	,parseInt(bitcoin[8])],
    	  [10	,parseInt(bitcoin[9])],
    	  [11	,parseInt(bitcoin[10])],
    	  [12	,parseInt(bitcoin[11])],
    	  [13	,parseInt(bitcoin[12])],
    	  [14	,parseInt(bitcoin[13])],
    	  [15	,parseInt(bitcoin[14])],
    	  [16	,parseInt(bitcoin[15])],
    	  [17	,parseInt(bitcoin[16])],
    	  [18	,parseInt(bitcoin[17])],
    	  [19	,parseInt(bitcoin[18])],
    	  [20	,parseInt(bitcoin[19])],
    	  [21	,parseInt(bitcoin[20])],
    	  [22	,parseInt(bitcoin[21])],
    	  [23	,parseInt(bitcoin[22])],
    	  [24	,parseInt(bitcoin[23])],
    	  [25	,parseInt(bitcoin[24])],
    	  [26	,parseInt(bitcoin[25])],
    	  [27	,parseInt(bitcoin[26])],
    	  [28	,parseInt(bitcoin[27])],
    	  [29	,parseInt(bitcoin[28])],
    	  [30	,parseInt(bitcoin[29])]       	  	  
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
      
		/////////////////////차트 끝
		}
		
		
	} ,1000); //end setInterval
	
	
	
});	//end ready

</script>

<style>

table{
 width:1200px;
 height: 300px;
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

.cha{
	height: 500px;
	width: 1000px;
	display: inline-block;	
}

</style>
 
 
 
 <jsp:include page="../include/header.jsp" flush="true" />
 <center>
 <table>
 
 <tr>
 <th>코인</th>
 <th>시가총액</th>
 <th>실시간 시세</th>
 <th>변동률</th>
 <th>매수/매도</th> 
 </tr>
 
 <!-- 비트코인 -->
 <tr>
 <td><img src="img/a.JPG" border="0" align="center" width="80" /></td>
 <td><span id ="bitsum"></span></td>
 <td><span id ="bit30"></span> </td>
 <td><span id ="bitbyun"></span><img id="bitimg"></td>
 <td><input type="button" value="매수"><input type="button" value="매도"></td>
 </tr>
 
  <!-- 이더리움 -->
 <tr>
 <td><img src="img/b.JPG" border="0" align="center" width="80" /></td>
 <td><span id ="twosum"></span></td>
 <td><span id ="two30"></span> </td>
 <td><span id ="twobyun"></span><img id="twoimg"></td>
 <td><input type="button" value="매수"><input type="button" value="매도"></td>
 </tr>
 
  <!-- 리플 -->
  <tr>
 <td><img src="img/c.JPG" border="0" align="center" width="80" /></td>
 <td><span id ="threesum"></span></td>
 <td><span id ="three30"></span> </td>
 <td><span id ="threebyun"></span><img id="threeimg"></td>
 <td><input type="button" value="매수"><input type="button" value="매도"></td>
 </tr>
 
  <!-- 라이트코인 -->
  <tr>
 <td><img src="img/d.JPG" border="0" align="center" width="80" /></td>
 <td><span id ="foursum"></span></td>
 <td><span id ="four30"></span> </td>
 <td><span id ="fourbyun"></span><img id="fourimg"></td>
 <td><input type="button" value="매수"><input type="button" value="매도"></td>
 </tr>
 
  <!-- 이오스 -->
  <tr>
 <td><img src="img/e.JPG" border="0" align="center" width="80" /></td>
 <td><span id ="fivesum"></span></td>
 <td><span id ="five30"></span> </td>
 <td><span id ="fivebyun"></span><img id="fiveimg"></td>
 <td><input type="button" value="매수"><input type="button" value="매도"></td>
 </tr>
 
  <!-- 모네로 -->
  <tr>
 <td><img src="img/f.JPG" border="0" align="center" width="80" /></td>
 <td><span id ="sixsum"></span></td>
 <td><span id ="six30"></span> </td>
 <td><span id ="sixbyun"></span><img id="siximg"></td>
 <td><input type="button" value="매수"><input type="button" value="매도"></td>
 </tr>
 
  <!-- 대시 -->
  <tr>
 <td><img src="img/g.JPG" border="0" align="center" width="80" /></td>
 <td><span id ="sevensum"></span></td>
 <td><span id ="seven30"></span> </td>
 <td><span id ="sevenbyun"></span><img id="sevenimg"></td>
 <td><input type="button" value="매수"><input type="button" value="매도"></td>
 </tr>
 
  <!-- 에이다 -->
  <tr>
 <td><img src="img/h.JPG" border="0" align="center" width="80" /></td>
 <td><span id ="eightsum"></span></td>
 <td><span id ="eight30"></span> </td>
 <td><span id ="eightbyun"></span><img id="eightimg"></td>
 <td><input type="button" value="매수"><input type="button" value="매도"></td>
 </tr>
 
  <!-- 퀀텀 -->
  <tr>
 <td><img src="img/i.JPG" border="0" align="center" width="80" /></td>
 <td><span id ="ninesum"></span></td>
 <td><span id ="nine30"></span> </td>
 <td><span id ="ninebyun"></span><img id="nineimg"></td>
 <td><input type="button" value="매수"><input type="button" value="매도"></td>
 </tr>
 
  <!-- 아이콘 -->
  <tr>
 <td><img src="img/j.JPG" border="0" align="center" width="80" /></td>
 <td><span id ="tensum"></span></td>
 <td><span id ="ten30"></span> </td>
 <td><span id ="tenbyun"></span><img id="tenimg"></td>
 <td><input type="button" value="매수"><input type="button" value="매도"></td>
 </tr>
 
 </table>
 <div>
  <div id="chart_div1" class="cha"></div>
 </div>
 </center>