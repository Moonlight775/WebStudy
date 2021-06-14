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

#virtual_class h2{
	margin-top: 3%;
	margin-left: 15%;
}

#virtual_class .menu{
	margin-top: 4.5%;
	margin-left: 15%;
	width: 65%;
	height: 30px;
	background-color:#69d5e2;
	box-shadow: 2px 2px 4px 0px #aaa;
	border-radius: 7px;
	padding: 4px;
}

#virtual_class .menu li{
	list-style: none;
	float: left;
	/*혹은 display: inline-block 
	float의 경우 완전히 딱붙고, inline-block은 사이의 간격이 자동으로 생성됨.*/
	width: 90px;
	height: 23px;
	color:#fff;
	text-align: center;
	border-radius: 7px;
}

#virtual_class .sub{
	border-left:2px solid #444;
	border-right:2px solid #444;
	border-bottom:2px solid #444;
	border-radius:0 0 4px 4px;
	color:#fff;
	background-color:#69d5e2;
	padding-top:10px;
	text-align:center;
	opacity:0;
	transition-property:opacity;
	transition-duration:1s;
}


/*-----------가상클래스---------------*/

#virtual_class .menu li:hover{
	color:#69d5e2;
	background-color:#fff;
	transition-property:background-color, color;
	transition-duration:2s;
}
#virtual_class .menu li:hover .sub{
	opacity:1.0;
	height:100px;
	transition-property:opacity, height;
	transition-duration:2s;
}

#virtual_class .menu li:hover .sub li:hover{
	background-color:#fff;
	color:#69d5e2;
	border-radius:0px;
}

</style>
</head>
<body>
<div id = 'virtual_class'>
	<h2>가상 클래스, 요소를 사용한 메뉴 설계</h2>
	<div class= 'menu'>
		<ul>
			<li>MENU1
					<ul class = 'sub'>
						<li>sub1</li>
						<li>sub2</li>
						<li>sub3</li>
					</ul>
			</li>
			
			<li>MENU2
					<ul class = 'sub'>
						<li>sub1</li>
						<li>sub2</li>
						<li>sub3</li>
					</ul>
			</li>
			
			<li>MENU3
					<ul class = 'sub'>
						<li>sub1</li>
						<li>sub2</li>
						<li>sub3</li>
					</ul>
			</li>
			
			<li>MENU4
					<ul class = 'sub'>
						<li>sub1</li>
						<li>sub2</li>
						<li>sub3</li>
					</ul>
			</li>
			
			<li>MENU5
					<ul class = 'sub'>
						<li>sub1</li>
						<li>sub2</li>
						<li>sub3</li>
					</ul>
			</li>
			
			<li>MENU6
					<ul class = 'sub'>
						<li>sub1</li>
						<li>sub2</li>
						<li>sub3</li>
					</ul>
			</li>
		</ul>
	</div>

</div>
</body>
</html>
