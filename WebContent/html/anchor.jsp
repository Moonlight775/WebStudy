<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewprot' content='width=device-width, initial-sclae=1.0'>
<title>앵커 태그</title>
</head>
<body>
<div id='ahchor'>
	<h2>현재 페이지에 링크 걸기</h2>
	<a href='http://www.naver.com'>네이버</a>
	<a href='http://www.jobtc.kr'>IT여행자</a>

	<h2>새로운 창에 링크 열기</h2>
	<a href='http://www.jobtc.kr' target='sub'>IT여행자 카페를 새창으로 열기</a>
	<a href='http://www.naver.com' target='_blank'>네이버를 무조건 새창으로</a>
	
	<h2>링크를 클릭하여 문서 다운로드</h2>
	<a href='../imgs/puppy.jpg'>강아지</a>
	<a href='../imgs/puppy.jpg' download='강아지.jpg'>강아지(다운로드)</a>
	
	<h2>동일한 문서 내에 링크 걸기</h2> <!-- 목차형식 -->
	<a href='#1장'>1장</a>
	<a href='#2장'>2장</a>
	<hr/>
	<div id='1장'>
		1장의 내용입니다.<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
		<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
		<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
		<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	</div>

	<div id='2장'>
		2장의 내용입니다. <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
		<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
		<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
		<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	
	</div>	
</div>

</body>
</html>