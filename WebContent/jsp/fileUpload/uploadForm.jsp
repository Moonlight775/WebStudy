<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>uploadForm</title>
</head>
<body>
<div id='uploadForm'>
	<h2>File Upload</h2>
	<form name='frm' method='post' enctype='multipart/form-data' action='/WebStudy/upload.do'>
		text : <input type='text' name='mid' value='hong'/><br/>
		file1 : <input type='file' name='file1' /><br/>
		file2 : <input type='file' name='file2' /><br/>
		<input type='submit' value='전송'/>
	
	</form>
</div>
</body>
</html>