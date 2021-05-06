<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과값</title>
</head>
<body>

	<%
	
		int addnum1, addnum2, mulnum1, mulnum2;
			
		addnum1 = Integer.parseInt(request.getParameter("addnum1"));
		addnum2 = Integer.parseInt(request.getParameter("addnum2"));
		mulnum1 = Integer.parseInt(request.getParameter("mulnum1"));
		mulnum2 = Integer.parseInt(request.getParameter("mulnum2"));
	
	%>
	
	<%=addnum1 %> + <%=addnum2 %> = <%=addnum1 + addnum2 %><br>
	<%=mulnum1 %> * <%=mulnum2 %> = <%=mulnum1 * mulnum2 %>

</body>
</html>