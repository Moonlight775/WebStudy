<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, intial-scale=1.0'>
<title>usemap</title>
</head>
<body>
<div id='usemap'>
	<fieldset>
		<legend>usemap</legend>
		<dl>
			<dt>shape</dt>
			<dd>circle, rect, poly
			
			<dt>coords</dt>
			<dd>
				- circle : 'x, y, r' => x,y 원의 중점이고, r은 원의 반지름.
				- rect : 'x1, y1, x2, y2' => x1, y1은 사각형의 좌측상단 모서리의 좌표. x2,y2는 우측하단 모서리<br/>
				- poly : 'x1, y1, x2, y2, x3, y3, ...' => 각각의 좌표를 이은 선이 영역이 됨.
			</dd>
		</dl>
	</fieldset>

	<img src='../imgs/igloo.jpg' width='500px' usemap='#igloo'/>

	<map name='igloo'>
		<area shape='circle' coords='250,250,60' href='http://www.naver.com' alt='네이버' target='_blank'/>
		<area shape='poly' coords='360,190, 450,130, 420,330, 280,315, 363,277' 
			  href='http://www.jobtc.kr' target='_blank'/>
		<area shape='rect' coords='100,20, 280,130' 
		      href='http://www.google.com' alt='구글' target='_blank'/>
	</map>

</div>

</body>
</html>






