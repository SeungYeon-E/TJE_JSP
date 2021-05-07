<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	BufferedReader reader = null;//클래스임, 파일 찾아서 하나씩 쌓는거
	try{
		String filePath = application.getRealPath("file.txt");
		reader = new BufferedReader(new FileReader(filePath));
		while(true){
			String str = reader.readLine();//한줄씩 읽어들여와
			if(str==null) break;
			out.print(str + "<br>");
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{//무조건 오는곳
		try{
			reader.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
%>
	
</body>
</html>