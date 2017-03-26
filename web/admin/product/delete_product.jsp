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
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <title>Title</title>
</head>
<body>
<form class="form-horizontal" method="post" action="delete_product.jsp?action=RegAction">

    <div class="form-group">
        <label for="product_id" class="col-sm-2 control-label">产品ID</label>
        <div class="col-sm-5">
            <input type="text" class="form-control" id="product_id" name ="product_id" placeholder="请输入要删除的产品id" width="50%">
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">删除</button>
        </div>
    </div>

</form>
</body>
</html>
<%
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    String sql="jdbc:sqlserver://localhost:1433;DatabaseName=Demo";
    String sqlname="sa";
    String sqlpasswd="wl1996";
    Connection conn;
    conn=DriverManager.getConnection(sql,sqlname,sqlpasswd);
    Statement stmt = conn.createStatement();

    String pro_id = request.getParameter("product_id");


    String sql_insert = "delete from product where id='"+pro_id+"'";

    if("RegAction".equals(request.getParameter("action"))){
        stmt.execute(sql_insert);
        out.print("success");
    }

%>