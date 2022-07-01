package com.example.Chenzhipeng;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Servlet2", urlPatterns = "/Servlet2")
public class Servlet2 extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out =response.getWriter();
        out.println("<BODY BGCOLOR=\"#1ABC9C\">\n" +
                "<H1 ALIGN=CENTER>"+"调查问卷信息采集"+"</H1>\n"+"<div>"+
                "<ur>\n"+
                "<li><b>您的性别</b>："+request.getParameter("sex")+"\n"+
                "<li><b>您的年级</b>："+request.getParameter("ch1")+"\n"+
                "<li><b>您是否决定考研</b>："+request.getParameter("ch2"));
        String[] str1 = request.getParameterValues("ch3");
        String[] str2 = request.getParameterValues("ch4");
        String temp = new String("");
        for(int i=0;i<str1.length;i++){
            temp+=str1[i]+" ";
        }
        out.println("<li><b>您不考研的理由有：</b>"+temp+"。"+"\n");
        temp="";
        for(int i=0;i<str2.length;i++){
            temp+=str2[i]+" ";
        }
        out.println("<li><b>您考研的理由有：</b>"+temp+"。"+"\n");
        out.println("<li><b>您对于本专业考研重要性的看法是：</b>"+request.getParameter("ch5")+"。"+"</div>"+
                "</BODY></HTML>");
    }
}
