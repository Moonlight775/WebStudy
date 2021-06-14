<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>media3</title>
<style>
	#media .r{background-color:#ff0000;}
	#media .g{background-color:#00ff00;}
	#media .b{background-color:#0000ff;}
	#media>div{
		height:300px;
		float:left;;
	}
</style>
<link rel='stylesheet' type='text/css' href='m1.css' media='screen and (min-width:1000px)'>
<link rel='stylesheet' type='text/css' href='m2.css' media='screen and (min-width:700px) and (max-width:999px)'>
<link rel='stylesheet' type='text/css' href='m3.css' media='screen and (max-width:699px)'>
</head>
<body>
<div id='media'>
	<div class='r'>R</div>
	<div class='g'>G</div>
	<div class='b'>B</div>
</div>
</body>
</html>