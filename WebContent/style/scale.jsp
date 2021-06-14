<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width initial-scale=1.0'>
<title>scale</title>
<style>
	#scale .x{
		transform:scale(3,1);
		transform-origin:0 0;
	}
	#scale .y{
		transform:scale(1,3);
		transform-origin:0 0;
		position:relative;
	}
	#scale .both{
		transform:scale(3,3);
		transform-origin:0 0;
		position:absolute;
		top:1800px;
		
	}
</style>
</head>
<body>
<div id='scale'>
	<img src='../imgs/lion.jpg'/><br/>
	<img src='../imgs/lion.jpg' class='x'/><br/>
	<img src='../imgs/lion.jpg' class='y'/><br/>
	<img src='../imgs/lion.jpg' class='both'/>

</div>

</body>
</html>