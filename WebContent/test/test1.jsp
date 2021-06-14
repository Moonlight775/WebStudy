<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>test1</title>
</head>
<body>
<div id='test1'>
<form id='frm_signup' name='frm_signup' method='post'>
	<label>아이디</label>
	<input type='text' id='mid' minlength='4' maxlength='12' required/>
	<br/>
	<label>암호</label>
	<input type='password' id='pwd' minlength='4' maxlength='12' required/>
	<br/>
	<label>성명</label>
	<input type='text' id='mname' minlength='2' maxlength='10' required/>
	<br/>
	<label>이메일</label>
	<input type='email' id='email'>
	<br/>
	<input type='button' value='입 력' class='submit' onclick='check_onclick()'/>

</div>
<script>
function check_onclick(){
var RegExp = /^[a-zA-Z0-9]{4,12}$/; 
var e_RegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
var n_RegExp = /^[가-힣]{2,15}$/;

	var id = document.getElementById('mid');
	var pwd = document.getElementById('pwd');
	var name = document.getElementById('mname');
	var email = document.getElementById('email');
	var btn = document.getElementById('btn');
	
	    if(id.value==''){
	        alert("아이디를 입력해주세요.");
			id.focus();
	    }
	    else if(!RegExp.test(id.value)){ //아이디 유효성검사
	        alert("아이디는 4~12자의 영문 대소문자와 숫자로만 입력하여 주세요.");
			id.focus();      
	    }
	    else if(pwd.value==''){ // 비밀번호 입력여부 검사
	        alert("비밀번호를 입력해주세요.");
			pwd.focus();
	    }
	    else if(!RegExp.test(pwd.value)){ //패스워드 유효성검사
	        alert("비밀번호는 4~12자의 영문 대소문자와 숫자로만 입력하여 주세요.");
			pwd.focus();
	    }
	    else if(pwd.value==id.value){ //패스워드와 ID가 동일한지 검사
	        alert("비밀번호는 아이디와 동일하면 안됩니다.");
			pwd.focus();
	    }
			else if(name.value ==''){
	        alert("성명을 입력해주세요.")
			name.focus();
	    }
	    else if(!n_RegExp.test(name.value)){
	        alert("특수문자,영어,숫자는 사용할수 없습니다. 한글만 입력하여주세요.");
	    	name.focus();
			}
	    else if(email.value == ''){ // 이메일 입력여부 검사
	        alert("이메일을 입력해주세요.");
			email.focus();
	    }
	    else if(!e_RegExp.test(email.value)){ //이메일 유효성 검사
	        alert("올바른 이메일 형식이 아닙니다.");
			email.focus();
	    }
		  
		
}
</script>
</body>
</html>