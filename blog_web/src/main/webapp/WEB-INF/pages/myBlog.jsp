<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/main.css">
    <title>我的博客</title>
    <style>
        body {
            background-color: #f5f6f7;
        }
    </style>
</head>
<body>
<jsp:include page="nav.jsp"/>
<div class="container myBlog-container">
    <div class="row ">
        <div class="col-md-3">
            <div class="left-card">
                <div class="card-one">
                    <div class="col-md-5">
                        <img src="../../img/000.jpg" alt="">
                    </div>
                    <div class="col-md-7">
                        YN的博客
                    </div>
                </div>
                <div class="card-two">
                    <span>原创（1）</span>
                    <span>粉丝（2）</span>
                    <span>访问（20）</span>
                </div>
            </div>
        </div>
        <div class="col-md-9">
            <c:forEach items="${BlogList}" var="blog">
                <div class="right-card">

                    <div class="news-list">
                        <div class="news-list-item clearfix ani1">
                            <div class="col-xs-4">
                                <c:if test="${blog.image.indexOf('.')>=0}">
                                    <img src="/image/${blog.image}" img-fluid class="animate1">
                                </c:if>
                                <c:if test="${blog.image.indexOf('.')<0}">
                                    <img src="/img/1.jpg" img-fluid class="animate1">
                                </c:if>
                            </div>
                            <div class="col-xs-8">
                                <a href="/blog/content/${blog.blog_id}">
                                    <p class="title"> ${blog.blog_title}</p>
                                </a>
                                <article class="article">${blog.blog_min}
                                </article>
                                <div class="info">
                                    <span><i class="fa fa-heart"></i>&nbsp;&nbsp;赞</span>
                                    <span><i class="fa fa-comment"></i>&nbsp;&nbsp;25评论</span>
                                    <span>10分钟前</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
</body>
</html>
