<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제 결과</title>
</head>
<body>
	사용자 ID : <%=session.getAttribute("ID") %><br><br>
	
	상기의 정보로 삭제되었습니다. 감사합니다.
	
	<%session.invalidate();//session 데이터를 지운다 %>
</body>
</html>