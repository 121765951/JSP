<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2018/4/9
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    out.write("欢迎登陆" + session.getAttribute("name"));
    if (session.getAttribute("sex").equals("male")) {
        out.write("先生<br>");
    } else if (session.getAttribute("sex").equals("female")) {
        out.write("女士<br>");
    }
    out.write("年龄:" + session.getAttribute("age") + "<br>");
    out.write("爱好:" + session.getAttribute("hobby") + "<br>");
    out.write("备注:" + session.getAttribute("remakes") + "<br>");
%>
</body>
</html>
