<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>用户注册</title>
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/main.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.0.2/js/swiper.min.js"></script>
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
</head>
<body>
<jsp:include page="nav.jsp"/>
<div class="container container-small">
    <h3>
        编辑信息
    </h3>
    <form action="/admin/editMes/${editUser.id}" id="regForm" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label>用户名</label>
            <input type="text" value="${editUser.username}" class="form-control" name="username" id="username"
                   placeholder="请输入用户名">
        </div>
        <br>
        <div class="form-group">
            <label>密码</label>
            <input type="text" class="form-control" name="password" value="${editUser.password}">
        </div>
        <br>
        <div class="form-group">
            <label>邮箱</label>
            <input type="text" class="form-control" value="${editUser.email}" name="email">
        </div>
        <br>
        <div class="form-group">
            <select name="type">
                <option value="0">非管理员</option>
                <option value="1">管理员</option>

            </select>
        </div>
        <br>
        <br>
        <div class="form-group">
            <button class="btn btn-primary btn-block" type="submit">修改</button>
        </div>
    </form>
</div>
<script>
</script>
</body>
</html>
