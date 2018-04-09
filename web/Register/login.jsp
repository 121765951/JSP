<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2018/4/9
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎登陆</title>
</head>
<body>
<form method="post" action="judge.jsp">
    <fieldset>
        <legend>欢迎登陆</legend>
        <table>
            <tr>
                <td>
                    用户名
                </td>
                <td>
                    <input type="text" name="username">
                </td>
            </tr>
            <tr>
                <td>
                    密码
                </td>
                <td>
                    <input type="password" name="password">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="登陆">
                </td>
                <td>
                    <form action="register.jsp">
                        <input type="submit" value="注册">
                    </form>
                </td>
            </tr>
        </table>
    </fieldset>

</form>
</body>
</html>
