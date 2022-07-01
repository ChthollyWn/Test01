<%--
  Created by IntelliJ IDEA.
  User: 10794
  Date: 2022/5/15
  Time: 13:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Session</title>
</head>
<style>
    #ff{
        height: 50px;
        width: 100%;
        background-color: aliceblue;
        border: 1px black;
    }
    body{
        background-color: #1ABC9C;
    }
</style>
<body>
<div id="ff">
    <%
        String username = (String) session.getAttribute("usernamedb");
        String Islogin = (String) session.getAttribute("Islogin");
    %>
    <h2 align="center" style="color: #1ABC9C" >状态：<%=Islogin%>  登录用户：<%=username%></h2>
</div>
</body>
</html>
