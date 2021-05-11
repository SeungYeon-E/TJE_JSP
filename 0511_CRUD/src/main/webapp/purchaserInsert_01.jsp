<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function checkInsert() {
		var form = document.insertForm
		//Empty Check
		if(form.userid.value == ""){
			alert("아이디를 입력해 주세요!");
			form.userid.focus();
			return false;
		}else if(form.name.value == ""){
			alert("이름를 입력해 주세요!");
			form.name.focus();
			return false;
		}else if(form.phone.value == ""){
			alert("전화번호를 입력해 주세요!");
			form.phone.focus();
			return false;
		}else if(form.address.value == ""){
			alert("주소를 입력해 주세요!");
			form.address.focus();
			return false;
		}
		/* const regExp = /^[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]*$/; */
		const regExp = /^[가-힣]*$/;
		if(!regExp.test(form.name.value)){
			alert("이름은 한글만으로 입력해 주세요.");
			form.name.select();//글자 잡힘
			return false;
		}
		form.submit();
	}

</script>
<body>
	<h3>아래의 항목을 입력후 확인 버튼을 누르세요!</h3>
	
	<form action="purchaserInsert_02.jsp" name="insertForm" method="post">
	
	<table>
	<tr>
		<td align="right">사용자ID : </td><td><input type="text" name="userid" size="10"></td>
	</tr>
	<tr>
		<td align="right">성명 : </td><td><input type="text" name="name" size="10"></td>
	</tr>
	<tr>
		<td align="right">전화번호 : </td><td><input type="text" name="phone" size="15"></td>
	</tr>
	<tr>
		<td align="right">주소 : </td><td><input type="text" name="address" size="50"></td>
	</tr>
	<tr>
		<td></td>
		<td><input type="button" value="확인" onclick="checkInsert()"></td>
	</table>
	</form>
</body>
</html>