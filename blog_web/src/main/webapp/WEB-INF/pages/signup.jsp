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
        注册
       <%-- <c:if test="${errors!=null||error!=null}">
            <p style="font-size: 20px;color: #dd356e">错误提示:</p>
        </c:if>
        <c:if test="${error!=null}">
            <p style="font-size: 20px;color: #dd356e">${error}</p>
        </c:if>
        <c:forEach var="error" items="${errors}">
            <p style="font-size: 17px;color: #dd356e">${error.defaultMessage}</p>
        </c:forEach>--%>
    </h3>
    <form action="/user/req" id="regForm" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label>用户名</label>
            <input type="text" value="${users.username}" class="form-control" name="username" id="username"
                   placeholder="请输入用户名">
        </div>
        <div class="form-group">
            <label>密码</label>
            <input type="password" class="form-control" placeholder="由数字或英文字符组成(6位-20位)" name="password">
        </div>
        <div class="form-group">
            <label>确认密码</label>
            <input type="password" class="form-control" name="passwordAgain" placeholder="由数字或英文字符组成(6位-20位)">
            <c:if test="${error!=null}">
                <p style="font-size: 13px;color: red;margin-top: 5px;">*${error}</p>
            </c:if>
        </div>
        <div class="form-group">
            <label>邮箱</label>
            <input type="text" class="form-control" value="${users.email}" name="email" placeholder="请输入注册邮箱">
            <c:forEach var="error" items="${errors}">
                <p style="font-size: 13px;color: red">*${error.defaultMessage}</p>
            </c:forEach>
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
<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
</body>
</html>
