<%--
  Created by IntelliJ IDEA.
  User: wang
  Date: 2017/3/25
  Time: 13:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
  <title>王磊的J2EE首页</title>
  <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"13961",secure:"13970"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-53" data-genuitec-path="/Project1/WebRoot/index.jsp">
<table width="673" height="301" border="1" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-53" data-genuitec-path="/Project1/WebRoot/index.jsp">
  <tr>
    <td height="87" colspan="2" valign="bottom">
      <%@ include file="Menu.jsp" %>
    </td>
  </tr>
  <tr>
    <td width="800" valign="top">
      <%@include file="Login.jsp" %>
    </td>
    <td width="200">
      <%@ include file="Main.jsp" %>
    </td>
  </tr>
</table>
</body>
</html>
