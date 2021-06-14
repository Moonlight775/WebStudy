<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>text_copy</title>
<style>
  *{
	margin: 0;
	padding: 0;
	box-sizing: border-box;
  }
  #text_copy{
  	width: 500px;
  	margin: 30px auto;
  	padding: 20px;
  	border: 2px dotted #bbb;
  	box-shadow: 2px 2px 4px 2px #888;
  }
  #text_copy input[type=button]{
  	width: 80px;
  	height: 25px;
  	margin-top: 10px;
  }
  #text_copy h2{
  	margin-bottom: 20px;
  }

</style>
</head>
<body onload='main()'>
<div id='text_copy'>
<h2>text 입력상자의 값 제어</h2>
	<form name='frm' method='post' action=''>
		<label>원본 : </label>
		<input type='text' size='50' name='ori'/>
		<br/>
		<label>사본 : </label>
		<input type='text' size='50' name='target'/>
		<br/>
		<input type='button' value='COPY' id='btn'/>
	
	</form>

</div>
<script>
function main(){
	var btn = document.getElementById('btn');
	btn.onclick = function(){
		var ff = document.frm;
		copy(ff);
	}
}
			//↓지역변수
function copy(ff){
	var v = ff.ori.value;
	ff.target.value = v;
}

</script>
</body>
</html>













