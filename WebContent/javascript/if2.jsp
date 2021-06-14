<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>if2</title>
<style>
#if2{
	width: 400px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -150px;
	padding: 0px 25px 25px 25px;
	border: 2px solid #4f4f4f;
	box-sizing: border-box;
	border-radius: 8px;
	box-shadow: 3px 3px 6px 0px #888;
}
#if2 input{
	display: inline-block;
	width: 200px;
	height: 25px;
	border-radius: 7px;
}
#if2 #btn{
	width: 80px;
	height: 28px;
	background-color: #17dff9;
	color: white;
}

#if2 #kor{
	margin-bottom: 5px;
}

#if2 #output{
	margin-top: 10px;
	padding-top: 10px;
	border-top: 2px solid #adadad;
}

#if2 #result{color:red;}
</style>
</head>
<body>
<div id='if2'>
	<h2>합격계산</h2>
	<label>국어</label>
	<input type='text' id='kor'/>
	<br/>
	
	<label>수학</label>
	<input type='text' id='mat'/>
	<input type='button' value='계산' id='btn'/>
	<br/>
	
	<div id='output'>
		<label>결과</label>
		<input type='text' id='result'/>
	</div>	
</div>
<script>
	//var n_RegExp = /^[1-9]{1}
	
	var kor = document.getElementById('kor');
	var mat = document.getElementById('mat');
	var btn = document.getElementById('btn');
	var result = document.getElementById('result');
	
	btn.onclick = function(){
	var sum = Number(kor.value)+Number(mat.value);
	var avg = sum/2;
	
		if(kor.value == ''){
			alert("국어성적을 입력해주세요.")
			kor.focus();
		}
		else if(mat.value == ''){
			alert("수학성적을 입력해주세요.")
			mat.focus();
		}
		else if(kor.value <=0 || kor.value >101 || mat.value <=0 || mat.value >101){
			alert("잘못된 점수입니다. 다시 입력해주세요.")
		}
		else if(avg>=60){
			result.value = '합격';
		}
		else{
			result.value = '불합격';
		}
	}
	
</script>
</body>
</html>