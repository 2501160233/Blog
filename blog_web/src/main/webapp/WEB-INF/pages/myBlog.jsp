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
    <link rel="stylesheet" href="../../css/animate.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
            integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
            integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
            crossorigin="anonymous"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.0.2/js/swiper.min.js"></script>
    <script src="../../js/calendar.js"></script>
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
                <%-----------------------------------------------------------%>
                <div class="card-one">
                    <img src="../../img/000.jpg" class="img-fluid float-left" alt="">
                        YN的博客
                </div>
                <%-----------------------------------------------------------%>
                <div class="card-two">
                    <span>原创（10）</span>
                    <span>粉丝（15）</span>
                    <span>访问（120）</span>
                </div>
                <%--日历--%>
                <div class="card-three">
                    <div id="calendar" class="calendar"></div>
                </div>
                <!--<button name="jump" onclick="jump()">Go</button>-->

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
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>

<script src="../../js/index.js"></script>
</body>
</html>
