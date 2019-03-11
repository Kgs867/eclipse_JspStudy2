<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%

%>
<meta charset="UTF-8">
<title>JSP 2번째 예제</title>
</head>
<% 
    // int count=3; 
%>  
<body>
  <%
      //int count=3;
      for(int i=0;i<count;i++){
    	  out.println("<h1>JSP테스트"+i+"!<br>");//document.write("<h1>JSP테스트"+i+"!<br>");
      }
      out.println("count=>"+count);//자주 사용이 되는 출력구문=>짧게 사용->표현식
      //1.태그 사용 불가
      //2.표현식 사용 불가
  %>
  <p>
   출력할 변수 count:<%=count%>
  <%!
     //선언문태그=>현재 페이지의 위치에 상관없이 다 불러다 사용이 가능하다.
      int count=3;
 %>
</body>
</html>



