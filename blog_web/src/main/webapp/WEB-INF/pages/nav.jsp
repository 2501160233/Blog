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
                <li><a href="#">分类</a></li>
                <li><a href="#">留言本</a></li>
            </ul>

            <ul class="nav navbar-nav navbar-right" id="user">
                <c:if test="${sessionScope.userx==null}">
                    <li><a href="/user/loginPage">登录</a></li>
                </c:if>
                <c:if test="${sessionScope.userx!=null}">
                    <li><a href="#" style="font-size: 15px; color: gold">${sessionScope.userx.image}</a>
                            <%-- <ul class="dropdown">
                                 <c:if test="${userx.type==1}">
                                     <li><a style="font-size: 20px;" href="/user/main">用户管理</a></li>
                                 </c:if>
                             </ul>--%>
                    </li>
                </c:if>
                <li><a href="/user/registerPage">注册</a></li>
                <li style="display: none" id="out1">
                    <a href="/user/loginOut">退出</a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">我的博客</a></li>
                <li><a href="#">写博客</a></li>
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
