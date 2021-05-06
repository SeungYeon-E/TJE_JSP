<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숫자 입력</title>
</head>
<body>
	<form action="Exercise01_01.jsp" method = "post">
		<input type="text" name="addnum1" size="10"> +
		<input type="text" name="addnum2" size="10"><br>

		<select name = "mulnum1">
			<%
				for(int i=1;i<1000;i++){
					out.print("<option value=\""+i+"\">"+i+"</option>");
				}
			%>
		</select>
		*
		<select name = "mulnum2">
			<%
				for(int i=1;i<1000;i++){
					out.print("<option value=\""+i+"\">"+i+"</option>");
				}
			%>
		</select><br>
			
		<input type="submit" value="전송">
		<input type="reset" value="취소">
	
	</form>
</body>
</html>