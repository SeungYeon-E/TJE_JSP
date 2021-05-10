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
		}else if(form.name.value == ""){
			alert("이름를 입력해 주세요!");
			form.name.focus();
			return false;
		}else if(form.email.value == ""){
			alert("이메일를 입력해 주세요!");
			form.email.focus();
			return false;
		}
		//Length Check
		if(form.id.value.length < 4 || form.id.value.lenth > 12){
			alert("아이디는 4~12자리 이내로 입력 가능 합니다.");
			form.id.select();//글자 잡힘
			return false;
		}else if(form.passwd.value.length < 4){
			alert("비밀번호는 4자 이상으로 입력 해야 합니다.");
			form.passwd.focus();
			return false;
		}
		//K Check
		/* const regExp = /^[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]*$/; */
		const regExp = /^[가-힣]*$/;
		if(!regExp.test(form.name.value)){
			alert("이름은 한글만으로 입력해 주세요.");
			form.name.select();//글자 잡힘
			return false;
		}
		const regnum = /^[0-9]*$/;
		if(!regnum.test(form.num2.value) || !regnum.test(form.num3.value) ){
			alert("연락처는 숫자만 입력 가능 합니다.");
			form.num2.select();
			return false;
		}
		const regemail = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
		if(!regemail.test(form.email.value)){
			alert("이메일을 확인해 주세요.");
			form.email.select();
			return false;
		}
		form.submit();
	}

</script>
<body>
	<form name="loginForm" action="validation_05_Process.jsp" method="post">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="passwd"></p>
		<p>이름 : <input type="text" name="name"></p>
		<p>연락처 : <select name = "num1">
				<option value="010" selected="selected">010</option>
				<option value="011">011</option>
				<option value="019">019</option>
				</select>
				-<input type="text" name="num2" size="5">-<input type="text" name="num3" size="5"></p>
		<p>이메일 : <input type="text" name="email"></p>
		<p><input type="button" value="가입하기" onclick="checkLogin()"></p><!-- 타입이 바뀌어야해 서브밋은 자바스크립트가 해줄거야 -->
	</form>
	
</body>
</html>