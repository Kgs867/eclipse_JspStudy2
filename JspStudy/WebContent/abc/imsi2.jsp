<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전역변수와 지역변수</title>
</head>
<body>
<%
	String var2="JSP";
%>
<%
	String var=var2+"Web Programing";
%>
출력할값 : <%=var %>
수식계산 : <%=(3+5) %>
<hr>
수식계산3 : <%=(3*5) %>
수식계산5 : <%=(6/2) %>
수식계산6 : <%=(5-1) %>

</body>
</html>
