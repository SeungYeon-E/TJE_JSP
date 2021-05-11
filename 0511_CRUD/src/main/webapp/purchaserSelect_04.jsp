<%@page import="java.sql.*"%><!-- 이거로 다 해결할수 있어 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String url_mysql = "jdbc:mysql://127.0.0.1/customer?serverTimezone=Asia/Seoul&chacacterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	
	PreparedStatement ps = null; //java.sql 이어야해
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql); //java.sql 이어야해
		Statement stmt_mysql = conn_mysql.createStatement();
		
		String A = "delete from purchaserinfo where userid = ?";
		
		ps = conn_mysql.prepareStatement(A);
		ps.setString(1, (String)session.getAttribute("ID"));
		ps.executeUpdate();
		
		conn_mysql.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	response.sendRedirect("purchaserSelect_01.jsp");
	
%>