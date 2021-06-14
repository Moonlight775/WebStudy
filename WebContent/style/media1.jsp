<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>media</title>
<style>
	#media .r{background-color:#ff0000;}
	#media .g{background-color:#00ff00;}
	#media .b{background-color:#0000ff;}
	#media>div{
		height:300px;
		float:left;
	}
	
	@media screen and (min-width:1000px){
		#media .r{width:33%;}
		#media .g{width:33%;}
		#media .b{width:33%;}
	}
	@media screen and (min-width:700px) and (max-width:999px){
		#media .r{width:100%;}
		#media .g{width:50%;}
		#media .b{width:50%;}
	}
	@media screen and (max-width:699px){
		#media .r{width:100%;}
		#media .g{width:100%;}
		#media .b{width:100%;}
	}
	</style>
</head>
<body>
<div id='media'>
	<div class='r'>R</div>
	<div class='g'>G</div>
	<div class='b'>B</div>

</div>
</body>
</html>