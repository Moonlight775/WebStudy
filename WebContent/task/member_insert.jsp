<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>

<meta charset="UTF-8">
<meta name='viewport' content='width=device-widht, initial-scale=1.0'>
<title>회원가입</title>
<link rel='stylesheet' type='text/css' href='../task/member.css'>
</head>

<script type='text/javascript' src='member.js'></script>

<body>
<h1>회원가입</h1>

<img src='https://item.kakaocdn.net/do/d84248170c2c52303db27306a00fb8618f324a0b9c48f77dbce3a43bd11ce785'
alt='카카오 라이언'>

<div id="signup">
<form id='frm_signup' name='frm_signup' method='post'>
 <div id='info'>
 <ul>
	<li><label for='name'>성명 
		<span >*</span><br/>
		<input type='text' id='name' name='name' maxlength='15' placeholder='성명' required>
	</label>
	</li>
	
	<li><label for='id'>아이디 
		<span>*</span><br/>
		<input type='text' id='id' name='id' maxlength='15' placeholder='아이디' required>
	</label>
	</li>

	<li><label for='pwd1'>비밀번호 
		<span>*</span><br/>
		<input type='password' id='pwd1' name='pwd1' maxlength='12' placeholder='비밀번호' required>
	</label>
	<br/>
		<label for='pwd2'>
		<input type='password' id='pwd2' name='pwd2' maxlength='12' placeholder='비밀번호 확인' required>
	</label>
	</li>
	
	<li><label for='addr1'>주소
		<span>*</span>
		<input type='text' id='addr1' name='addr1' maxlength='50' placeholder='주소' required/>
		<input type='text' id='addr2' name='addr2' maxlength='30' placeholder='상세주소' required/>
	</label>
	</li>
	
	<li><label for='email'>이메일
		<span>*</span><br/>
		<input type='email' id='email' name='email' maxlength='30' placeholder='이메일' required/>
	</label>
	</li>

	
 </ul>
	</div>
 <div class='button_box'>
 <div id='button'>
 		<input type='button' class='submit' value='회원가입' onclick='check_onclick()'/>
		<input type='reset' class='reset' value='취소' onclick='cancel()'/>
 </div>
 </div>
</form>
 </div>

</body>
</html>










