<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>switch</title>
<style>
#switch{
	width: 450px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -150px;
	padding: 0px 25px 25px 25px;
	box-sizing: border-box;
	border: 2px solid #4f4f4f;
	border-radius: 8px;
	box-shadow: 3px 3px 6px 0px #888;
}
#switch input{
	display: inline-block;
	width: 250px;
	height: 25px;
	border-radius: 7px;
}
#switch #btn{
	width: 80px;
	height: 28px;
	background-color: #17dff9;
	color: white;
}

</style>
</head>
<body>
<div id='switch'>
	<h2>고객등급</h2>
	<label>입력</label>
	<input type='text' id='custom'/>
	<input type='button' value='확인' id='btn'/>
	<hr/>
	
	<label>결과</label>
	<input type='text' id='result'/>

</div>
<script>
	var RegExp = /[a-fA-F]$/;
	
	var customer = document.getElementById('custom');
	var btn = document.getElementById('btn');
	var result = document.getElementById('result');
	
	btn.onclick = function(){
		if(!RegExp.test(customer.value)){
			alert("A~F 범위에서 선택해주세요.");
			customer.foucs();
		}
		var a = customer.value;
			a = a.toUpperCase();
			
		switch (a){
			case 'A' : str = "vip고객"; break;
			case 'B' : str = "우수고객"; break;
			case 'C' : str = "고객"; break;
			case 'D' : str = "진상고객"; break;
			case 'E' :
			case 'F' : str = "입장금지고객"; break;
		}
		result.value = str;
	}
</script>


</body>
</html>