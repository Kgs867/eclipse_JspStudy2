<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청을 받아서 처리해주는 페이지 작성</title>
<%!
     String msg;//전달받은 색깔(영어)->한글로 바꿔서 출력(색깔)
%>
<%
    //외부에서 전달해주는 변수를 받아서 처리해주는 내장객체 사용->request
    //한글이 깨지지않도록 설정->request.setCharacterEncoding("utf-8");
    //형식) String 반환값=request.getParameter("전달받은 매개변수명");
    request.setCharacterEncoding("utf-8");
    
    String name=request.getParameter("name");
    String color=request.getParameter("color");
    System.out.println("name=>"+name);//확인용
    System.out.println("color=>"+color);
    //문자열 비교->equals()
    if (color.equals("blue")){
    	msg="파란색";
    }else if(color.equals("red")){
    	msg="붉은색";
    }else if(color.equals("orange")){
    	msg="오렌지색";
    }else {
    	color="white";//디폴트
    	msg="기타색(흰색)";
    }    
%>
</head>
<body bgcolor="<%=color%>">
  <%=name%>님이 좋아하는 색깔은? <%=msg %> 입니다.
</body>
</html>


