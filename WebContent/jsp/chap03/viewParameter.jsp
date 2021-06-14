<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청 파라메터 출력</title>
</head>
<body>
<%
	// 자바 타입의 한줄 주석
	/* 자바 타입의 여러 줄 주석 */
%>
<%-- 
	JSP 타입의 주석
--%>


<b>request.getParameter()메서드 사용</b><br>
request.setCharacterEncoding("utf-8");
// getParameter, getParameterValues
name 파라미터 = <%= request.getParameter("name") %><br>

//sendRedirect(url)
//name값이 null이거나 빈문자라면 페이지를 form.jsp로 이동
if(name == null || name.equals("")) {
	response.sendRedirect("form.jsp");
}

address 파라미터 = <%= request.getParameter("address") %>
<p>
<b>request.getParameterValues()메서드 사용</b><br>
<%
	String[] values = request.getParameterValues("pet");
	if(values !=null){
		for(int i = 0; i < values.length; i++){
%>
	<%= values[i]%>
<%
		}
	}

%>

<p>
<b>request.getParameterNames()메서드 사용</b><br>
<%
	Enumeration paramEnum = request.getParameterNames();
	while(paramEnum.hasMoreElements()){
		String name = (String)paramEnum.nextElement();
%>
	<%= name %>
<%
	}
%>

<p>
<b>request.getParameterMap()메서드 사용</b><br>
<%
	Map parameterMap = request.getParameterMap();
	String[] nameParam = (String[])parameterMap.get("name");
	String[] addressParam = (String[])parameterMap.get("address");
	String[] petParam = (String[])parameterMap.get("pet");

	if(nameParam != null){
		%>
		name = <%= nameParam[0] %>
	<%	
	}
	
	if(addressParam != null){
		%>
		address = <%= addressParam[0] %>
	<%	
	}
	if(petParam != null){
		%>
		pet = <%= petParam[0] %>
		
		<%
	}
%>



</body>
</html>






