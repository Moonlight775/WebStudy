<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>회원가입</title>
<link rel='stylesheet' type='text/css' href='/WebStudy/css/member.css'>
<script src='./lib/jquery-3.6.0.min.js'></script>
<script src='./js/member2/js'></script>
<script src='//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js'></script>
</head>
<body>
<div id='member'>
<h1>REGISTER</h1>
<form name='frm_member' id='frm_member' method='post'>
	<div id='insert'>
		<label>아이디</label>
		<input type='text' name='mid' value='hong' />
		<br/><br/>
		
		<label>성명</label>
		<input type='text' name='irum' value='길동이' />
		<br/><br/>
		
		<label id='space'>암호</label>
		<input type='password' name='pwd' />
		<br/>
		<label>암호확인</label>
		<input type='password' name='pwd' />
		<br/><br/>
		
		<label>연락처</label>
		<input type='text' name='phone' value='010-1111-1111' />
		<br/><br/>
		
		<label id='space'>주소</label>
		<input type='text' name='post'>
		<input type='button' value='우편번호' name='btnZipCode' onclick='funcZip()'/>
		<br/>
		
		<label id='space'></label>
		<input type='text' name='address' size='50' id='space'/>
		<br/>
		<label>상세주소</label>
		<input type='text' name='address2' size='50'/>
		
		<br/><br/>
		
		<label>이메일</label>
		<input type='text' name='account' />
		<output>@</output>
		<select name='host'>
			<option value='IT여행자'>IT여행자</option>
			<option value='acorn'>ACORN</option>
			<option value='네이버'>네이버</option>
			<option value='네이트'>네이트</option>
			<option value='다음'>다음</option>
		</select>
	</div>
	
	<div id='btn_zone'>
		<input type='button' value='가입' id='btnInsert'/>
		<input type='button' value='취소' id='btnSelect'/>
	</div>
	
	
	<img src='http://placehold.it/150X180' width='150' height='180'
					class='photo' id='photo' />
		<input type='text' name='nowPage' value='${param.nowPage }'/>
		<input type='text' name='findStr' value='${param.findStr }'/>
		<input type='file' name='picture' id='picture'/>

</form>

</div>
<script>member.init();</script>

<!-- <script>
function servletTest(){
	var frm = document.frm_register;
	frm.action = "../my.nhn";
	frm.submit();
}

</script> -->

</body>
</html>