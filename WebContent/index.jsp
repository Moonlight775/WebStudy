<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>index</title>
<script src='./lib/jquery-3.6.0.min.js'></script>
<script src='./js/main.js'></script>
<link rel='stylesheet' type='text/css' href='./css/index.css'>
</head>
<body>
<%
	// 기본 include 페이지
	//String border = "./member/search.jsp";
	String border = "./board.do";
	String stock = "./member/search.jsp";
	String gb = "./guestbook/list.jsp";
	
	request.setAttribute("border", border);
%>
	<div id='index'>
		<div id='login'>
			<jsp:include page="loginForm.jsp"/>
		</div>
		
		<%@include file="header.jsp" %> <!-- ←정적이므로 변수사용X -->
		
		<div id='center'>
			<div id='sub_menu'>서브메뉴</div>
			<div id='middle'>
				<div id='border'> 
				<!-- jsp 동적 include를 제거하고 servlet이 이 기능을 하게 한다. disp.include(req, resp); 참조-->
				</div>
				<div id='stock'>
					<jsp:include page="<%=stock %>"/>
				</div>
			</div>
			<div id='guestbook'>
				<jsp:include page="<%=gb %>"/>
			</div>
		
		</div>
		
		<%@include file="footer.jsp" %>
		
	</div>
	
	<script>
		$('#border').load('${border}', 'job=search'); //'job=... <-search로 바꾸면 조회 / register를 쓰면 입력 / 원하는 것 넣기'
	</script>	
	
</body>
</html>