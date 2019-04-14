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
</head>
<body>
<jsp:include page="nav.jsp"/>
<div class="container container-small">
    <h3>
        注册
        <c:if test="${errors!=null||error!=null}">
            <p style="font-size: 20px;color: #dd356e">错误提示:</p>
        </c:if>
        <c:if test="${error!=null}">
            <p style="font-size: 20px;color: #dd356e">${error}</p>
        </c:if>
        <c:forEach var="error" items="${errors}">
            <p style="font-size: 17px;color: #dd356e">${error.defaultMessage}</p>
        </c:forEach>
    </h3>
    <form action="/user/req" id="regForm" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label>用户名</label>
            <input type="text" value="${users.username}" class="form-control" name="username" placeholder="请输入用户名">
        </div>
        <div class="form-group">
            <label>密码</label>
            <input type="password" class="form-control" placeholder="由数字或英文字符组成(6位-20位)" name="password">
        </div>
        <div class="form-group">
            <label>确认密码</label>
            <input type="password" class="form-control" name="passwordAgain" placeholder="由数字或英文字符组成(6位-20位)">
        </div>
        <div class="form-group">
            <label>邮箱</label>

            <input type="text" class="form-control" value="${users.email}" name="email" placeholder="请输入注册邮箱">
        </div>
        <div class="form-group">
            <p>请上传头像照片</p>
            <input type="file" name="file">
        </div>
        <div class="form-group">
            <button class="btn btn-primary btn-block" type="submit">注册</button>
        </div>
    </form>
</div>
</body>
</html>
