<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/animate.css">
    <link rel="stylesheet" href="../../css/main.css">
</head>
<body>
<jsp:include page="nav.jsp"/>
<div class="container hotBlog-container">
    <div class="hot-top">博客数量${number}</div>
    <c:forEach items="${hotBeans}" var="hotBean">
        <div class="news-list hot_new-list ">
            <div class="news-list-item clearfix ani4">
                <div class="col-xs-4">
                    <img src="/image/${hotBean.blog_image}" class="">
                </div>
                <div class="col-xs-8">
                    <a href="/blog/content/${hotBean.blog_id}">
                        <p class="title">${hotBean.blog_title}</p>
                    </a>
                    <article class="article">${hotBean.blog_min}
                    </article>
                    <div class="info">
                        <span><i class="fa fa-heart"></i>&nbsp;${hotBean.blog_like}赞</span>
                        <span><i class="fa fa-comment"></i>&nbsp;${hotBean.blog_comm}评论</span>
                        <span>${hotBean.blog_time}发布</span>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
</div>
<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.0.2/js/swiper.min.js"></script>
<script src="../../js/index.js"></script>
</body>
</html>
