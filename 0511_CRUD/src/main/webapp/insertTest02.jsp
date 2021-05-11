<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%><!-- 이거로 다 해결할수 있어 -->
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userid = request.getParameter("userid");
	String result = "";
	
	// ---
	String url_mysql = "jdbc:mysql://127.0.0.1/eclipse?serverTimezone=Asia/Seoul&chacacterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	
	PreparedStatement ps = null; //java.sql 이어야해
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql); //java.sql 이어야해
		Statement stmt_mysql = conn_mysql.createStatement();
		
		String A = "insert into wtest (userid";
		String B = ") values (?)";
		
		ps = conn_mysql.prepareStatement(A+B);
		ps.setString(1, userid);
		ps.executeUpdate();
		
		conn_mysql.close();
		result="success";
		
	}catch(Exception e){
		e.printStackTrace();
		result = "fail";
	}
		response.sendRedirect("insertTest03.jsp?result=" + result);
	
	// ---
	
%>