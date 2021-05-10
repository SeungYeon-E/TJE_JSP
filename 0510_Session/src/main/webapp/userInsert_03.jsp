<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	request.setCharacterEncoding("utf-8");

	String agree = request.getParameter("agree");
	
	switch(agree){
	case "yes" :
		response.sendRedirect("userInsert_04.jsp");
		break;
	case "no" :
		response.sendRedirect("http://localhost:8080/0510_Session/userInsert_01.jsp");
		break;
	}

%>

</body>
</html>