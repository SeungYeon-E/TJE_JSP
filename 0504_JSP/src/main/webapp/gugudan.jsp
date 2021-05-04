<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<!--------------------------------------------->
		<%
			int a = 2;
		
			for(int i=1;i<=9;i++){
				out.print(a + " * " + i +" = "+ (a * i) + "<br>");
				out.print("==========<br>");
				out.print("==========" + "<br>");
			}
		
		%>
		
		<!--------------------------------------------->
		
		<%

			for(int i=1;i<=9;i++){
				out.print(2 + " * " + i +" = "+ (2 * i) + "<br> ======= <br>");
			}
		
		%>
		
		<!--------------------------------------------->
		
		<%

			for(int i=1;i<=9;i++){
				out.print(2 + " * " + i +" = "+ (2 * i));
		%>
			<br>
		<%
			}
		
		%>
		
		<!--------------------------------------------->
		
		<%	
			int i = 1;
			while(i<=9){
				out.print(2 + " * " + i +" = "+ (2 * i) + "<br> ======= <br>");
				i++;
			}
		
		%>
		
		<!--------------------------------------------->
		
		<%	
			int j = 1;
		
			while(true){
				if(j<=9){
					out.print(2 + " * " + j +" = "+ (2 * j) + "<br> ======= <br>");
					j++;
				}else{
					break;
				}
			}
		
		%>
		
</body>
</html>