<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>약관</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("password");
	String name = request.getParameter("name");
	
	//Session에 입력하기
	session.setAttribute("ID", id); 
	session.setAttribute("PW", pw); 
	session.setAttribute("NAME", name); 

%>
	<h3>약관</h3>
	----------------------------------------<br>
	1. 회원 정보는 웹사이트의 운영을 위해서만 사용 됩니다.<br>
	2. 웹사이트의 정상 운영을 방해하는 회원은 탈퇴 처리 합니다.<br>
	----------------------------------------<br>
	위의 약관에 동의 하십니까?<br><br>
	
	<form action="userInsert_03.jsp" method="post">
		<input type="radio" name ="agree" value="yes" checked="checked">동의 함
		<input type="radio" name ="agree" value="no">동의 하지 않음<br><br>
		<input type="submit" value="확인">
	
	</form>

</body>
</html>