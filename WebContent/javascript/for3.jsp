<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>for2</title>
<style>
  #for2{
  	width: 380px;
  	position: absolute;
  	top: 50%;
  	left: 50%;
  	margin: -150px;
  	padding: 0 25px 25px 25px;
  	border: 2px solid #aaa;
  	border-radius: 8px;
  	box-shadow: 3px 3px 6px 0 #888;
  }
  #for2 #result{
  	width: 330px;
  	min-height: 200px;
  	margin-top: 20px;
  	padding: 20px;
  	border: 2px solid #aaa;
  	border-radius: 8px;
  	box-shadow: 2px 2px 4px #ccc;
  }

</style>
</head>
<body>
<div id='mission'>
	<fieldset>
		<legend>미션</legend>
		<div>
			정수 n을 입력받아 n단의 구구단을 출력하시오.
		</div>
	</fieldset>
</div>
<div id='for2'>

	<h2>for 미션</h2>
	<label>구구단</label>
	<input type='text' id='x' value='2'/>
	<input type='button' id='btn' value='실행'/>
	
	<div id='result'></div>
</div>

<script>
  var btn = document.getElementById('btn');
  btn.onclick = function(){
  var x = Number(document.getElementById('x').value);
  var result = document.getElementById('result');
  var numArr = new Array();
  
    var r = '';
    
    for(var i=1; i<10; i++){
    	numArr.push(x + '*' + i + '=' + (x*i) + '<br/>');
	  }
	  
    	result.innerHTML = numArr.join('');
    	 
  }



</script>
</body>
</html>












