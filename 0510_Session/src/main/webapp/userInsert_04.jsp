<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 결과</title>
</head>
<body>

<h3>회원 가입 결과</h3>
가입되었습니다.<br>

<h1>가입내용</h1>

아이디 : <%=session.getAttribute("ID") %><br>
패스워드 : <%=session.getAttribute("PW") %><br>
성명 : <%=session.getAttribute("NAME") %><br>

아이디 : ${ID }<br>
패스워드 : ${PW }<br>
성명 : ${NAME }<br>
	
<%session.invalidate();//session 데이터를 지운다 %>

</body>
</html>