<%@page import="chap10.StudentVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<title>set_remove</title>
</head>
<body>
<div id='set_remove'>
	<h2>c:set</h2>
	<c:set var="irum" value="hong"/>
	<c:set var="address" value="서울 종로구"/>
	<c:set var="phone" value="010-1234-1234"/>
	<b>IRUM 	 : </b> ${irum } <br/>
	<b>Address : </b> ${address } <br/>
	<b>Phone 	 : </b> ${phone } <br/>
	
	<!-- 두 정수를 a,b에 대입한 후 두수의 합을 출력 -->
	<c:set var="a" value="100"/>
	<c:set var="b" value="200"/>
	<c:set var="hap" value="${a+b }"/>
	
	<ul>
		<li>A 	: ${a } </li>
		<li>B 	: ${b } </li>
		<li>A+B : ${hap } </li>
	</ul>
	
	<!-- 자바 객체를 set으로 저장한 뒤 결과 출력 -->
	<%
		StudentVo vo = new StudentVo();
		vo.setMid("kim");
		vo.setPhone("010-1111-2222");
		vo.setAddress("부산");
	%>
	<hr/>
	<c:set var="vo" value="<%=vo %>"/>
	<ul>
		<li>MID 		: ${vo.mid } </li>
		<li>Phone 	: ${vo.phone } </li>
		<li>Address : ${vo.address } </li>
	</ul>
	
	<h2>c:remove</h2>
	<c:remove var="vo"/>
	<ul>
		<li>MID 		: ${vo.mid } </li>
		<li>Phone 	: ${vo.phone } </li>
		<li>Address : ${vo.address } </li>
	</ul>
	
</div>
</body>
</html>