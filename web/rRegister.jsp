<%--
  Created by IntelliJ IDEA.
  User: wang
  Date: 2017/3/25
  Time: 21:35
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
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    String sqlurl="jdbc:sqlserver://localhost:1433; DatabaseName=Demo";
    String sqlname="sa";
    String sqlpasswd="wl1996";
    Connection conn;
    conn = DriverManager.getConnection(sqlurl,sqlname,sqlpasswd);
    Statement stmt = conn.createStatement();

    String username=request.getParameter("username");
    String password1 = request.getParameter("password1");
    String password2 = request.getParameter("password2");
    String sex = request.getParameter("sex");
    String edu = request.getParameter("edu");
    String idnum = request.getParameter("idnum");
    String tel = request.getParameter("tel");
    String address = request.getParameter("address");
    String sqlinsert = "insert into suser (name,pwd,idnumber,sex,telnumber,education,address) values ('"+username+"','"+password1+"','"+idnum+"','"+sex+"','"+tel+"','"+edu+"','"+address+"')";

    String sql_select_user="select * from suser where name='"+username+"'";
    ResultSet rs1=stmt.executeQuery(sql_select_user);
    if (rs1.next()){
        out.println("<h3>已存在相同用户名，请重新<a href=Register.jsp>注册</a>!</h3>");
    }else if(password1.equals("")){
        out.println("<h3>密码为空，请重新<a href=Register.jsp>注册</a>!!</h3>");
    }
    else if(!password1.equals(password2)){
        out.println("<h3>密码不一致!</h3>");
    }
    else {
        stmt.execute(sqlinsert);
        out.println("<h3>注册成功，请前往<a href=\"index.jsp\">登录</a>页面");
    }

%>
</body>
</html>
