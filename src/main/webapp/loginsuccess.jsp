<%--
  Created by IntelliJ IDEA.
  User: 10794
  Date: 2022/5/11
  Time: 23:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Success!</title>
</head>
<style>
    #title{
        color: white;
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

<h2 id="title" align="center">恭喜你，登录成功！</h2>
<a href="questionnaire.jsp" >点击此处进行问卷调查</a>
<br>
<a href="calculator.jsp">点击此处弹出计算器</a>
<br>
<a href="sqlselect.jsp">点击此处查看学生的基本信息</a>
<br>
<a href="javabeantest.jsp">点击此处查看商品的基本信息</a>
</body>
</html>
