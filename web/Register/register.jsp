<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2018/4/8
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="judge.jsp" method="post">
    <fieldset style="width:300px;">
        <legend>用户注册</legend>
        <table border="1">
            <tr>
                <td>帐号</td>
                <td><input type="text" name="username"></td>
                <br></tr>
            <tr>
                <td>密码</td>
                <td><input type="password" name="password"><br>
            </tr>
            <tr>
                <td>确认密码</td>
                <td><input type="password" name="Rpassword"><br>
            </tr>
            <tr>
                <td> 姓名</td>
                <td><input type="text" name="name"><br>
            </tr>
            <tr>
                <td> 性别</td>
                <td><input type="radio" name="sex" value="male">男<input type="radio" name="sex" value="female">女<br>
            </tr>
            <tr>
                <td> 爱好</td>
                <td><input type="text" name="hobby"><br>
            </tr>
            <tr>
                <td> 年龄</td>
                <td><input type="text" name="age"><br>
            </tr>
            <tr>
                <td> 备注</td>
                <td><input type="text" name="remakes"><br>
            </tr>
        </table>
        <input type="submit" value="注册">
    </fieldset>

</form>
</body>
</html>
