<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>회원정보조회</title>
<link rel='stylesheet' type='text/css' href='/WebStudy/css/member.css'>
<script src='./lib/jquery-3.6.0.min.js'></script>
<script src='./js/member2.js'></script>
</head>
<body>
<div id='member'>
	<h1>회원정보 조회</h1>
	<form name='frm_member' id='frm_member' method='post' action=''>
		<input type='button' id='btnRegister' value='가입'/>
		<div class='find_zone'>
			<input type='search' name='findStr' value='${param.findStr }'/>
			<input type='button' id='btnFind' value='검색' />
			<input type='text' name='nowPage' value='${(empty param.nowPage)? 1 : param.nowPage }'/>
			<input type='text' name='mid' />
		</div>
	</form>

	<div class='title'>
		<span class='no'>NO</span> 
		<span class='mid'>아이디</span> 
		<span class='mname'>성명</span>
		<span class='phone'>연락처</span>
		<span class='email'>이메일</span>
	</div>

	<div class='items'>
		<c:forEach var='vo' items='${list }'>
			<div class='item' onclick="member.view('${vo.mid }')"> <!-- 작은 따옴표('')<-없으면 objuect가 된다. -->
				<span class='no'>${vo.rno }</span> 
				<span class='mid'>${vo.mid }</span>
				<span class='mname'>${vo.irum }</span>
				<span class='phone'>${vo.phone }</span>
				<span class='email'>${vo.account }@${vo.host }</span>
			</div>
		</c:forEach>
	</div>
			
	<div id='btn_zone'>
		<c:if test="${page.startPage>1 }">
			<input type='button' value='맨처음' onclick='member.move(1)' id='button'/>
			<input type='button' value='이전' onclick='member.move(${page.startPage-1})' id='button'/>
		</c:if>

		<c:forEach var='p' begin='${page.startPage }' end='${page.endPage }'>
			<input type='button' value='${p}' onclick='member.move(${p})' id='button'/>
		</c:forEach>
		
		<c:if test="${page.endPage<page.totPage }">
			<input type='button' value='다음' onclick='member.move(${page.endPage+1})' id='button'/>
			<input type='button' value='맨끝' onclick='member.move(${page.totPage})' id='button'/>
		</c:if>
		
	</div>
</div>
<script> member.init(); </script>
</body>
</html>


