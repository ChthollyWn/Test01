<%--
  Created by IntelliJ IDEA.
  User: 10794
  Date: 2022/5/13
  Time: 13:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Questionnaire</title>
</head>
<style>
    #input1{
        width: 100%;
        height: 50px;
    }
    #input2{
        width: 100%;
        height: 50px;
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

<form action="Servlet2" method="post">
    <table border="0" style="width: 100%;height: 100%">
        <tr><td>
            <table  align="center" border="1px" bgcolor="white" width="45%">
                <thead>
                <tr align="center">
                    <th>关于大学生考研情况调查问卷</th>
                </tr>
                </thead>
            </table>
            <table align="center" border="1px" bgcolor="white" width="45%">
                <tbody>
                <tr align="center">
                    <td>您的性别是：</td>
                    <td>
                        <input type="radio" name="sex" value="男" checked>男
                        <input type="radio" name="sex" value="女">女
                    </td>
                </tr>
                <tr align="center">
                    <td>您的年级是：</td>
                    <td>
                        <input type="radio" name="ch1" value="大一" checked>大一
                        <input type="radio" name="ch1" value="大二">大二
                        <input type="radio" name="ch1" value="大三">大三
                        <input type="radio" name="ch1" value="大四">大四
                    </td>
                </tr>
                <tr align="center">
                    <td>您是否考虑考研：</td>
                    <td><input type="radio" name="ch2" value="考研" checked>考研
                        <input type="radio" name="ch2" value="不考研">不考研
                        <input type="radio" name="ch2" value="未决定">未决定</td>
                </tr>
                <tr align="center">
                    <td>您为什么不想考研：</td>
                    <td><input type="checkbox" name="ch3" value="考研太累">考研太累
                        <input type="checkbox" name="ch3" value="想早点步入社会，锻炼自己">想早点步入社会，锻炼自己
                        <input type="checkbox" name="ch3" value="不了解考研情况">不了解考研情况
                        <input type="checkbox" name="ch3" value="目前研究生人数也多，找工作仍有压力">目前研究生人数也多，找工作仍有压力
                        <input type="checkbox" name="ch3" value="我考研或还未决定">我考研或还未决定</td>
                </tr>
                <tr align="center">
                    <td>您为什么想要考研：</td>
                    <td><input type="checkbox" name="ch4" value="想继续进行深造">想继续进行深造
                        <input type="checkbox" name="ch4" value="不满足目前的学历">不满足目前的学历
                        <input type="checkbox" name="ch4" value="研究生有更高的薪资">研究生有更高的薪资
                        <input type="checkbox" name="ch4" value="长辈的意愿">长辈的意愿
                        <input type="checkbox" name="ch4" value="我不考研或还未决定">我不考研或还未决定</td>
                </tr>
                <tr align="center">
                    <td>您认为在本专业研究生相比于本科生毕业后的优势体现在哪里</td>
                    <td width="500px"><input id="input1" type="text" name="ch5" placeholder="请在此处作答"></td>
                </tr>
                </tbody>
            </table>
            <table align="center" border="1px" bgcolor="white" width="45%">
                <thead>
                <tr >
                    <td><input type="submit" id="input2"></td>
                </tr>
                </thead>
            </table>
        </td></tr>
    </table>


</form>
</body>
</html>
