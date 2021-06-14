<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>Insert title here</title>
<script src='./lib/jquery-3.6.0.min.js'></script>
<script src='./js/member2.js'></script>
</head>
<body>
<div id='member'>
	<h3>회원수정결과</h3>
	<form name='frm_member' id='frm_member' method='post'>
		<input type='text' name='nowPage' value='${param.nowPage }'/>
		<input type='text' name='findStr' value='${param.findStr }'/>
		<input type='text' name='mid' value='${param.findStr }'/>
		
	</form>
</div>
<script>member.init();</script>
</body>
</html>