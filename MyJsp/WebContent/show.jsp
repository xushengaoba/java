<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
     <%
      request.setCharacterEncoding("utf-8");
     String name=request.getParameter("uname");
    int age=Integer.parseInt( request.getParameter("uage"));
    String pwd= request.getParameter("upwd");
       String[] hobbies=  request.getParameterValues("uhobbies");
  %>
  注册成功，信息如下：<br/>
  姓名 <%=name %><br/>
   年龄 <%=age %><br/>
    密码  <%=pwd %><br/>
    爱好：<br/>
    <%
    for(String hobby :hobbies){
      out.print(hobby+"&nbsp;");
    }
    
    out.print(page.hashCode());
    
  
    %>
    <%
    request.setAttribute("2", 3);
    request.getRequestDispatcher("a.jsp").forward(request,response);
    
    %>
    
  
</body>
</html>