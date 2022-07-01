<%--
  Created by IntelliJ IDEA.
  User: 10794
  Date: 2022/5/14
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品信息</title>
</head>
<style>
    #fff{
        margin-top: 150px;
        margin-left: 700px;
        font-size:50px;
        color: white;
        text-align: left;
    }
    body{
        background-color:#1ABC9C;
    }
</style>
<body>

<div style=" height: 50px;
        width: 100%;
        background-color: aliceblue;
        border: 1px black;">
    <%
        String username = (String) session.getAttribute("usernamedb");
        String Islogin = (String) session.getAttribute("Islogin");
    %>
    <h2 align="center" style="color: #1ABC9C" >状态：<%=Islogin%>  登录用户：<%=username%></h2>
</div>

<h3 align="center" style="color: white;font-size: 60px;margin-top: 50px">商品的基本信息为</h3>
<div id="fff">
    <jsp:useBean id="trade" scope="page" class="com.example.Chenzhipeng.javaBean"></jsp:useBean>
    商品品牌：<jsp:getProperty name="trade" property="brand"/><br>
    商品名称：<jsp:getProperty name="trade" property="name"/><br>
    商品价格：<jsp:getProperty name="trade" property="price"/><br>
</div>
</body>
</html>
