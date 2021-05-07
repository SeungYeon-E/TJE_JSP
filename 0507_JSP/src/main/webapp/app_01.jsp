<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 내장변수</title>
</head>
<body>
<%
	String appPath = application.getContextPath();//어디안에있냐 0507_JSP
	String filePath = application.getRealPath("input.txt");//진짜 경로!! 실제로 많이 쓴다

%>

<%=appPath %><br>
<%=filePath %>
	
</body>
</html>