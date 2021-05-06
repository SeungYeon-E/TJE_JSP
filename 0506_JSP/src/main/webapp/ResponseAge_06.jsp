<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!
	int age;
	String title, result;	

%>
<%

	age = Integer.parseInt(request.getParameter("age"));
	
	if(age >= 20){
		title = URLEncoder.encode("성인", "utf-8");
		result = URLEncoder.encode("가능", "utf-8");
	}else {
		title = URLEncoder.encode("미성년자", "utf-8");
		result = URLEncoder.encode("불가능", "utf-8");
	}
		response.sendRedirect("ResponseAge_07.jsp?age=" + age + "&title=" + title + "&result=" + result);
%>
</body>
</html>