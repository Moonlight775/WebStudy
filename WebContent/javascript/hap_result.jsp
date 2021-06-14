<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>hap_result</title>
<style>
  #hap_result{
  	width: 200px;
  	margin: 0 auto;
  	border: 2px solid #aaa;
  	
  }
  #hap h2{
  	border-bottom: 2px dotted #aaa;
  }
  #hap_result ul{
  	list-style: none;
  }
</style>
</head>
<body>
<div id='hap_result'>
	<h2>합 결과</h2>
	<%
	  double su1 = Integer.parseInt(request.getParameter("su1"));
	  double su2 = Integer.parseInt(request.getParameter("su2"));
	  double sum = su1 + su2;
	%>
	<div class='result'>
		<ul>
		  <li>수1 : <%=su1 %> </li>
		  <li>수2 : <%=su2 %> </li>
		  <li>합계 : <%=sum %> </li>
		</ul>
	</div>
</div>
</body>
</html>