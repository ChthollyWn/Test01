package com.example.Chenzhipeng;

import com.mysql.cj.xdevapi.Session;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebFilter(urlPatterns = {"/questionnaire.jsp","/calculator.jsp","/sqlselect.jsp","/javabeantest.jsp"})
public class Filter1 implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        chain.doFilter(request, response);
        HttpServletRequest hreq = (HttpServletRequest) request;
        HttpServletResponse hres = (HttpServletResponse) response;
        //String isLog = request.getParameter("username");

        HttpSession session = ((HttpServletRequest) request).getSession();
        String isLog = (String) session.getAttribute("Islogin");
        if(isLog.equals("已登录") || isLog == "已登录"){
            chain.doFilter(request,response);
        }else {
            hres.getWriter().println("<script type=\"text/javascript\" language=\"JavaScript\">alert(\"请先登录！\") </script>");
            hres.setHeader("Refresh", "0;url=index.jsp");
        }
    }
}
