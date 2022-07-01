<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<style>
    #logins {
        width:400px;
        height:300px;
        border: 1px solid;
        border-radius: 30px;
        background-color:white;
        text-align:center;
        margin:200px auto;
    }
    #title{
        margin-top: 15px;
        color: #1ABC9C;
    }
    #input1{
        width: 250px;
        height: 35px;
    }
    #input2{
        width: 250px;
        height: 35px;
        margin-top: 15px;
    }
    #input3{
        width: 250px;
        height: 35px;
        color: white;
        margin-top: 10px;
        border-radius: 10px;
        background-color: #1ABC9C;
    }
    body{
        background-color:#1ABC9C;
    }
</style>
<body>
<%
    session.setAttribute("usernamedb","请先登录");
    session.setAttribute("Islogin","未登录");
%>
<%@include file="sessiontest.jsp" %>
<div id="logins">
    <h1 id="title"> 账号登录 </h1><br/>
    <form action="Servlet1" method="post" name="form">
        <table  width=150px  align="center">
            <td>
                <div align="center">
                    <input id="input1" type="text" name="username" placeholder="请输入用户名" ><br>
                    <input id="input2" type="password" name="password" placeholder="请输入密码"><br>
                    <input id="input3" type="submit" value="登录" name="submit" >
                    <a href="registtest.jsp">没有账户？点击注册</a>
                </div>
            </td>
        </table>
    </form>
</div>

</body>
</html>