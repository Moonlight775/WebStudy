<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device=width, initial-scale=1.0'>
<title>이미지 태그</title>
</head>
<body>
<div id='img'>
<h2>절대 경로</h2>
<img src='/WebStudy/imgs/nightview.jpg' width='400px'/>
<br/>
<img src='/WebStudy/imgs/doughnut.jpg' width='300px'/>

<h2>상대 경로</h2>
<img src='../imgs/puppy.jpg' width='400px' height='400px'/>
<br/>
<img src='../imgs/waterfall.jpg' width='400px'/>
</div>

<h2>웹상에 있는 이미지 연결</h2>
<img src='https://search.pstatic.net/common/?src=https%3A%2F%2Fshopping-phinf.pstatic.net%2Fmain_1024557%2F10245576967.5.jpg&type=sc960_832' width='400px'>

<h2>이미지와 텍스트</h2>
<div>
	<img src='../imgs/plane.jpg' width='400px' align='left' hspace='50px' vspace='50px'/>
	모든 콘텐츠는 본 서비스 blah blah~~.

</div>


</body>
</html>