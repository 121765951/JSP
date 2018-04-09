<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2018/4/9
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String Path = request.getHeader("referer");

    String[] aaa = request.getParameterValues();
    /*if (Path.contains("Register/register.jsp")) {
        String password = request.getParameter("password");
        String Rpassword = request.getParameter("Rpassword");
        if (password.equals(Rpassword)) {
            response.sendRedirect("display.jsp");
        } else {
            response.sendRedirect("register.jsp");
        }
    }else if (Path.contains("/Register/login.jsp")) {
        out.write("判断是否有这个账号跟密码");
    }*/
%>