<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>Upload Test</title>
</head>
<body>
<h3>Upload Test</h3>
<%
	String mid = request.getParameter("mid");
%>
<div> enctype='multipart/form-data'로 전될된 값은
			일반적인 request.getParamet로 파라미터 테이더를 가져올 수 없음.
</div>
<ul>
	<li>MID : <%=mid %></li>
</ul>
</body>
</html>