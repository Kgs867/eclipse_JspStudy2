<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문자열,숫자를 입력받아 처리</title>
</head>
<body>
  <%
      request.setCharacterEncoding("utf-8");
      //내장객체 request ,response(응답)->재전송(html문서)
      String msg=request.getParameter("msg");//안녕하세요?
      /*
      String num=request.getParameter("number");//"5"
      int number=Integer.parseInt(num);//"5"->5
      */
      int number=Integer.parseInt(request.getParameter("number"));
      System.out.println("msg=>"+msg+",number=>"+number);
      
      int count=0;//반복할 횟수
      while(number > count){ %>
    	 <b><%=msg%></b><br>
  <%
    	  count++;
      }
  %>
</body>
</html>



