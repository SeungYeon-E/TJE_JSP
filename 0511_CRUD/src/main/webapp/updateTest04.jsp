<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>수정 결과</h3>
	사용자 ID가 <%=session.getAttribute("OLD") %> 에서
	<%=session.getAttribute("NEW") %>로 변경 되었습니다.<br>
	감사합니다.
	
</body>
</html>