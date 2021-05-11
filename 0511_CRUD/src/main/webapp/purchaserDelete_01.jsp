<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제할 ID</title>
</head>
<script type="text/javascript">
	function CheckForm() {
		var form = document.idcheckform
		if(form.userid.value == ""){
			alert("아이디를 입력해 주세요!");
			form.userid.focus();
			return false;
		}
		form.submit();
	}
</script>
<body>
	<h3>삭제할 사용자 ID를 입력후 확인 버튼을 누르세요!</h3>
	<form action="purchaserDelete_02.jsp" name=idcheckform method="post">
		사용자 ID : <input type='text' name="userid" size="5">
		<input type="button" value="OK" onclick="CheckForm()">
	</form>
</body>
</html>