<%--
  Created by IntelliJ IDEA.
  User: wang
  Date: 2017/3/25
  Time: 13:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    if(session.getAttribute("username")!=null){
%>
用户页面
<%
    }
    else{
        out.println("<h3>没有权限访问该页，请<a href=../index.jsp>登录</a></h3>");
    }
%>
</body>
</html>
