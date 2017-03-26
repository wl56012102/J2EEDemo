<%--
  Created by IntelliJ IDEA.
  User: wang
  Date: 2017/3/25
  Time: 23:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <meta charset="UTF-8">
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <title>Title</title>
</head>
<body>
<table class="table table-bordered table-striped">
    <caption>显示产品表</caption>
    <thead>
    <tr>
        <th>产品名称</th>
        <th>产品ID</th>
        <th>产品数量</th>
        <th>产品价格</th>
        <th>产品描述</th>
    </tr>
    </thead>
    <%
        request.setCharacterEncoding("utf-8");
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String sqlurl="jdbc:sqlserver://localhost:1433; DatabaseName=Demo";
        String sqlname="sa";
        String sqlpasswd="wl1996";
        Connection conn;
        conn = DriverManager.getConnection(sqlurl,sqlname,sqlpasswd);
        Statement stmt = conn.createStatement();

        String sql_show ="select * from product";

        ResultSet rs1=stmt.executeQuery(sql_show);
        while(rs1.next()){
            out.print("<tr><td>"+rs1.getString("name")+"</td><td>"+rs1.getString("id")+"</td><td>"+rs1.getString("number")+"</td><td>"+rs1.getString("price")+"</td><td>"+rs1.getString("des")+"</td></tr>");
        }
    %>
</table>
</body>
</html>
