<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>게시판 답글</title>
<link rel='stylesheet' type='text/css' href='/WebStudy/css/board.css'>
<script src='./lib/jquery-3.6.0.min.js'></script>
<script src='./js/board.js'></script>
</head>
<body>
<div id='board'>
<h1>게시판 답글</h1>
<form name='frm_board' id='frm_board' method='post' action=''>
	<label>작성자</label>
	<input type='text' name='mid' />
	<br/>
	
	<label>제목</label>
	<input type='text' name='subject' value='hi.....' />
	<br/>
	
	<textarea name='doc'></textarea>
	<br/>
	
	<label>암호</label>
	<input type='password' name='pwd'/>
	<br/>
	
	<label>첨부파일</label>
	<input type='file' name='attfile' id='attfile' multiple/>
	
	<div id='image_preview'>
		<div id='attzone'></div>
	</div>

	<div id='btn_zone'>
		<input type='button' value='답글작성' id='btnReplR'/>
		<input type='button' value='취소' id='btnSearch'/>
	</div>	
	
	<input type='text' name='nowPage' value='${param.nowPage }'/>
	<input type='text' name='findStr' value='${param.findStr }'/>	
	<input type='text' name='serial'  value='${param.serial }'/>
	
</form>

</div>
<script> 
brd.init();
imageView('attfile', 'attzone');
</script>
</body>
</html>