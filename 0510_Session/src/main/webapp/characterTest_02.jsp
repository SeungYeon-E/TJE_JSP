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
	request.setCharacterEncoding("utf-8"); //한글 포멧으로 변경된다.
	String food = request.getParameter("food");//food로 받아온다
	
	//Session에 입력하기
	session.setAttribute("FOOD", food); //세션에 푸드라고 입력되어 서버에 저장된다


%>

	<h2>좋아하는 동물은?</h2>
	<br>
	<form action="characterTest_03.jsp" method="post">
		<input type="text" name="animal">
		<br><br>
		<input type="submit" value="확인">
	
	</form>

</body>
</html>