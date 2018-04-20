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
	
	 var options = null ;
	 
	 var chart1 = null;
	 var data1 = null;
	
	 var chart2 = null;
	 var data2 = null;
	 
	 var chart3 = null;
	 var data3 = null;
	
	 var chart4 = null;
	 var data4 = null;
	 
	 var chart5 = null;
	 var data5 = null;
	
	 var chart6 = null;
	 var data6 = null;
	 
	 var chart7 = null;
	 var data7 = null;
	 
	 var chart8 = null;
	 var data8 = null;
	 
	 var chart9 = null;
	 var data9 = null;
	 
	 var chart10 = null;
	 var data10 = null;
	
	
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
	        	if(parseInt(bitbyun) < 0 ){
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
	        	
	        	if(parseInt(twobyun) < 0 ){
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
	        
	        	if(parseInt(threebyun) < 0 ){
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
	        	if(parseInt(fourbyun) < 0 ){
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
	        	if(parseInt(fivebyun) < 0 ){
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
	        	if(parseInt(sixbyun) < 0 ){
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
	        	if(parseInt(sevenbyun) < 0 ){
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
	        	if(parseInt(eightbyun) < 0 ){
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
	        	if(parseInt(ninebyun) < 0 ){
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
	        	if(parseInt(tenbyun) < 0 ){
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
	google.charts.load('current', {packages: ['corechart', 'line']});
	google.charts.setOnLoadCallback(drawCurveTypes);	
	

	 
	function drawCurveTypes() {
	  //차트 스크립트1
      data1 = new google.visualization.DataTable();

      data1.addColumn('number', 'X');
      data1.addColumn('number', '비트코인');     
      
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
      
      data2 = new google.visualization.DataTable();
      
      data2.addColumn('number', 'X');
      data2.addColumn('number', '이더리움');     
      
      data2.clone();
      
      data2.addRows([

    	  [1	,parseInt(twocoin[0])],
    	  [2	,parseInt(twocoin[1])],
    	  [3	,parseInt(twocoin[2])],
    	  [4	,parseInt(twocoin[3])],
    	  [5	,parseInt(twocoin[4])],
    	  [6	,parseInt(twocoin[5])],
    	  [7	,parseInt(twocoin[6])],
    	  [8	,parseInt(twocoin[7])],
    	  [9	,parseInt(twocoin[8])],
    	  [10	,parseInt(twocoin[9])],
    	  [11	,parseInt(twocoin[10])],
    	  [12	,parseInt(twocoin[11])],
    	  [13	,parseInt(twocoin[12])],
    	  [14	,parseInt(twocoin[13])],
    	  [15	,parseInt(twocoin[14])],
    	  [16	,parseInt(twocoin[15])],
    	  [17	,parseInt(twocoin[16])],
    	  [18	,parseInt(twocoin[17])],
    	  [19	,parseInt(twocoin[18])],
    	  [20	,parseInt(twocoin[19])],
    	  [21	,parseInt(twocoin[20])],
    	  [22	,parseInt(twocoin[21])],
    	  [23	,parseInt(twocoin[22])],
    	  [24	,parseInt(twocoin[23])],
    	  [25	,parseInt(twocoin[24])],
    	  [26	,parseInt(twocoin[25])],
    	  [27	,parseInt(twocoin[26])],
    	  [28	,parseInt(twocoin[27])],
    	  [29	,parseInt(twocoin[28])],
    	  [30	,parseInt(twocoin[29])]       	  	  
          ]);
      
      data3 = new google.visualization.DataTable();
 
      data3.addColumn('number', 'X');
      data3.addColumn('number', '리플');     
      
      data3.clone();
      
      data3.addRows([

		  [1	,parseInt(threecoin[0])],
    	  [2	,parseInt(threecoin[1])],
    	  [3	,parseInt(threecoin[2])],
    	  [4	,parseInt(threecoin[3])],
    	  [5	,parseInt(threecoin[4])],
    	  [6	,parseInt(threecoin[5])],
    	  [7	,parseInt(threecoin[6])],
    	  [8	,parseInt(threecoin[7])],
    	  [9	,parseInt(threecoin[8])],
    	  [10	,parseInt(threecoin[9])],
    	  [11	,parseInt(threecoin[10])],
    	  [12	,parseInt(threecoin[11])],
    	  [13	,parseInt(threecoin[12])],
    	  [14	,parseInt(threecoin[13])],
    	  [15	,parseInt(threecoin[14])],
    	  [16	,parseInt(threecoin[15])],
    	  [17	,parseInt(threecoin[16])],
    	  [18	,parseInt(threecoin[17])],
    	  [19	,parseInt(threecoin[18])],
    	  [20	,parseInt(threecoin[19])],
    	  [21	,parseInt(threecoin[20])],
    	  [22	,parseInt(threecoin[21])],
    	  [23	,parseInt(threecoin[22])],
    	  [24	,parseInt(threecoin[23])],
    	  [25	,parseInt(threecoin[24])],
    	  [26	,parseInt(threecoin[25])],
    	  [27	,parseInt(threecoin[26])],
    	  [28	,parseInt(threecoin[27])],
    	  [29	,parseInt(threecoin[28])],
    	  [30	,parseInt(threecoin[29])]       	  	  
          ]);

      
      data4 = new google.visualization.DataTable();
      
      data4.addColumn('number', 'X');
      data4.addColumn('number', '라이트코인');     
      
      data4.clone();
      
      data4.addRows([

    	  [1	,parseInt(fourcoin[0])],
    	  [2	,parseInt(fourcoin[1])],
    	  [3	,parseInt(fourcoin[2])],
    	  [4	,parseInt(fourcoin[3])],
    	  [5	,parseInt(fourcoin[4])],
    	  [6	,parseInt(fourcoin[5])],
    	  [7	,parseInt(fourcoin[6])],
    	  [8	,parseInt(fourcoin[7])],
    	  [9	,parseInt(fourcoin[8])],
    	  [10	,parseInt(fourcoin[9])],
    	  [11	,parseInt(fourcoin[10])],
    	  [12	,parseInt(fourcoin[11])],
    	  [13	,parseInt(fourcoin[12])],
    	  [14	,parseInt(fourcoin[13])],
    	  [15	,parseInt(fourcoin[14])],
    	  [16	,parseInt(fourcoin[15])],
    	  [17	,parseInt(fourcoin[16])],
    	  [18	,parseInt(fourcoin[17])],
    	  [19	,parseInt(fourcoin[18])],
    	  [20	,parseInt(fourcoin[19])],
    	  [21	,parseInt(fourcoin[20])],
    	  [22	,parseInt(fourcoin[21])],
    	  [23	,parseInt(fourcoin[22])],
    	  [24	,parseInt(fourcoin[23])],
    	  [25	,parseInt(fourcoin[24])],
    	  [26	,parseInt(fourcoin[25])],
    	  [27	,parseInt(fourcoin[26])],
    	  [28	,parseInt(fourcoin[27])],
    	  [29	,parseInt(fourcoin[28])],
    	  [30	,parseInt(fourcoin[29])]       	  	  
          ]);
 
      data5 = new google.visualization.DataTable();
      
      data5.addColumn('number', 'X');
      data5.addColumn('number', '이오스');     
      
      data5.clone();
      
      data5.addRows([

    	  [1	,parseInt(fivecoin[0])],
    	  [2	,parseInt(fivecoin[1])],
    	  [3	,parseInt(fivecoin[2])],
    	  [4	,parseInt(fivecoin[3])],
    	  [5	,parseInt(fivecoin[4])],
    	  [6	,parseInt(fivecoin[5])],
    	  [7	,parseInt(fivecoin[6])],
    	  [8	,parseInt(fivecoin[7])],
    	  [9	,parseInt(fivecoin[8])],
    	  [10	,parseInt(fivecoin[9])],
    	  [11	,parseInt(fivecoin[10])],
    	  [12	,parseInt(fivecoin[11])],
    	  [13	,parseInt(fivecoin[12])],
    	  [14	,parseInt(fivecoin[13])],
    	  [15	,parseInt(fivecoin[14])],
    	  [16	,parseInt(fivecoin[15])],
    	  [17	,parseInt(fivecoin[16])],
    	  [18	,parseInt(fivecoin[17])],
    	  [19	,parseInt(fivecoin[18])],
    	  [20	,parseInt(fivecoin[19])],
    	  [21	,parseInt(fivecoin[20])],
    	  [22	,parseInt(fivecoin[21])],
    	  [23	,parseInt(fivecoin[22])],
    	  [24	,parseInt(fivecoin[23])],
    	  [25	,parseInt(fivecoin[24])],
    	  [26	,parseInt(fivecoin[25])],
    	  [27	,parseInt(fivecoin[26])],
    	  [28	,parseInt(fivecoin[27])],
    	  [29	,parseInt(fivecoin[28])],
    	  [30	,parseInt(fivecoin[29])]       	  	  
          ]);

      data6 = new google.visualization.DataTable();
      
      data6.addColumn('number', 'X');
      data6.addColumn('number', '모네로');     
      
      data6.clone();
      
      data6.addRows([

    	  [1	,parseInt(sixcoin[0])],
    	  [2	,parseInt(sixcoin[1])],
    	  [3	,parseInt(sixcoin[2])],
    	  [4	,parseInt(sixcoin[3])],
    	  [5	,parseInt(sixcoin[4])],
    	  [6	,parseInt(sixcoin[5])],
    	  [7	,parseInt(sixcoin[6])],
    	  [8	,parseInt(sixcoin[7])],
    	  [9	,parseInt(sixcoin[8])],
    	  [10	,parseInt(sixcoin[9])],
    	  [11	,parseInt(sixcoin[10])],
    	  [12	,parseInt(sixcoin[11])],
    	  [13	,parseInt(sixcoin[12])],
    	  [14	,parseInt(sixcoin[13])],
    	  [15	,parseInt(sixcoin[14])],
    	  [16	,parseInt(sixcoin[15])],
    	  [17	,parseInt(sixcoin[16])],
    	  [18	,parseInt(sixcoin[17])],
    	  [19	,parseInt(sixcoin[18])],
    	  [20	,parseInt(sixcoin[19])],
    	  [21	,parseInt(sixcoin[20])],
    	  [22	,parseInt(sixcoin[21])],
    	  [23	,parseInt(sixcoin[22])],
    	  [24	,parseInt(sixcoin[23])],
    	  [25	,parseInt(sixcoin[24])],
    	  [26	,parseInt(sixcoin[25])],
    	  [27	,parseInt(sixcoin[26])],
    	  [28	,parseInt(sixcoin[27])],
    	  [29	,parseInt(sixcoin[28])],
    	  [30	,parseInt(sixcoin[29])]       	  	  
          ]);
   
      data7 = new google.visualization.DataTable();

      data7.addColumn('number', 'X');
      data7.addColumn('number', '대시');     
      
      data7.clone();
      
      data7.addRows([

    	  [1	,parseInt(sevencoin[0])],
    	  [2	,parseInt(sevencoin[1])],
    	  [3	,parseInt(sevencoin[2])],
    	  [4	,parseInt(sevencoin[3])],
    	  [5	,parseInt(sevencoin[4])],
    	  [6	,parseInt(sevencoin[5])],
    	  [7	,parseInt(sevencoin[6])],
    	  [8	,parseInt(sevencoin[7])],
    	  [9	,parseInt(sevencoin[8])],
    	  [10	,parseInt(sevencoin[9])],
    	  [11	,parseInt(sevencoin[10])],
    	  [12	,parseInt(sevencoin[11])],
    	  [13	,parseInt(sevencoin[12])],
    	  [14	,parseInt(sevencoin[13])],
    	  [15	,parseInt(sevencoin[14])],
    	  [16	,parseInt(sevencoin[15])],
    	  [17	,parseInt(sevencoin[16])],
    	  [18	,parseInt(sevencoin[17])],
    	  [19	,parseInt(sevencoin[18])],
    	  [20	,parseInt(sevencoin[19])],
    	  [21	,parseInt(sevencoin[20])],
    	  [22	,parseInt(sevencoin[21])],
    	  [23	,parseInt(sevencoin[22])],
    	  [24	,parseInt(sevencoin[23])],
    	  [25	,parseInt(sevencoin[24])],
    	  [26	,parseInt(sevencoin[25])],
    	  [27	,parseInt(sevencoin[26])],
    	  [28	,parseInt(sevencoin[27])],
    	  [29	,parseInt(sevencoin[28])],
    	  [30	,parseInt(sevencoin[29])]       	  	  
          ]);
    
      data8 = new google.visualization.DataTable();
      
      data8.addColumn('number', 'X');
      data8.addColumn('number', '에이다');     
      
      data8.clone();
      
      data8.addRows([

    	  [1	,parseInt(eightcoin[0])],
    	  [2	,parseInt(eightcoin[1])],
    	  [3	,parseInt(eightcoin[2])],
    	  [4	,parseInt(eightcoin[3])],
    	  [5	,parseInt(eightcoin[4])],
    	  [6	,parseInt(eightcoin[5])],
    	  [7	,parseInt(eightcoin[6])],
    	  [8	,parseInt(eightcoin[7])],
    	  [9	,parseInt(eightcoin[8])],
    	  [10	,parseInt(eightcoin[9])],
    	  [11	,parseInt(eightcoin[10])],
    	  [12	,parseInt(eightcoin[11])],
    	  [13	,parseInt(eightcoin[12])],
    	  [14	,parseInt(eightcoin[13])],
    	  [15	,parseInt(eightcoin[14])],
    	  [16	,parseInt(eightcoin[15])],
    	  [17	,parseInt(eightcoin[16])],
    	  [18	,parseInt(eightcoin[17])],
    	  [19	,parseInt(eightcoin[18])],
    	  [20	,parseInt(eightcoin[19])],
    	  [21	,parseInt(eightcoin[20])],
    	  [22	,parseInt(eightcoin[21])],
    	  [23	,parseInt(eightcoin[22])],
    	  [24	,parseInt(eightcoin[23])],
    	  [25	,parseInt(eightcoin[24])],
    	  [26	,parseInt(eightcoin[25])],
    	  [27	,parseInt(eightcoin[26])],
    	  [28	,parseInt(eightcoin[27])],
    	  [29	,parseInt(eightcoin[28])],
    	  [30	,parseInt(eightcoin[29])]       	  	  
          ]);
     
      data9 = new google.visualization.DataTable();
      
      data9.addColumn('number', 'X');
      data9.addColumn('number', '퀸텀');     
      
      data9.clone();
      
      data9.addRows([

    	  [1	,parseInt(ninecoin[0])],
    	  [2	,parseInt(ninecoin[1])],
    	  [3	,parseInt(ninecoin[2])],
    	  [4	,parseInt(ninecoin[3])],
    	  [5	,parseInt(ninecoin[4])],
    	  [6	,parseInt(ninecoin[5])],
    	  [7	,parseInt(ninecoin[6])],
    	  [8	,parseInt(ninecoin[7])],
    	  [9	,parseInt(ninecoin[8])],
    	  [10	,parseInt(ninecoin[9])],
    	  [11	,parseInt(ninecoin[10])],
    	  [12	,parseInt(ninecoin[11])],
    	  [13	,parseInt(ninecoin[12])],
    	  [14	,parseInt(ninecoin[13])],
    	  [15	,parseInt(ninecoin[14])],
    	  [16	,parseInt(ninecoin[15])],
    	  [17	,parseInt(ninecoin[16])],
    	  [18	,parseInt(ninecoin[17])],
    	  [19	,parseInt(ninecoin[18])],
    	  [20	,parseInt(ninecoin[19])],
    	  [21	,parseInt(ninecoin[20])],
    	  [22	,parseInt(ninecoin[21])],
    	  [23	,parseInt(ninecoin[22])],
    	  [24	,parseInt(ninecoin[23])],
    	  [25	,parseInt(ninecoin[24])],
    	  [26	,parseInt(ninecoin[25])],
    	  [27	,parseInt(ninecoin[26])],
    	  [28	,parseInt(ninecoin[27])],
    	  [29	,parseInt(ninecoin[28])],
    	  [30	,parseInt(ninecoin[29])]       	  	  
          ]);

      data10 = new google.visualization.DataTable();
      
      data10.addColumn('number', 'X');
      data10.addColumn('number', '아이콘');     
      
      data10.clone();
      
      data10.addRows([

    	  [1	,parseInt(tencoin[0])],
    	  [2	,parseInt(tencoin[1])],
    	  [3	,parseInt(tencoin[2])],
    	  [4	,parseInt(tencoin[3])],
    	  [5	,parseInt(tencoin[4])],
    	  [6	,parseInt(tencoin[5])],
    	  [7	,parseInt(tencoin[6])],
    	  [8	,parseInt(tencoin[7])],
    	  [9	,parseInt(tencoin[8])],
    	  [10	,parseInt(tencoin[9])],
    	  [11	,parseInt(tencoin[10])],
    	  [12	,parseInt(tencoin[11])],
    	  [13	,parseInt(tencoin[12])],
    	  [14	,parseInt(tencoin[13])],
    	  [15	,parseInt(tencoin[14])],
    	  [16	,parseInt(tencoin[15])],
    	  [17	,parseInt(tencoin[16])],
    	  [18	,parseInt(tencoin[17])],
    	  [19	,parseInt(tencoin[18])],
    	  [20	,parseInt(tencoin[19])],
    	  [21	,parseInt(tencoin[20])],
    	  [22	,parseInt(tencoin[21])],
    	  [23	,parseInt(tencoin[22])],
    	  [24	,parseInt(tencoin[23])],
    	  [25	,parseInt(tencoin[24])],
    	  [26	,parseInt(tencoin[25])],
    	  [27	,parseInt(tencoin[26])],
    	  [28	,parseInt(tencoin[27])],
    	  [29	,parseInt(tencoin[28])],
    	  [30	,parseInt(tencoin[29])]       	  	  
          ]);
 
       options = {
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
	}
	
	/// 클릭이벤트
	$(".bit").on("click",function()
			{
	   			 $(".cha").attr({
	       			 id:"chart_div1"

	  		 });
	   	     chart1 = new google.visualization.LineChart(document.getElementById('chart_div1'));
	   	     //chart1.draw(data1, options);
	   	     
	   	     chart2 = null;
	   	  	 chart3 = null;
	   	  	 chart4 = null;
	   	  	 chart5 = null;
	   	  	 chart6 = null;
	   	  	 chart7 = null;
	   	  	 chart8 = null;
	   	  	 chart9 = null;
	   	  	 chart10 = null;
	   	  	 
			});
  	
  	$(".two").on("click",function()
			{
	   			 $(".cha").attr({
	       			 id:"chart_div2"

	  		 });
	   	     chart2 = new google.visualization.LineChart(document.getElementById('chart_div2'));
	   	     //chart2.draw(data2, options);
	   	     
	   	     chart1 = null;
	   	  	 chart3 = null;
	   	  	 chart4 = null;
	   	  	 chart5 = null;
	   	  	 chart6 = null;
	   	  	 chart7 = null;
	   	  	 chart8 = null;
	   	  	 chart9 = null;
	   	  	 chart10 = null;
			});
  	
  	$(".three").on("click",function()
			{
	   			 $(".cha").attr({
	       			 id:"chart_div3"

	  		 });
	   	     chart3 = new google.visualization.LineChart(document.getElementById('chart_div3'));
	   	     //chart2.draw(data2, options);
	   	     
	   	     chart1 = null;
	   	  	 chart2 = null;
	   	  	 chart4 = null;
	   	  	 chart5 = null;
	   	  	 chart6 = null;
	   	  	 chart7 = null;
	   	  	 chart8 = null;
	   	  	 chart9 = null;
	   	  	 chart10 = null;
			});
  	
  	$(".four").on("click",function()
			{
	   			 $(".cha").attr({
	       			 id:"chart_div4"

	  		 });
	   	     chart4 = new google.visualization.LineChart(document.getElementById('chart_div4'));
	   	     //chart2.draw(data2, options);
	   	     
	   	     chart1 = null;
	   	  	 chart2 = null;
	   	  	 chart3 = null;
	   	  	 chart5 = null;
	   	  	 chart6 = null;
	   	  	 chart7 = null;
	   	  	 chart8 = null;
	   	  	 chart9 = null;
	   	  	 chart10 = null;
			});
  	
  	$(".five").on("click",function()
			{
	   			 $(".cha").attr({
	       			 id:"chart_div5"

	  		 });
	   	     
	   	     //chart2.draw(data2, options);
	   	     
	   	     chart1 = null;
	   	  	 chart2 = null;
	   	  	 chart3 = null;
	   	  	 chart4 = null;
	   	  	 chart5 = new google.visualization.LineChart(document.getElementById('chart_div5'));
	   	  	 chart6 = null;
	   	  	 chart7 = null;
	   	  	 chart8 = null;
	   	  	 chart9 = null;
	   	  	 chart10 = null;
			});
  	
  	$(".six").on("click",function()
			{
	   			 $(".cha").attr({
	       			 id:"chart_div6"

	  		 });
	   	     chart6 = new google.visualization.LineChart(document.getElementById('chart_div6'));
	   	     //chart2.draw(data2, options);
	   	     
	   	     chart1 = null;
	   	  	 chart3 = null;
	   	  	 chart4 = null;
	   	  	 chart5 = null;
	   	  	 chart2 = null;
	   	  	 chart7 = null;
	   	  	 chart8 = null;
	   	  	 chart9 = null;
	   	  	 chart10 = null;
			});
  	
  	$(".seven").on("click",function()
			{
	   			 $(".cha").attr({
	       			 id:"chart_div7"

	  		 });
	   	     chart7 = new google.visualization.LineChart(document.getElementById('chart_div7'));
	   	     //chart2.draw(data2, options);
	   	     
	   	     chart1 = null;
	   	  	 chart3 = null;
	   	  	 chart4 = null;
	   	  	 chart5 = null;
	   	  	 chart6 = null;
	   	  	 chart2 = null;
	   	  	 chart8 = null;
	   	  	 chart9 = null;
	   	  	 chart10 = null;
			});
  	
  	$(".eight").on("click",function()
			{
	   			 $(".cha").attr({
	       			 id:"chart_div8"

	  		 });
	   	     chart8 = new google.visualization.LineChart(document.getElementById('chart_div8'));
	   	     //chart2.draw(data8, options);
	   	     
	   	     chart1 = null;
	   	  	 chart3 = null;
	   	  	 chart4 = null;
	   	  	 chart5 = null;
	   	  	 chart6 = null;
	   	  	 chart7 = null;
	   	  	 chart2 = null;
	   	  	 chart9 = null;
	   	  	 chart10 = null;
			});
  	
  	$(".nine").on("click",function()
			{
	   			 $(".cha").attr({
	       			 id:"chart_div9"

	  		 });
	   	     chart9 = new google.visualization.LineChart(document.getElementById('chart_div9'));
	   	     //chart2.draw(data2, options);
	   	     
	   	     chart1 = null;
	   	  	 chart3 = null;
	   	  	 chart4 = null;
	   	  	 chart5 = null;
	   	  	 chart6 = null;
	   	  	 chart7 = null;
	   	  	 chart8 = null;
	   	  	 chart2 = null;
	   	  	 chart10 = null;
			});
  	
  	$(".ten").on("click",function()
			{
	   			 $(".cha").attr({
	       			 id:"chart_div10"

	  		 });
	   	     chart10 = new google.visualization.LineChart(document.getElementById('chart_div10'));
	   	     //chart2.draw(data2, options);
	   	     
	   	     chart1 = null;
	   	  	 chart3 = null;
	   	  	 chart4 = null;
	   	  	 chart5 = null;
	   	  	 chart6 = null;
	   	  	 chart7 = null;
	   	  	 chart8 = null;
	   	  	 chart9 = null;
	   	  	 chart2 = null;
			});
	///
	
	if(chart1!=null){
		chart1.draw(data1, options);
	}else if(chart2!=null){
		chart2.draw(data2, options);
	}else if(chart3!=null){
		chart3.draw(data3, options);
	}else if(chart4!=null){
		chart4.draw(data4, options);
	}else if(chart5!=null){
		chart5.draw(data5, options);
	}else if(chart6!=null){
		chart6.draw(data6, options);
	}else if(chart7!=null){
		chart7.draw(data7, options);
	}else if(chart8!=null){
		chart8.draw(data8, options);
	}else if(chart9!=null){
		chart9.draw(data9, options);
	}else if(chart10!=null){
		chart10.draw(data10, options);
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
 <td><img src="img/a.JPG" border="0" align="center" width="80" class="bit"/></td>
 <td><span id ="bitsum" class="bit"></span></td>
 <td><span id ="bit30" class="bit"></span> </td>
 <td><span id ="bitbyun" class="bit"></span><img id="bitimg" class="bit"></td>
 <td><input type="button" value="매수"><input type="button" value="매도"></td>
 </tr>
 
  <!-- 이더리움 -->
 <tr>
 <td><img src="img/b.JPG" border="0" align="center" width="80" class="two"/></td>
 <td><span id ="twosum" class="two"></span></td>
 <td><span id ="two30" class="two"></span> </td>
 <td><span id ="twobyun" class="two"></span><img id="twoimg" class="two"></td>
 <td><input type="button" value="매수"><input type="button" value="매도"></td>
 </tr>
 
  <!-- 리플 -->
  <tr>
 <td><img src="img/c.JPG" border="0" align="center" width="80" class="three"/></td>
 <td><span id ="threesum" class="three"></span></td>
 <td><span id ="three30" class="three"></span> </td>
 <td><span id ="threebyun" class="three"></span><img id="threeimg" class="three"></td>
 <td><input type="button" value="매수"><input type="button" value="매도"></td>
 </tr>
 
  <!-- 라이트코인 -->
  <tr>
 <td><img src="img/d.JPG" border="0" align="center" width="80" class="four"/></td>
 <td><span id ="foursum" class="four"></span></td>
 <td><span id ="four30" class="four"></span> </td>
 <td><span id ="fourbyun" class="four"></span><img id="fourimg" class="four"></td>
 <td><input type="button" value="매수"><input type="button" value="매도"></td>
 </tr>
 
  <!-- 이오스 -->
  <tr>
 <td><img src="img/e.JPG" border="0" align="center" width="80" class="five"/></td>
 <td><span id ="fivesum" class="five"></span></td>
 <td><span id ="five30" class="five"></span> </td>
 <td><span id ="fivebyun" class="five"></span><img id="fiveimg" class="five"></td>
 <td><input type="button" value="매수"><input type="button" value="매도"></td>
 </tr>
 
  <!-- 모네로 -->
  <tr>
 <td><img src="img/f.JPG" border="0" align="center" width="80" class="six"/></td>
 <td><span id ="sixsum" class="six"></span></td>
 <td><span id ="six30" class="six"></span> </td>
 <td><span id ="sixbyun" class="six"></span><img id="siximg" class="six"></td>
 <td><input type="button" value="매수"><input type="button" value="매도"></td>
 </tr>
 
  <!-- 대시 -->
  <tr>
 <td><img src="img/g.JPG" border="0" align="center" width="80" class="seven"/></td>
 <td><span id ="sevensum" class="seven"></span></td>
 <td><span id ="seven30" class="seven"></span> </td>
 <td><span id ="sevenbyun" class="seven"></span><img id="sevenimg" class="seven"></td>
 <td><input type="button" value="매수"><input type="button" value="매도"></td>
 </tr>
 
  <!-- 에이다 -->
  <tr>
 <td><img src="img/h.JPG" border="0" align="center" width="80" class="eight"/></td>
 <td><span id ="eightsum" class="eight"></span></td>
 <td><span id ="eight30" class="eight"></span> </td>
 <td><span id ="eightbyun" class="eight"></span><img id="eightimg" class="eight"></td>
 <td><input type="button" value="매수"><input type="button" value="매도"></td>
 </tr>
 
  <!-- 퀀텀 -->
  <tr>
 <td><img src="img/i.JPG" border="0" align="center" width="80" class="nine"/></td>
 <td><span id ="ninesum" class="nine"></span></td>
 <td><span id ="nine30" class="nine"></span> </td>
 <td><span id ="ninebyun" class="nine"></span><img id="nineimg" class="nine"></td>
 <td><input type="button" value="매수"><input type="button" value="매도"></td>
 </tr>
 
  <!-- 아이콘 -->
  <tr>
 <td><img src="img/j.JPG" border="0" align="center" width="80" class="ten"/></td>
 <td><span id ="tensum" class="ten"></span></td>
 <td><span id ="ten30" class="ten"></span> </td>
 <td><span id ="tenbyun" class="ten"></span><img id="tenimg" class="ten"></td>
 <td><input type="button" value="매수"><input type="button" value="매도"></td>
 </tr>
 
 </table>
 <div>
  <div id="chart_div1" class="cha"></div>
 </div>
 </center>