<%--
  Created by IntelliJ IDEA.
  User: LH
  Date: 2019/4/7
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/login" id="form">
    username: <input type="text" name="username" placeholder="请输入用户名">
    <br>
    password: <input type="text" name="password" placeholder="请输入密码">
    <br>
    <input type="submit" value="提交" id="btn">
</form>
<script>
    var btn = document.getElementById("btn");
    btn.onclick = function () {
        var form = document.getElementById("form");
        form.submit();
    }
</script>
</body>
</html>
