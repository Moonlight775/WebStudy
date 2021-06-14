<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>2단 레이아웃</title>
<style>

#layout div{
	border:1px solid #00bcd4;
	border-radius:5px;
}
#layout{
	width:1200px;
	padding:10px;
	margin:0 auto;
}
#layout #header{
	width:1200px;
	height:300px;
	padding:5px;
	margin-bottom:20px;
	background-image:url('../imgs/house.jpg');
}
#layout #lsidebar{
	width:300px;
	padding:20px;
	float:left;
	margin-bottom:20px;
	margin-right:20px;
}
#layout #main{
	width:430px;
	padding:20px;
	float:left;
	margin-bottom:20px;
}
#layout #rsidebar{
	width:300px;
	padding:20px;
	float:right;
	margin-bottom:20px;
}
#layout #footer{
	width:1200px;
	padding:20px;
	clear:both;
}


</style>
</head>
<body>
<div id='layout'>
	<div id='header'>
		<h1>사이트 제목</h1>	
	</div>

	<div id='lsidebar'>
		<h2>왼사이드바</h2>
		<p>대통령은 조국의 평화적 통일을 위한 성실한 의무를 진다. 위원은 정당에 가입하거나
		   정치에 관여할 수 없다.</p>
	</div>
	
	<div id='main'>
		<h2>본문</h2>
		<p>재판의 심리와 판결은 공개한다. 다만, 심리는 국가의 안전보장 또는 
		안녕질서를 방해하거나 선량한 풍속을 해할 염려가 있을 때에는 법원의 결정으로 
		공개하지 아니할 수 있다. 헌법재판소에서 법률의 위헌결정, 탄핵의 결정, 
		정당해산의 결정 또는 헌법소원에 관한 인용결정을 할 때에는 재판관 6인 이상의 
		찬성이 있어야 한다.</p>

		<p>대통령은 법률에서 구체적으로 범위를 정하여 위임받은 사항과 법률을 집행하기 
		위하여 필요한 사항에 관하여 대통령령을 발할 수 있다. 환경권의 내용과 행사에 
		관하여는 법률로 정한다. 국가는 국민 모두의 생산 및 생활의 기반이 되는 국토의 
		효율적이고 균형있는 이용·개발과 보전을 위하여 법률이 정하는 바에 의하여 그에 
		관한 필요한 제한과 의무를 과할 수 있다.</p>
	</div>
	
	<div id='rsidebar'>
		<h2>오사이드바</h2>
		<p>공무원의 신분과 정치적 중립성은 법률이 정하는 바에 의하여 보장된다.</p>
	</div>
	
	<div id='footer'>
		<h2>푸터</h2>
		<p>국회의원의 선거구와 비례대표제 기타 선거에 관한 사항은 법률로 정한다.</p>
	</div>
	
</div>

</body>
</html>