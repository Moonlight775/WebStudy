<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>flex</title>
<style>
	#flex #container>div, .header, .footer{
		border:1px solid orange;
		width:200px;
	}
	
	#container{
		display:flex;
		height:400px;
		/*flex-direction:row;
		flex-wrap:wrap;
		flex-flow:row wrap;
		align-items:stretch;
		*/
	}
	#flex .header, #flex .footer{
		width:100%;
		background-color:#ddd;
	}
	#conatiner #a{flex: 2 1 0;}

	
</style>
</head>
<body>
<div id='flex'>
	<div class='header'>HEADER</div>
		<div id='container'>
			<div id='a'>A</div>
			<div id='b'>B</div>
			<div id='c'>C</div>
			<div id='d'>D</div>
			<div id='e'>E</div>
		</div>
	<div class='footer'>FOOTER</div>

</div>
</body>
</html>