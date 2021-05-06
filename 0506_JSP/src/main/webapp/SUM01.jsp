<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>덧셈</title>
</head>
<body>


		<%
			int sum1=0;
			int sum2=0;
			for(int i=0;i<=100;i++){
				sum1+=i;
			}
			
			for(int i=0;i<=200;i++){
				sum2+=i;
			}
		
		%>
		
		1부터 100까지의 합 = <%=sum1 %> <br>
		1부터 200까지의 합 = <%=sum2 %> <br>
		
		<%
		int i = 1;
		int sum = 0;
			while(i<=100){
				sum += i;
				i++;			
			}
				out.println("1부터 100까지의 합 = " + sum);
	 		while(i<=200){
				sum +=i;
				i++;
			}
			out.println("<br>1부터 200까지의 합 = " + sum); 
		%>

</body>
</html>