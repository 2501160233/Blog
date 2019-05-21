<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../../css/font-awesome.min.css">
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/main.css">
    <link rel="stylesheet" href="../../css/animate.css">
    <!-- Link Swiper's CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.0.2/css/swiper.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.0.2/js/swiper.min.js"></script>
    <title>极简博客</title>
</head>
<body>
<jsp:include page="nav.jsp"/>
<div class="container">
    <div class="row">
        <div class="left">
            <div class="col-sm-8">
                <!--swiper插件写的轮播图-->
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide"><img src="../../img/aa.jpg" alt=""></div>
                        <div class="swiper-slide"><img src="../../img/jj.jpg" alt=""></div>
                        <div class="swiper-slide"><img src="../../img/bb.jpg" alt=""></div>
                    </div>
                    <div class="swiper-pagination"></div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
                <c:forEach items="${hotBeans}" var="hotBean">
                    <div class="news-list">
                        <div class="news-list-item clearfix ani1">
                            <div class="col-xs-4">
                                <c:if test="${hotBean.blog_image.indexOf('.')>=0}">
                                    <img src="/image/${hotBean.blog_image}" img-fluid class="animate1">
                                </c:if>
                                <c:if test="${blog.image.indexOf('.')<0}">
                                    <img src="/img/1.jpg" img-fluid class="animate1">
                                </c:if>
                            </div>
                            <div class="col-xs-8" id="news">
                                <a href="/blog/content/${hotBean.blog_id}">
                                    <p class="title"> ${hotBean.blog_title}</p>
                                </a>
                                <article class="article">${hotBean.blog_min}
                                </article>
                                <div class="info">
                                    <span><i class="fa fa-heart"></i>&nbsp;&nbsp;${hotBean.blog_like}赞</span>
                                    <span><i class="fa fa-comment"></i>&nbsp;&nbsp;${hotBean.blog_comm}评论</span>
                                    <span>${hotBean.blog_time}发布</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <a href="/blog/select" style="font-size: 16px; color: red">换一批</a>
            </div>
        </div>
        <div class="col-sm-4">
            <p class="connect">关于本站</p>
            <div class="connect-f clearfix">
                <div class="col-sm-7 col-md-5">
                    <img src="../../img/000.jpg" class="../../img-fluid">
                </div>
                <div class="col-sm-5 col-md-7">
                    <span>极简博客</span>
                    <p>个人程序的点滴记录和时光储备。
                        淡泊明志，宁静致远。珍惜原创，矢志不渝。</p>
                </div>
            </div>
            <div class="hotBlog">
                <p>热门推荐</p>
                <%-----------------------------------%>
                    <ul id="hotBlog_ul">
                <c:forEach items="${blogs}" var="blog" varStatus="idxStatus" begin="1">
                        <li>
                            <span style="background-color: #999999">${idxStatus.index}</span>
                            <a href="/blog/content/${blog.blog_id}">${blog.blog_title}</a>
                        </li>
                </c:forEach>
                </ul>
                <%-------------------------------------------%>
            </div>
        </div>
    </div>
</div>
<div class="footer">
    <div class="container-fluid">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-xs-4">
                    <h4>勤有功，戏无益</h4>
                    <span><i class="fa fa-comments-o" aria-hidden="true"></i>&nbsp;&nbsp;留言板</span>
                    <span><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;最新评论</span>
                    <span><i class="fa fa-flag" aria-hidden="true"></i> &nbsp;&nbsp;标签库</span>
                    <br>
                    <span><i class="fa fa-tags" aria-hidden="true"></i>&nbsp;&nbsp;代码高亮</span>
                    <span><i class="fa fa-book" aria-hidden="true"></i>&nbsp;&nbsp;文章归档</span>
                    <span><i class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;&nbsp;站点地图</span>
                </div>
                <div class="col-md-4 col-xs-4">
                    <h4>关于本站</h4>
                    <p>本站基于 BootStrap、jQuery、 SpringBoot实现。</p>
                    <p>请充分利用本站搜索功能，后期将开源，请关注。</p>
                </div>
                <div class="col-md-4 col-xs-4">
                    <h4>联系博主</h4>
                    <p>有偿求助，技术支持、项目合作。请加博主QQ</p>
                    <p>博主QQ:2233912503</p>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="foot">
    younuo © 极简博客 丨17002430号 丨 36042102000137
</div>

<script src="../../js/index.js"></script>
</body>
</html>
