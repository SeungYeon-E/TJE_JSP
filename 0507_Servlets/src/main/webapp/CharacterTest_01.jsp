<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성격테스트</title>
</head>
<body>
	<h1>성격테스트</h1>
	<p>당신의 성격 테스트를 합니다. 데이터를 입력한 후 확인 버튼을 눌러주세요.</p><br>
	
	<form action="CharacterTest_01S" method = "get">
		이름은? <input type="text" name="name" size="10"><br><br>
		
		좋아하는 색은? 
			노랑<input type="radio" name="color" value="노랑" checked="checked">
			빨강<input type="radio" name="color" value="빨강">
			파랑<input type="radio" name="color" value="파랑">
			<br><br>
			
		좋아하는 동물은?
			<select name = "animal">
				<option value="거북이" selected="selected">거북이</option>
				<option value="고양이">고양이</option>
				<option value="강아지">강아지</option>
				<option value="토끼">토끼</option>
			</select><br><br>	
			
		좋아하는 음식은? (모두 고르세요)
			<input type="checkbox" name="food" value="짜장면">짜장면
			<input type="checkbox" name="food" value="짬뽕" checked="checked">짬뽕
			<input type="checkbox" name="food" value="탕수육">탕수육
			<br><br>
			
		
		<input type="submit" value="확인">
		<input type="reset" value="취소">
	
	</form>

</body>
</html>