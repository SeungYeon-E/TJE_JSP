<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function CheckForm() {
		alert("아이디 :" + document.loginform.id.value + "\n" + 
				"비밀번호 :" + document.loginform.password.value);
	}


</script>
<body>
	<form name="loginform">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="password"></p>
		<p><input type="submit" value="전송" onclick="CheckForm()"></p><!-- onclick="CheckForm()"는 자바스크립트(트리구조) -->
	</form>
</body>
</html>