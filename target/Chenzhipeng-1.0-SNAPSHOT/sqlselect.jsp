<%@ page import="java.sql.*" %>
<%@ page import="java.io.Writer" %><%--
  Created by IntelliJ IDEA.
  User: 10794
  Date: 2022/5/14
  Time: 13:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SQLselect</title>
</head>
<style>
    #fff{
        margin-top: 150px;
        margin-left: 450px;
        font-size:50px;
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

<h3 align="center" style="color: white;font-size: 60px;margin-top: 50px">学生的基本信息为</h3>
<div id="fff" >
    <%
        String driverClass = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/chenzhipeng_DB";
        String urn = "root";
        String psw = "123456";
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(url,urn,psw);//得到连接
        Statement statement = con.createStatement();
        ResultSet resultSet = statement.executeQuery("SELECT *FROM stutest");
        while (resultSet.next()){
            out.print("姓名:"+resultSet.getString(1)+" 学号:"+resultSet.getString(2)+" 性别:"+resultSet.getString(3)+"<br>");
        }
    %>
</div>
</body>
</html>
