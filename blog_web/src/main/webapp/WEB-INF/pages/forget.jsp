<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>忘记密码</title>
</head>
<body>
<form action="/user/forget" method="post">
    <h2>忘记密码</h2>
    <div>
        <div>我们将发送验证信息到你的邮箱，请注意查收</div>
    </div>
    <div>
        <label for="email" class="sr-only">电子邮箱</label>
        <input type="email" required="required" name="email" id="email"
               placeholder="请填写你的电子邮箱" autocomplete="off">
        <p id="text" style="color: #dd356e;font-size: 20px">${error}</p>
    </div>
    <div class="form-group">
        <input type="submit" value="发送" class="btn btn-primary">
    </div>
</form>
</body>
</html>


