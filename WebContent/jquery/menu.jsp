<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
	<meta charset="UTF-8">
	<meta name='viewport' content='width=device-width, initial-scale=1.0'>
	<link rel='stylesheet' href='https://code.jquery.com/ui/1.12.1/themes/south-street/jquery-ui.css'> <!-- 2 -->
	<script src='../lib/jquery-3.6.0.min.js'></script> <!-- 1 -->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script> <!-- 3 -->
	<title>menu</title>
	<style>
	#menu{
		width: 200px;
	}
	</style>
</head>
<body>
<div id='menu'>
	<h2>MENU</h2>
	<ul id='menu_here'>
		<li><a href='#'>html</a>
			<ul>
				<li><a href=''>개요</a></li>
				<li><a href=''>글자태그</a></li>
				<li><a href=''>문단태그</a></li>
				<li><a href=''>폼태그</a></li>
			</ul>
		</li>
		
		<li><a href='#'>css</a>
			<ul>
				<li><a href=''>selector</a></li>
				<li><a href=''>margin</a></li>
				<li><a href=''>border</a></li>
				<li><a href=''>padding</a></li>
			</ul>
		</li>
		<li><a href='#'>javascript</a>
			<ul>
				<li><a href=''>동적</a></li>
				<li><a href=''>웹페이지</a></li>
				<li><a href=''>focus</a></li>
				<li><a href=''>onclick</a></li>
			</ul>
		</li>
		<li><a href='#'>jsp</a></li>
		<li><a href='#'>java</a></li>
		
	</ul>

</div>
<script>
	$('#menu_here').menu();
</script>
</body>
</html>