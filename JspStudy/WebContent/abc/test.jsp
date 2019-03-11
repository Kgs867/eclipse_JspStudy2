<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.Date,java.sql.* "%>
<%@ page import="java.net.*" %>
<%@ page info="JSP 연습페이지 입니다." %>

<!--JSP 연습페이지 입니다  -->
<!DOCTYPE html>
<%!
     //선언문->jsp전체에서 불러다 사용할 변수,메서드가 필요한 경우에 선언
     String name="홍길동";//static String name;

     public String getName(){
    	 return name;
     }
%>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 3번째 예제(표현식의 활용)</title>
</head>
<body>
  <%
        float f=2.3f;
        int i=Math.round(f);//클래스명.정적메서드명(~)
       //표현식은 스크립트릿 문장 다음에 사용
       //java.util.Date d=new java.util.Date();
        Date d=new Date();
        out.println("d의 값은=>"+d);//d.toString()
  %>
  <hr><p>
  정수 f의 반올림값은 ? <%=i %><p>
  현재의 날짜와 시간은?<%=d.toString() %><br>
  name의 값은? <%=name%><p>
  getName()을 호출? <%=getName() %>
</body>
</html>