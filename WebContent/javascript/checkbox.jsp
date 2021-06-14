<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>checkbox</title>
<style>
  #checkbox{
  	width:550px;
  	margin: 0 auto;
  	border: 2px solid #aaa;
  	border-radius: 8px;
  	padding: 20px;
  }
  #checkbox textarea{
  	width: 500px;
  	height:150px;
  }

</style>
</head>
<body>
<div id='checkbox'>
	<h2>Checkbox Sample</h2>
	<div>
		가고 싶은 산
	</div>
	<form name='frm' method='post' action=''>
		<textarea name='ta'></textarea>
		<br/>
		<label><input type='checkbox' name='chk' value='백두산'>백두산</label>
		<label><input type='checkbox' name='chk' value='지리산'>지리산</label>
		<label><input type='checkbox' name='chk' value='금강산'>금강산</label>
		<label><input type='checkbox' name='chk' value='치악산'>치악산</label>
		<label><input type='checkbox' name='chk' value='속리산'>속리산</label>
		<label><input type='checkbox' name='chk' value='내장산'>내장산</label>
		<label><input type='checkbox' name='chk' value='설악산'>설악산</label>
		<br/>
		
		<input type='button' value='선택' id='btn'/>
		<input type='reset' value='다시'/>
	</form>
</div>
<script>
	var ff = document.frm;
	var btn = document.getElementById('btn');
	btn.onclick = process; //process는 function의 이름, call back type.
	
	function process(){ //function 구조물은 호이스팅된다. 자바스크립트 엔진이 function을 먼저 찾아서 메모리에 올려두는 것이 호이스팅 (like 자바의 static)
		var leng = ff.chk.length;
		var str = []; //배열 선언
		ff.ta.value='';
		for(var i=0; i<leng; i++){
			if(ff.chk[i].checked){
				str.push(ff.chk[i].value); //체크된 값을 배열에 추가
			}
		}
		ff.ta.value = str.join('=>');
		
	}
</script>
</body>
</html>














