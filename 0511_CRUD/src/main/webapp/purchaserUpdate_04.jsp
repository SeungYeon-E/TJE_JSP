<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정 결과</title>
</head>
<body>

	
	<h3>수정 결과</h3>
	사용자 ID : <%=session.getAttribute("ID") %><br>
	성명 : <%=session.getAttribute("NAME") %><br>
	전화번호 : ${TEL }<br>
	주소 : ${ADDRESS }<br>
	
	상기의 정보로 수정되었습니다. 감사합니다.
	
	<%session.invalidate();//session 데이터를 지운다 %>
</body>
</html>