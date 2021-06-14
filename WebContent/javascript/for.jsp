<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>for</title>
<style>
*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}
#for{
	width: 350px;
	position: relative;
	position: absolute;
	top: 50%;
	left: 50%;
	margin:-150px;
	border: 2px solid #aaa;
	padding: 0 25px 25px 25px;
	border-radius: 8px;
	box-shadow: 3px 3px 6px 0px #888;
}
#for #btn{
	position: absolute;
	width: 80px;
	height: 42px;
	margin: 3px 0 0 5px;
}
#for #result{
	border: 2px solid #aaa;
	margin-top:10px;
	width: 300px;
	height: 100px;
}
</style>
</head>
<body>
<div id='for'>
  <h2>for</h2>
  	<label>X</label>
  	<input type='text' id='x' value='1'/>
  	<input type='button' id='btn' value='계산'/>
  	<br/>
  	<label>Y</label>
  	<input type='text' id='y' value='10'/>
  	<div id='result'></div>
</div>
<script>
  var btn = document.getElementById('btn');
  btn.onclick = function(){
	var x = Number(document.getElementById('x').value);
	var y = Number(document.getElementById('y').value);
	var result = document.getElementById('result');
	var sum = 0;
	  
	for(var i=x; i<=y; i++){
	  sum = sum+i;
	}
	result.innerHTML = sum;
  }

</script>

</body>
</html>













