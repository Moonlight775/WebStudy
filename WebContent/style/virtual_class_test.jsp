<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang = 'ko'>
<head>
<meta charset="UTF-8">
<meta name = 'viewport' content = 'widith:device-width, initial-scale:1.0'>
<title>Virtual_Class</title>
<style>
	*{
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
	}
	
	#menu{
		border:1px solid orange;
	}
	#menu>ul>li{
		float:left;
		width:150px;
		height:150px;
	}

</style>
</head>
<body>
<div id='virtual_class'>
	<h2>가상 클래스, 요소를 사용한 메뉴 설계</h2>
	<div id='menu'>
		<ul>
			<li>MENU1
				<ul class='sub'>
					<li>부메뉴1</li>
					<li>부메뉴1</li>
					<li>부메뉴1</li>
				</ul>
			</li>

			<li>MENU2
				<ul class='sub'>
					<li>부메뉴2</li>
					<li>부메뉴2</li>
					<li>부메뉴2</li>
				</ul>
			
			<li>MENU3</li>
			<li>MENU4</li>
			<li>MENU5</li>
			
		</ul>
	
	</div>

</div>

</body>
</html>