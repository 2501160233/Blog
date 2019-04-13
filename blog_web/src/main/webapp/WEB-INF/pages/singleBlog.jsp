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

<div class="container container-black">
    <h2 class="news-title">${myBlog.blog_title}</h2>
    <div class="news-status">25k阅读 • 35分之前发布
        <div class="label label-default">教育</div>
        <div class="label label-default">情感</div>
        <div class="news-content">
            <blockquote>
                <p>
                    ${myBlog.blog_min}
                </p>
            </blockquote>
            <div>
                ${myBlog.blog_content}
            </div>
        </div>
    </div>
</div>

<canvas id="canvas"></canvas>
<script src="../../js/Underscore.js"></script>
<script src="../../js/colorfunBall.js"></script>
</body>
</html>