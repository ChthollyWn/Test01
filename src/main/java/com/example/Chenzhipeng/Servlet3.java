package com.example.Chenzhipeng;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet(name = "Servlet3", urlPatterns = "/Servlet3")
public class Servlet3 extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String passwordagain = request.getParameter("passwordagain");
        String url = "jdbc:mysql://localhost:3306/chenzhipeng_DB";
        String urn = "root";
        String psw = "123456";
        Connection con;
        if(!password.equals(passwordagain)){
            response.getWriter().println("<script type=\"text/javascript\" language=\"JavaScript\">alert(\"两次输入的密码不一致！！\") </script>");
            response.setHeader("Refresh", "0;url=registtest.jsp");
        }else {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection(url,urn,psw);
                Statement statement = con.createStatement();
                ResultSet resultSet1 = statement.executeQuery("select * from  userdata where username = '"+username+"'");
                if (resultSet1.next()){
                    response.getWriter().println("<script type=\"text/javascript\" language=\"JavaScript\">alert(\"用户名已存在！\") </script>");
                    response.setHeader("Refresh", "0;url=registtest.jsp");
                }else {
                    statement.executeUpdate("insert into userdata values ('"+username+"','"+password+"','00000x')");
                    //statement.executeUpdate("insert into userdata values ('1','1','00000x')");
                    ResultSet resultSet2 = statement.executeQuery("select * from  userdata where username = '"+username+"'");
                    if(resultSet2.next()){
                        response.getWriter().println("<script type=\"text/javascript\" language=\"JavaScript\">alert(\"注册成功！\") </script>");
                        response.setHeader("Refresh", "0;url=index.jsp");
                    }else {
                        response.getWriter().println("<script type=\"text/javascript\" language=\"JavaScript\">alert(\"注册失败！\") </script>");
                        response.setHeader("Refresh", "0;url=registtest.jsp");
                    }
                }
            }catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
