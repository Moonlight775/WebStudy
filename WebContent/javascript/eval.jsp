<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>eval</title>
<style>
  *{
  	margin: 0;
  	padding: 0;
  	box-sizing: border-box;
  }
  #eval{
  	width: 500px;
  	margin: 50px auto;
  }
  #eval input[type=text]{
  	width: 380px;
  	height: 30px;
  	font-size: 20pt;
  }
  #eval input[type=button]{
  	width: 80px;
  	font-size: 17pt;
  	
  }
  #eval textarea{
  	width: 465px;
  	height: 250px;
  	margin-top: 10px;
  	padding: 10px;
  	font-size: 30pt;
  }


</style>
</head>
<body>
<div id='eval'>
	<h2>EVAL</h2>
	<form name='frm' method='post' action=''>
		<input type='text' size='50' name='str'/>
		<input type='button' value='계산' id='btn'/>
		<br/>
		<textarea name='result' rows='10' cols='50'></textarea>
	
	</form>
</div>
<script>
var ff = document.frm;
var btn = document.getElementById('btn');
btn.onclick = function(){
	var v = ff.str.value;
	var r = eval(v);
	ff.result.value = r;
	
}


</script>
</body>
</html>