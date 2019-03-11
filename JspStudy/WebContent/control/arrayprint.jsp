<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청을 받아서 처리해주는 페이지 작성</title>
<%
     request.setCharacterEncoding("utf-8");
%>
<%

    String name=request.getParameter("name"); //if(name!=null) {}
    String addr=request.getParameter("addr");
    System.out.println("name=>"+name);//확인용
    System.out.println("addr=>"+addr);
    //문자열 비교->equals()
  %>
  name:<%=request.getParameter("name") %>
  addr:<%=request.getParameter("addr") %>
  
 <%
    String[] values=request.getParameterValues("pet");//같은 태그는 배열
    if(values!=null){
    	for(int i=0;i<values.length;i++){ %>
        <%=values[i]%>
 <%	 	
    	}
    }
%>
</head>
<body>
</body>
</html>


