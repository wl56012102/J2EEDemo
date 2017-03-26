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
    <meta charset="utf-8">
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <title>后台管理系统</title>
</head>

<%
    if(session.getAttribute("username")!=null){
%>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">后台管理界面</a>
        </div>
    </div>
</nav>

<br>
<br>
<br>
<div class="masthead">

    <nav>
        <ul class="nav nav-justified">
            <li class="active"><a href="../index.jsp">网站首页</a></li>
            <li><a href="#">管理用户</a></li>
            <li><a href="#">管理产品</a></li>
            <li><a href="#">管理订单</a></li>
        </ul>
    </nav>
</div>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li class="active"><a href="product/insert_product.jsp" target="iframe">录入产品 <span class="sr-only">(current)</span></a></li>
                <li><a href="product/alter_product.jsp" target="iframe">修改产品</a></li>
                <li><a href="product/delete_product.jsp" target="iframe">删除产品</a></li>
                <li><a href="product/show_product.jsp" target="iframe">显示产品</a></li>
            </ul>

        </div>
        <div class="col-sm-2 col-md-10">
            <iframe height="600" width="900" src="product/insert_product.jsp" frameborder="0" name="iframe">

            </iframe>
        </div>
    </div>

</div>
</body>
<%
    }
    else{
        out.println("<h3>没有权限访问该页，请<a href=../index.jsp>登录</a></h3>");
    }
%>
</html>
