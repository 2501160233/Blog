<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/main.css">
</head>
<body>
<jsp:include page="nav.jsp"/>
<div class="container container-small">
    <h3>登录</h3>
    <div>
        <span style="color: red;font-size:20px">${error}</span>
    </div>
    <form action="/user/login" id="loginForm" method="post">
        <div class="form-group">
            <label>用户名</label>
            <input type="text" class="form-control" name="username">
        </div>
        <div class="form-group">
            <label>密码</label>
            <input type="password" class="form-control" name="password">
        </div>
        <div class="form-group">
            <label for="remember">
                <input type="checkbox" checked name="remember" id="remember">记住我
            </label>
        </div>
        <div class="form-group">
            <button class="btn btn-primary btn-block" type="submit">登录</button>
        </div>
        <div class="form-group">
            <a href="/user/forgetPage">忘记密码？</a>
        </div>
    </form>
</div>
</body>
</html>
