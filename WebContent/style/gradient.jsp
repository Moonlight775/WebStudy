<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html alng='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>gradient</title>
<style>
/*gradient 안에 있는 div 영역을 400X250으로 지정*/
/*그리고, 외각선을 표시하시오.*/
#gradient #line-grad{
	width:400px;
	height:250px;
	border:3px solid orange;
	background:linear-gradient(to right bottom, #bbaaee, #aaccff 30%, #8844ee 60%, #ffffff);
}
#gradient #radial-grad{
	width:400px;
	height:250px;
	border:3px solid orange;
	background:radial-gradient(#fff, #ff0, #f00);
}

</style>
</head>
<body>
<div id='gradient'>
	<h2>선형 그라디언트</h2>
	<div id='line-grad' class='grad'></div>
	
	<h2>원형 그라디언트</h2>
	<div id='radial-grad' class='grad'></div>

</div>


</body>
</html>