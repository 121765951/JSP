<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2018/4/7
  Time: 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>开始猜数字</title>
</head>
<body>
<form action="Game.jsp" method="post">
    <input type="text" name="numbers">
    <input type="submit" value="提交数字" id="test">
</form>
<%
    Integer Realnumber = (Integer) session.getAttribute("number");
    if (request.getParameterValues("numbers") != null) {
        try {
            Integer number = Integer.valueOf(request.getParameter("numbers"));
            int count = (int) session.getAttribute("count");
            count = count + 1;
            session.setAttribute("count", count);
            out.write("您猜了" + count + "次<br>");
            out.write("上次猜的数字是"+number+"<br>");


            int a = number.compareTo(Realnumber);
            if (a < 0) {
                out.write("猜的数字比正确的小");
            } else if (a > 0) {
                out.write("猜的数字比正确的大");
            } else {
                out.write("恭喜你猜对了");
                session.removeAttribute("count");
                session.removeAttribute("Realnumber");
%>
<form action="Start.jsp">
    <input  type="submit" value="重新开始游戏">
</form>

<%
            }
        }
        catch (NumberFormatException e){
            out.write("请输入整数数字<br>");
            int count = (int) session.getAttribute("count");
            out.write("您猜了" + count + "次<br>");
        }

    }


%>

</body>
</html>
