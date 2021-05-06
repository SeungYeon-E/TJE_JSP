<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2의 거듭제곱</title>
</head>
<body>

<%
	out.print((int)Math.pow(2, 2) + "<br>");
	out.print("--------------------<br>");
	for(int i = 1; i<=5;i++){
		out.print("2 ^ " + i + " = " + power(2,i) + "<br>");
	}

%>
	---------------------------------------<br>
	2 ^ 1 = <%=power(2,1) %> <br>
	2 ^ 2 = <%=power(2,2) %> <br>
	2 ^ 3 = <%=power(2,3) %> <br>
	2 ^ 4 = <%=power(2,4) %> <br>
	2 ^ 5 = <%=power(2,5) %> <br>
	
<%
	// 지시자
	int[] iArr = {10,20,30};
	out.print(Arrays.toString(iArr));
	
%>

</body>
</html>

<%!
	private int power(int a, int b){
		int result = 1;
		
		for(int i = 1;i<=b;i++){
			result *= a;
		}
		return result;
	}

%>