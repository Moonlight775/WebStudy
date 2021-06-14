<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>forEach</title>
</head>
<body>
<div id='forEach'>
	<h3>1~100 출력</h3>
	<c:forEach var="i" begin="1" end="100">
		${i }
	</c:forEach>
	
	<h3>1~100까지 홀수</h3>
	<c:forEach var="i" begin="1" end="100" step="2">
		${i }
	</c:forEach>
	
	<h3>1~100까지의 합</h3>
	<c:set var='hap' value='0'/>
	<c:forEach var="i" begin="1" end="100">
		<c:set var='hap' value='${hap+i }'/>
	</c:forEach>
	hap : ${hap }

	<h3>Array 출력</h3>
	<%
		int[] score = {45,123, 342,568,78,908,56,437,5,1,87,4,11};
	%>
	
	
	<h3>List 출력</h3>
	
	<h3>Map 출력</h3>
</div>
</body>
</html>