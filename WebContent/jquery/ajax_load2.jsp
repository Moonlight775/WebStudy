<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
	<meta charset="UTF-8">
	<meta name='viewport' content='width=device-width, initial-scale=1.0'>
	<link rel='stylesheet' href='https://code.jquery.com/ui/1.12.1/themes/overcast/jquery-ui.css'> <!-- 2 -->
	<script src='../lib/jquery-3.6.0.min.js'></script> <!-- 1 -->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script> <!-- 3 -->
	<title>ajax_load</title>
</head>
<body>
<div id='ajax_load2'>
	<input type='text' id='findStr'/>
	<input type='button' value='검색' id='btnFind'/>
	<hr/>
	<div id='result'></div>
</div>
<script>
	$('#btnFind').click(function(){
		var param = '?findStr=' + $('#findStr').val();
		var url = '../ajax/json_form_result.jsp' + param;
		$('#result').load(url);
	})
</script>
</body>
</html>