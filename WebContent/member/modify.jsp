<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>회원정보수정</title>
<link rel='stylesheet' type='text/css' href='/WebStudy/css/member.css'>
<script src='./lib/jquery-3.6.0.min.js'></script>
<script src='./js/member2.js'></script>
<script src='//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js'></script>
</head>
<body>
<div id='member'>
<h1>회원정보수정</h1>
<form name='frm_member' id='frm_member' method='post' action=''>
	<label>아이디</label>
	<input type='text' name='mid' value='${vo.mid }' />
	<br/><br/>
	
	<label>성명</label>
	<input type='text' name='irum' value='${vo.irum }' />
	<br/><br/>
		
	<label>연락처</label>
	<input type='text' name='phone' value='${vo.phone }' />
	<br/><br/>
	
	<label>주소</label>
	<input type='text' name='post' value='${vo.post }'>
	<input type='button' value='우편번호' name='btnZipCode' onclick='funcZip()'/>
	<br/>
	
	<label></label>
	<input type='text' name='address' size='50' value='${vo.address }'/>
	<br/>
	<label>상세주소</label>
	<input type='text' name='address2' size='50' value='${vo.address2 }'/>
	
	<br/><br/>
	
	<label>이메일</label>
	<input type='text' name='account' value='${vo.account }'/>
	<output>@</output>
	<select name='host'>
		<option value='IT여행자'>IT여행자</option>
		<option value='acorn'>ACORN</option>
		<option value='네이버'>네이버</option>
		<option value='네이트'>네이트</option>
		<option value='다음'>다음</option>
	</select>
	<div id='btn_zone'>
		<input type='button' id='btnUpdate' value='수정'>
		<input type='button' id='btnSelect' value='취소'>
	</div>
	
		<c:choose>
		<c:when test="${vo.photo eq null }">
			<img src='http://placehold.it/150X180' class='photo' 
					id='photo' width='150px' height='180px'/>
		</c:when>
		
		<c:when test="${vo.photo ne null }">
			<img src='./member/picture/${vo.photo }' class='photo' 
						id='photo' width='150px' height='180px' />
		</c:when>
	</c:choose>
	
	
		<input type='hidden' name='pwd'/>	
		<input type='text' name='nowPage' value='${param.nowPage }'/>
		<input type='text' name='findStr' value='${param.findStr }'/>
		<input type='file' name='picture' id='picture'/>

</form>

	<div id='passwordZone'>
		<div id='textZone'>
			<label>수정하시려면 암호를 입력해주세요.</label>
			<input type='password' id='pwd'/>
			<input type='button' value='확인' id='btnUpdateR'/>
			<input type='button' value='취소' id='btnCancel'/>
		</div>
	</div>

</div>
<script> 
	member.init(); 
	member.checkHost('${vo.host}');
</script>

</body>
</html>