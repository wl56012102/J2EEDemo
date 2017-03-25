<%--
  Created by IntelliJ IDEA.
  User: wang
  Date: 2017/3/25
  Time: 13:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>rlogin</title>
</head>
<body>
<%
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    String sql="jdbc:sqlserver://localhost:1433;DatabaseName=Demo";
    String sqlname="sa";
    String sqlpasswd="wl1996";
    Connection conn;
    conn=DriverManager.getConnection(sql,sqlname,sqlpasswd);
    Statement stmt = conn.createStatement();
    String input_name = request.getParameter("username");
    String input_pwd = request.getParameter("password");

    String select_admin = "select * from admin where name='"+input_name+"' and pwd='"+input_pwd+"'";
    String select_user = "select * from suser where name ='"+input_name+"' and pwd ='"+input_pwd+"'";

    ResultSet rs1=stmt.executeQuery(select_admin);
    while (rs1.next()){
        response.sendRedirect("admin/admin.jsp");
    }

    ResultSet rs2 = stmt.executeQuery(select_user);
    while (rs2.next()){
        response.sendRedirect("user/user.jsp");
    }
    out.println("<h1>用户名或密码错误，请重新<a href=index.jsp>登录</a>或<a href=Register.jsp>注册</a></h1>");
%>

</body>
</html>
