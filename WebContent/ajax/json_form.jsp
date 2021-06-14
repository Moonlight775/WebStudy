<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>json_form</title>
<style>
	*{
		margin: 0;
		padding: 0;
		box-sizing: border-box;
	}
	#json_form{
		width: 500px;
		margin: 30px auto;
	}
	#json_form h2{
		margin-bottom: 20px;
	}
	#json_form .input_zone{
		text-align: right;
		margin-bottom: 10px;
	}
	#json_form .result{
		width: 100%;
		border: 2px solid #aaa;
		padding: 10px;
		min-height: 200px;
	}
	#json_form .title {
		background-color: #444;
		color: #fff;
		padding: 5px 5px 5px 15px;
	}
	#json_form span {
		display: inline-block;
	}
	
	#json_form .fn { width: 100px;}
	#json_form .em { width: 100px;}
	#json_form .ph { width: 150px;}
	#json_form .sa { width: 70px;}
	
</style>
</head>
<body>
<div id='json_form'>
	<h2>회원 검색</h2>
	<div class='input_zone'>
		<form name='frm' method='post' onsubmit='return false'> <!-- submit(화면이 새로고침) -->
			<label>검색어</label>
			<input type='text' size='40' name='findStr'/>
			<input type='button' value=' 검 색 ' id='btnFind'/>
			<br/>
			
		</form>
	</div>
		<div class='title'>
			<span class='fn'>성명</span>
			<span class='em'>이메일</span>
			<span class='ph'>연락처</span>
			<span class='sa'>급여</span>
		</div>
	
	<div class='result'></div> <!-- 배열처리 -->

</div>
<script>
	var frm = document.frm;
	var btn = document.getElementById('btnFind');
	var input = frm.findStr; // = document.frm.findStr(var frm 변수처리 이유, 코드 단순화)
	var xhr = new XMLHttpRequest();
	var rs = document.getElementsByClassName('result')[0];
 	
	input.onkeyup = funcKey;
	btn.onclick = funcFind;
	
	
	function funcKey(ev){
		if(ev.keyCode == 13){  //13->enter키
			funcFind();
		}
	}
	
	function funcFind(){
		var url = 'json_form_result.jsp' //<-요청을 처리 할 페이지
		var data = {}; //데이터 객체화
		data.findStr = frm.findStr.value; //data객체에 findStr이라는 field가 생성
		
		var param = JSON.stringify(data); //객체 안에 있는 요소들을 JSON 타입으로 변환 ({k:v},{k,v},... 형식)
		console.log(param)
		
		url = url + "?findStr=" + frm.findStr.value; //?는 파라메터의 시작을 알림
							//   ↑파라메터 변수명('?'뒤) ↑파라메터 값
		xhr.open('get', url) //get타입으로 초기화
		xhr.send()
		xhr.onreadystatechange = function(){
			if(xhr.status==200 && xhr.readyState==4){ //200, 4가 정상값
				var temp = xhr.responseText;
				rs.innerHTML = temp;
				//var json = JSON.parse(temp);
			}
		}
	}	

</script>

</body>
</html>













