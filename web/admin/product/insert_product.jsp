<%--
  Created by IntelliJ IDEA.
  User: wang
  Date: 2017/3/25
  Time: 23:18
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
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.js"></script>
    <title>Title</title>
</head>
<form class="form-horizontal" method="post" action="insert_product.jsp?action=RegAction">

    <div class="form-group">
        <label for="product_name" class="col-sm-2 control-label">产品名</label>
        <div class="col-sm-5">
            <input type="text" class="form-control" id="product_name" name ="product_name" placeholder="请输入产品名" width="50%">
        </div>
    </div>

    <div class="form-group">
        <label for="product_id" class="col-sm-2 control-label">产品ID</label>
        <div class="col-sm-5">
            <input type="text" class="form-control" id="product_id" name="product_id" placeholder="请输入产品ID" width="500">
        </div>
    </div>

    <div class="form-group">
        <label for="product_num" class="col-sm-2 control-label">数量</label>
        <div class="col-sm-5">
            <input type="text" class="form-control" id="product_num" name="product_num" placeholder="请输入数量" width="50%">
        </div>
    </div>

    <div class="form-group">
        <label for="product_pic" class="col-sm-2 control-label">图片</label>
        <div class="col-sm-5">
            <input type="file" id="product_pic" name="product_pic" width="50%">
        </div>
    </div>

    <div class="form-group">
        <label for="product_price" class="col-sm-2 control-label">价格</label>
        <div class="col-sm-5">
            <input type="text" class="form-control" id="product_price" name="product_price" placeholder="请输入价格" width="50%">
        </div>
    </div>

    <div class="form-group">
        <label for="summernote" class="col-sm-2 control-label">产品描述</label>
        <div class="col-sm-8">
            <div id="summernote"><p>请输入产品描述</p></div>
            <script>
                $(document).ready(function() {
                    $('#summernote').summernote();
                });
            </script>
        </div>
    </div>



    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">提交</button>
            <button type="reset" class="btn btn-default">重置</button>
        </div>
    </div>
</form>
</html>
<%
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    String sql="jdbc:sqlserver://localhost:1433;DatabaseName=Demo";
    String sqlname="sa";
    String sqlpasswd="wl1996";
    Connection conn;
    conn=DriverManager.getConnection(sql,sqlname,sqlpasswd);
    Statement stmt = conn.createStatement();

    String pro_name=request.getParameter("product_name");
    String pro_id = request.getParameter("product_id");
    String pro_num=request.getParameter("product_num");
    String pro_price =request.getParameter("product_price");

    String sql_insert = "insert into product values('"+pro_name+"','"+pro_id+"','"+pro_num+"','"+pro_price+"','des')";

    if("RegAction".equals(request.getParameter("action"))){
        stmt.execute(sql_insert);
        out.print("success");
    }

%>
