<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2018/4/7
  Time: 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>存</title>
</head>
<body>
<%
    int a = (int)(Math.random()*100);
    session.setAttribute("number",a);
    int count = 0;
    session.setAttribute("count", count);
%>
<jsp:forward page="Game.jsp"></jsp:forward>
</body>
</html>
