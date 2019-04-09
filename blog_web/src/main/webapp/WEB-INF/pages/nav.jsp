<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/main.css">
</head>
<body>
<div class="navbar navbar-default">
    <div class="container">
        <label id="toggle-label" class="visible-xs-inline-block" for="toggle-checkbox">MENU</label>
        <input class="hidden" id="toggle-checkbox" type="checkbox">
        <div class="hidden-xs">
            <ul class="nav navbar-nav">
                <li class="active"><a href="index.jsp">首页</a></li>
                <li><a href="#">热门博客</a></li>
                <li><a href="#">分类</a></li>
                <li><a href="#">留言本</a></li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li><a href="/user/loginPage">登录</a></li>
                <li><a href="/user/registerPage">注册</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">我的博客</a></li>
                <li><a href="#">写博客</a></li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>
