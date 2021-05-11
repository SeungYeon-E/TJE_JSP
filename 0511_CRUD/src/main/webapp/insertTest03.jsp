<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력 결과</title>
</head>
<body>
	<h3>입력결과</h3>
	<%
	String str = request.getParameter("result");
	if(str.equals("success")){
		out.print("저장 되었습니다.");
	}else{
		out.print("문제가 발생했습니다.");
	}
	%>
</body>
</html>