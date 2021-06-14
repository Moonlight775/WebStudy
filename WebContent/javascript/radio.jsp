<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>radio</title>
<style>
  #radio textarea{
  width: 400px;
  min-height: 200px;
  }

</style>
</head>
<body>
<div id='radio'>
	<h2>RADIO</h2>
	<form name='frm' method='post' action=''>
		<textarea name='re'></textarea>
		<div class='btn_zone'>			//일반 단일객체(re)에서 name이 같으면 1.배열객체 2.그룹핑 이 된다.
		  <label><input type='radio' name='chk' value='#ff0000'>빨강</label>
		  <label><input type='radio' name='chk' value='#00ff00'>녹색</label>
		  <label><input type='radio' name='chk' value='#0000ff'>파랑</label>
		  <label><input type='radio' name='chk' value='#ffff00'>노랑</label>
		  <label><input type='radio' name='chk' value='#00ffff'>하늘</label>
		  <label><input type='radio' name='chk' value='#ff00ff'>보라</label>
		  <label><input type='radio' name='chk' value='#000000'>검정</label>
		</div>
		<input type='button' value='CLICK' onclick='mclick(this.form)' />
	</form>
</div>
<script>		
  function mclick(f){
	var ra = f.chk;  
	for(var i=0; i<ra.length; i++){
	  console.log(ra[i].value);
	  if(ra[i].checked){
		f.re.style.backgroundColor=ra[i].value; //자바스크립트에서 css접근 할때 .style.(css의 속성)로 사용
		break;									//ex)font-size -> fontSize, backgound-color -> backgroundColor
	}
		
	}
  }
</script>
</body>
</html>