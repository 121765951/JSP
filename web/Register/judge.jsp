<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2018/4/9
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String Path = request.getHeader("referer");


    if (Path.contains("Register/register.jsp")) {
        String password = request.getParameter("password");
        String Rpassword = request.getParameter("Rpassword");

        String username = request.getParameter("username");
        String name = request.getParameter("name");
        String sex = request.getParameter("sex");
        String hobby = request.getParameter("hobby");
        String age = request.getParameter("age");
        String remakes = request.getParameter("remakes");
        if (password.equals(Rpassword)) {
            response.sendRedirect("display.jsp");
            session.setAttribute("username",username);
            session.setAttribute("password",password);
            session.setAttribute("name",name);
            session.setAttribute("sex",sex);
            session.setAttribute("hobby",hobby);
            session.setAttribute("age",age);
            session.setAttribute("remakes",remakes);
        } else {
            response.sendRedirect("register.jsp");
        }
    }else if (Path.contains("/Register/login.jsp")) {
        out.write("判断是否有这个账号跟密码");
    }
%>