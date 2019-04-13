<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <li class="active"><a href="/user/index">首页</a></li>
                <li><a href="#">热门博客</a></li>
                <div class="search-bar">
                    <input type="search" class="form-control" placeholder="搜博客">
                </div>
            </ul>

            <ul class="nav navbar-nav navbar-right" id="user">
                <c:if test="${sessionScope.userx==null}">
                    <li><a href="/user/loginPage">登录</a></li>
                </c:if>
                <c:if test="${sessionScope.userx!=null}">
                    <li id="person"><img src="/image/${sessionScope.userx.image}"
                                         style="width: 45px;border-radius: 50%;height:45px">
                        <ul class="mine">
                            <li><a href="/blog/myBlogs" style="color: #000 !important;font-size: 14px !important;">
                                我的博客</a></li>
                            <li><a href="#" style="color: #000 !important;font-size: 14px !important;">
                                个人资料</a></li>
                            <c:if test="${userx.type==1}">
                                <li><a href="#" style="color: #000 !important;font-size: 14px !important;">
                                    用户管理</a></li>
                            </c:if>
                            <li><a href="/user/loginOut" style="color: #000 !important;font-size: 14px !important;">
                                退出登录</a></li>
                        </ul>
                    </li>
                </c:if>
                <li><a href="/user/registerPage">注册</a></li>
                <li style="display: none" id="out1">
                    <a href="/user/loginOut">退出</a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/blog/myBlogs">我的博客</a></li>
                <li><a href="/blog/write">写博客</a></li>
            </ul>
        </div>
    </div>
</div>
<script>
    var user = document.getElementById("user");
    var user0 = user.children[0];
    var user1 = user.children[1];
    var out1 = document.getElementById("out1");
    console.log(user0.innerText);
    if (user0.innerText !== '登录') {
        user1.style.display = 'none';
        out1.style.display = 'block';
    } else {
        out1.style.display = 'none';
        user1.style.display = 'block';
    }

</script>
</body>
</html>
