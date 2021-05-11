<%@page import="java.sql.*"%><!-- 이거로 다 해결할수 있어 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("utf-8");


	String userid = request.getParameter("userid");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String result = "";
	
	//Session에 입력하기
	session.setAttribute("USERID", userid); 
	session.setAttribute("NAME", name); 
	session.setAttribute("PHONE", phone); 
	session.setAttribute("ADDRESS", address); 
	
	// ---
	String url_mysql = "jdbc:mysql://127.0.0.1/customer?serverTimezone=Asia/Seoul&chacacterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	
	PreparedStatement ps = null; //java.sql 이어야해
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql); //java.sql 이어야해
		Statement stmt_mysql = conn_mysql.createStatement();
		
		String A = "insert into purchaserinfo (userid, name, tel, address, insertdate";
		String B = ") values (?,?,?,?,now())";
		
		ps = conn_mysql.prepareStatement(A+B);
		ps.setString(1, userid);
		ps.setString(2, name);
		ps.setString(3, phone);
		ps.setString(4, address);
		ps.executeUpdate();
		conn_mysql.close();
		
		result= "success";
		
	}catch(Exception e){
		e.printStackTrace();
		result = "fail";
	}
	response.sendRedirect("purchaserInsert_03.jsp?result=" + result);
	
	// ---
	
%>