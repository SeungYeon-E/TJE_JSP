<%@page import="java.sql.*"%><!-- 이거로 다 해결할수 있어 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 수정</title>
</head>
<body>
	<h4>수정후 확인버튼을 누르세요.</h4>
<%
	request.setCharacterEncoding("utf-8");

	String userid = request.getParameter("userid");
	String name = null;
	String tel = null;
	String address = null;
	
	// ---
	String url_mysql = "jdbc:mysql://127.0.0.1/customer?serverTimezone=Asia/Seoul&chacacterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	
	String whereStatement = "select name, tel, address from purchaserinfo where userid = '" + userid + "'";
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql); //java.sql 이어야해
		Statement stmt_mysql = conn_mysql.createStatement();
		
		ResultSet rs = stmt_mysql.executeQuery(whereStatement);
		while(rs.next()){
			name = rs.getString(1);
			tel = rs.getString(2);
			address = rs.getString(3);
		}
		
		conn_mysql.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	// ---

%>
	<form action="purchaserUpdate_03.jsp" method="post">
		사용자 ID : <input type ="text"  name="userid" size="10" value="<%=userid %>" readonly><br>
		성명 : <input type ="text"  name="name" size="10" value="<%=name %>"><br>
		전화번호 : <input type ="text"  name="tel" size="10" value="<%=tel %>"><br>
		주소 : <input type ="text"  name="address" size="10" value="<%=address %>"><br>
		<input type="submit" value="확인">
	</form>
	
</body>
</html>