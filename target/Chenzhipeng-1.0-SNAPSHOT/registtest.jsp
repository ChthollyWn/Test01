<%--
  Created by IntelliJ IDEA.
  User: 10794
  Date: 2022/5/16
  Time: 23:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    #regist {
        width:400px;
        height:350px;
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
        margin-top: 0px;
    }
    #input2{
        width: 250px;
        height: 35px;
        margin-top: 20px;
    }
    #input3{
        width: 250px;
        height: 35px;
        color: white;
        margin-top: 20px;
        border-radius: 10px;
        background-color: #1ABC9C;
    }
    #input4{
        width: 250px;
        height: 35px;
        margin-top: 20px;
    }
    body{
        background-color:#1ABC9C;
    }
</style>
<body>
<div id="regist">
    <h1 id="title"> 账号注册 </h1><br/>
    <form action="Servlet3" method="post" name="form">
        <table  width=150px  align="center">
            <td>
                <div align="center">
                    <input id="input1" type="text" name="username" placeholder="请输入用户名" ><br>
                    <input id="input2" type="password" name="password" placeholder="请输入密码"><br>
                    <input id="input4" type="password" name="passwordagain" placeholder="请再次输入密码"><br>
                    <input id="input3" type="submit" value="注册" name="submit" >
                </div>
            </td>
        </table>
    </form>
</div>
</body>
</html>
