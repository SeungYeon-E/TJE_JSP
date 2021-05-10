<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function checkLogin() {
		var form = document.loginForm
		//Empty Check
		if(form.id.value == ""){
			alert("아이디를 입력해 주세요!");
			form.id.focus();
			return false;
		}else if(form.passwd.value == ""){
			alert("비밀번호를 입력해 주세요!");
			form.passwd.focus();
			return false;
		}
		//Length Check
		if(form.id.value.length < 4 || form.id.value.lenth > 12){
			alert("아이디는 4~12자리 이내로 입력 가능 합니다.");
			form.id.select();//글자 잡힘
			return false;
		}
		if(form.passwd.value.length < 4){
			alert("비밀번호는 4자 이상으로 입력 해야 합니다.");
			form.passwd.focus();
			return false;
		}
		form.submit();
	}

</script>
<body>
	<form name="loginForm" action="validation_03_Process.jsp" method="post">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="passwd"></p>
		<p><input type="button" value="전송" onclick="checkLogin()"></p><!-- 타입이 바뀌어야해 서브밋은 자바스크립트가 해줄거야 -->
	</form>
</body>
</html>