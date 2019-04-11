<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/main.css">
    <title>忘记密码</title>
</head>
<body>
<div class="container">
    <div class="card-demo">
        <h2>忘记密码</h2>
        <form action="/user/forget" method="post">
            <div class="form-group">
               <label for="email">请输入你注册的邮箱帐号</label>
                <input type="email" required="required" class="form-control" name="email" id="email"
                       placeholder="邮箱" autocomplete="off">
            </div>
            <div class="describe">我们将发送验证信息到你的邮箱，请注意查收</div>
          <%--<p id="text" style="color: #dd356e;font-size: 20px;text-align:center;margin-top:12px;">${error}</p>--%>
            <div class="form-group">
                <input type="submit" value="发送" class="btn btn-primary">
            </div>


        </form>
    </div>
</div>
</body>
</html>


