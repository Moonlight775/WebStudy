<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewprot' content='width=device-width, initial-scale=1.0'>
<title>목록태그</title>
</head>
<body>
<div id='list'>
	<h1>목록태그</h1>
	<fieldset>
		<legend>목록태그의 종류와 특징</legend>
		<ol>
			<li>ul : unordered list라는 의미이며 항목의 기호문자를 붙여줌.</li>
				<ul type='disc'>
					<li>type='circle' : 속이 빈 동그라미</li>
					<li>type='disc' : 속이 찬 동그라미</li>
					<li>type='square' : 속이 찬 네모</li>
				</ul>
			<li>ol : ordered list라는 의미이며 항목에 순서를 나타내는 번호를 붙여줌.</li>
				<ol type = 'I' start='3'>
					<li> 1 : 기호를 숫자로 나타냄(기본값)</li>
					<li> a A : 기호를 알파베으로 나타냄</li>
					<li> i I : 기호를 로마숫자로 나타냄</li>
					<li> type, start, reversed</li>
				</ol>
			<li>dl : description list라는 의미이며 제목과 설명을 한쌍으로 해서 목록으로 보여줌.</li>
				<dl>
					<dt>HTML5</dt>
					<dd>현재 웹 표준으로 사용되고 있는 하이퍼 텍스트 마크업 언어이다.</dd>
					<dt>CSS3</dt>
					<dd>현재 HTML5와 같이 웹 표준언어이며, 태그에 스타일을 지정해주는 속성</dd>
					<dt>JavaScript</dt>
					<dd>클라이언트용 인터프리터 언어이며, 브라우저에서 작동된다</dd>
				</dl>
			
		</ol>
	</fieldset>

	<h2>연습</h2>
	<div class='exam'>
		oracle, java, jsp, ajax, mybatis, spring, android 요소를 
		ol, li, 설명을 포함한 dl 태그로 항목을 나열해 보시오.
	<h2>이수과목</h2>
	<ol type='A'>
		<li>oracle</li>
		<li>java</li>
		<li>jsp</li>
		<li>ajax</li>
		<li>mybatis</li>
		<li>spring</li>
		<li>android</li>
	</ol>
	
	<ul type='square'>
		<li>oracle</li>
		<li>java</li>
		<li>jsp</li>
		<li>ajax</li>
		<li>mybatis</li>
		<li>spring</li>
		<li>android</li>
	</ul>	
	
	<dl>
		<dt>Database</dt>
		<dd>oracle</dd>
		<dd>mybatis</dd>
		
		<dt>App</dt>
		<dd>java, android</dd>
		
		<dt>web</dt>
		<dd>jsp, ajax</dd>
		
		<dt>framework</dt>
		<dd>mybatis, ajax, jquery, spring</dd>
	
	</dl>	
		
		<ol>
			<li>Oracle : 미국의 기업에서 만든 데이터 베이스 관리 시스템</li>
			<li>Java : 썬 마이코시스템즈사에서 제임스 고슬링이 고안하였고 오크, 혹은 그린이라 불렸다.
				<ul type='square'>
					<li>객체지향 언어이다.</li>
					<li>이식성이 높다.</li>
					<li>동적 로딩을 지원한다.</li>
					<li>인터프린터 언어이다.</li>
				</ul>
			<li>JSP : JavaServer Pages의 약자이며 HTML 코드에 JAVA코드를 넣어 동적 웹페이지를 생성하는 웹어플리케이션 도구이다.</li>
				<dl>
					<dt>
				</dl>
		</ol>
	
	</div>

	<hr/>
	<!-- 주석 기호 -->


</div>
</body>
</html>

<!-- 레이아웃에 table 태그 잘 안 쓰는 이유 -> 1.랜더링 속도가 느리다. 2.table 태그 안의 컨텐츠의 이동이 어렵다. -->