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

    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String Rpassword = request.getParameter("Rpassword");
    String name = request.getParameter("name");
    String sex = request.getParameter("sex");
    String hobby = request.getParameter("hobby");
    String age = request.getParameter("age");
    String remakes = request.getParameter("remakes");
    if (Path.contains("Register/register.jsp")) {
        if (password.equals(Rpassword)) {
            session.setAttribute("username", username);
            session.setAttribute("password", password);
            session.setAttribute("name", name);
            session.setAttribute("sex", sex);
            session.setAttribute("hobby", hobby);
            session.setAttribute("age", age);
            session.setAttribute("remakes", remakes);
            response.sendRedirect("display.jsp");
        } else {
            response.sendRedirect("register.jsp");
        }
    }else if (Path.contains("/Register/login.jsp") & username.equals(session.getAttribute("username")) & password.equals(session.getAttribute("password"))) {
        response.sendRedirect("display.jsp");
    } else {
        response.sendRedirect("login.jsp");
    }
%>