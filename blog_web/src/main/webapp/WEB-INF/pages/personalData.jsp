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
<div class="container personalContent1" style="display: none;max-width: 650px;" >
    <h2>个人资料</h2>
    <form>
        <div class="form-group">
            <label> 昵 称：</label>
            <input class="form-control">
        </div>
        <div class="form-group">
            <label for="introduce"> 个人描述：</label>
            <textarea name="commet" rows=5 cols=60 id="introduce">
		  </textarea>
        </div>

        <div class="personal">性 别： 
            <input type="radio" name="性别">男
              <input type="radio" name="性别">女
        </div>
        <div class="personal">爱 好：
            <input type="checkbox" name="sport">运动
            <input type="checkbox" name="music">音乐
            <input type="checkbox" name="movie">电影
            <input type="checkbox" name="read">阅读
        </div>
        <div class="personal">
            <input type="submit" value="提交" class="btn btn-success">
              <input type="reset" value="清空" class="btn btn-primary">
        </div>
    </form>
</div>
<div class="container personalContent">
    <h2>个人资料</h2>
    <hr>
    <div class="row">
        <div class="col-md-3 col-xs-3">
            <img src="https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=105401705,3073581821&fm=26&gp=0.jpg"
                 alt="" class="personalImg">
        </div>
        <div class="col-md-9 col-xs-9">
            <div  class="personalA">修改资料</div>
            <div style="margin-top: 70px; margin-left: 25px;">
                <p>昵 称: <span>尤诺</span></p>
                <p>个人描述: <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                    Commodi consequuntur, delectus deserunt non temporibus voluptatem? A animi asperiores beatae c
                    onsectetur doloremque libero neque placeat porro
                    quibusdam recusandae sed vero, voluptate?</span>
                </p>
                <p>性 别: <span>女</span></p>
                <p>爱 好: <span>学习</span></p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
