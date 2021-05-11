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

	String result = request.getParameter("result");
	
	switch(result){
	case "success" :
%>
	<table>
		<tr>
			<td align="right">사용자ID : </td><td>${USERID }</td>
		</tr>
		<tr>
			<td align="right">성명 : </td><td>${NAME }</td>
		</tr>
		<tr>
			<td align="right">전화번호 : </td><td>${PHONE }</td>
		</tr>
		<tr>
			<td align="right">주소 : </td><td>${ADDRESS }</td>
		</tr>
	</table>
	
	<br><br>
		사용자ID : ${USERID }<br>
		성명 : ${NAME }<br>
		전화번호 : ${PHONE }<br>
		주소 : ${ADDRESS }<br><br>
		
		상기의 정보로 입력되었습니다. 감사합니다.
<%
		break;
	case "fail" :
%>
		정보 입력 실패하였습니다.
<%
		break;
	}

%>
		<%session.invalidate();//session 데이터를 지운다 %>
</body>
</html>