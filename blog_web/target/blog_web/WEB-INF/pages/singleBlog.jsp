<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="../../css/animate.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/main.css">
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.0.2/css/swiper.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.0.2/js/swiper.min.js"></script>

</head>
<body>
<jsp:include page="nav.jsp"/>
<div class="container container-black">
    <h2 class="news-title">${myBlog.blog_title}</h2>
    <div class="news-status">${myBlog.blog_like}点赞
        <div class="label label-default">${myBlog.blog_class}</div>

        <div class="news-content">
            <blockquote>
                <p>摘要： ${myBlog.blog_min}
                </p>
            </blockquote>
            <div>
                ${myBlog.blog_content}
            </div>
        </div>
    </div>
<div class="like">
    <div class="heart">
        <i class="fa fa-heart" aria-hidden="true"></i>
    </div>
    <div class="clickHeart">点个赞呗</div>
</div>
    <form action="/comment/${myBlog.blog_id}">
        <div class="comment">
            <p class="comment-p">
                <i class="fa fa-commenting-o" aria-hidden="true"></i>&nbsp;&nbsp;评论</p>
            <div class="text">
                <textarea class=".textarea" name="p_content" placeholder="来说两句吧.."></textarea>
            </div>
            <input type="submit" class="btn" value="发布">
        </div>
    </form>
    <c:forEach items="${comments}" var="comment">
        <div class="onecomment animated fadeInDown delay-1s">
            <div class="col-md-1 col-xs-2">
                <img src="/image/${comment.user_image}" style="width: 60px;">
            </div>
            <div class="col-md-11 col-xs-10">
                <p class="p0">${comment.user_name}</p>
                <p class="p1">${comment.p_content}</p>
            </div>
        </div>
    </c:forEach>
</div>
<canvas id="canvas"></canvas>
<script src="../../js/Underscore.js"></script>
<script src="../../js/colorfunBall.js"></script>
<script src="../../js/index.js"></script>

</body>
</html>
