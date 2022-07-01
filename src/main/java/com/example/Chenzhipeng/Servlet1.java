package com.example.Chenzhipeng;

import com.mysql.cj.xdevapi.Session;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;
import java.sql.*;

@WebServlet(name = "Servlet1", urlPatterns = "/Servlet1")
public class Servlet1 extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        HttpSession session = request.getSession();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String url = "jdbc:mysql://localhost:3306/chenzhipeng_DB";
        String urn = "root";
        String psw = "123456";
        Connection con;
        if (username == null || "".equals(username) || password == null || "".equals(password)) {
            response.getWriter().println("<script type=\"text/javascript\" language=\"JavaScript\">alert(\"用户名或密码不得为空！\") </script>");
            response.setHeader("Refresh", "0;url=index.jsp");
        }else{
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection(url,urn,psw);
                Statement statement = con.createStatement();
                ResultSet resultSet = statement.executeQuery("select * from userdata where username = '" + username + "' and password = '" + password + "'");
                if(resultSet.next()){
                    response.sendRedirect("loginsuccess.jsp");
                    session.setAttribute("usernamedb",username);
                    session.setAttribute("Islogin","已登录");
                    
                }else{
                    response.sendRedirect("loginfailed.jsp");
                    session.setAttribute("usernamedb","请先登录");
                    session.setAttribute("Islogin","未登录");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
