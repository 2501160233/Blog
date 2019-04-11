<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <!-- Add Pagination -->
                    <div class="swiper-pagination"></div>
                    <!-- Add Arrows -->
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
                <div class="news-list">
                    <div class="news-list-item clearfix ani1">
                        <div class="col-xs-4">
                            <img src="../../img/00.jpg" img-fluid class="animate1">
                        </div>
                        <div class="col-xs-8">
                            <a href="singleBlog.html"><p class="title"> 宝塔控制面板怎么屏蔽IP地址访问网站推荐</p></a>
                            <article class="article">今天查看服务器状态，不小心误点了服务器的IP地址，然后居然能打开，，，OMG，怎么会这样，这怎么行呢？
                                所以得修改以下配置文件，不让IP地址访问，至于为什么不让IP访问，有很多解释...
                            </article>
                            <div class="info">
                                <span><i class="fa fa-heart"></i>&nbsp;&nbsp;赞</span>
                                <span><i class="fa fa-comment"></i>&nbsp;&nbsp;25评论</span>
                                <span>10分钟前</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="news-list">
                    <div class="news-list-item clearfix ani2">
                        <div class="col-xs-4">
                            <img src="../../img/phone.jpg" class="animate2">
                        </div>
                        <div class="col-xs-8">
                            <a href="#"><p class="title">智能手机如何正确充电？手机充电正确的使用方法</p></a>
                            <article class="article">我们的衣食住行基本上都可以用手机来完成。
                                相信每个人买手机都会希望用久一点，毕竟谁都不希望自己的爱机早早被淘汰。但是
                            </article>
                            <div class="info">
                                <span><i class="fa fa-heart"></i>&nbsp;&nbsp;赞</span>
                                <span><i class="fa fa-comment"></i>&nbsp;&nbsp;25评论</span>
                                <span>10分钟前</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="news-list">
                    <div class="news-list-item clearfix ani3">
                        <div class="col-xs-4">
                            <img src="../../img/fish.jpg" class="animate3">
                        </div>
                        <div class="col-xs-8">
                            <a href="#"><p class="title"> 关于锦鲤主题的公告功能详解（原微语功能）</p></a>
                            <article class="article">怎么设置微语公告在主题详情我已经说的很明白了，但是，emmmmm~~~~还是有人不会，没办法只能重新写一篇教程了，
                                其实没有那么复杂的呀，摒除之前微语的设置方法，这次不需要设置分类ID
                            </article>
                            <div class="info">
                                <span><i class="fa fa-heart"></i>&nbsp;&nbsp;赞</span>
                                <span><i class="fa fa-comment"></i>&nbsp;&nbsp;25评论</span>
                                <span>10分钟前</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="news-list">
                    <div class="news-list-item clearfix ani4">
                        <div class="col-xs-4">
                            <img src="../../img/7.jpg" class="animate4">
                        </div>
                        <div class="col-xs-8">
                            <a href="#"><p class="title">Windows7倒计时2020年将停止服务支持</p></a>
                            <article class="article">陪伴我们的win7系统也即将告别历史的舞台了，微软计划在2020年1月终止对Windows 7
                                的全部支持，现在微软已经开始准备向广大Windows 7用户推送这一通知消息。微软最近证实，
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
        </div>
        <div class="col-sm-4">
            <!--<div class="search-bar">
                <input type="search" class="form-control" placeholder="搜博客">
            </div>-->
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
            <div class="connect-foot">
                <div class="col-md-6">文章(300)</div>
                <div class="col-md-6">留言(200)</div>
            </div>

            <!--热门推荐-->
            <div class="hotBlog">
                <p>热门推荐</p>
                <ul>
                    <li><span style="background-color: #dc143c;">1</span><a href="singleBlog.html">开发个小程序大概要多少钱</a></li>
                    <li><span style="background-color: #ff8140;">2</span><a href="#">zblog批量删除mysql数据库里的评论</a></li>
                    <li><span style="background-color: green;">3</span><a href="#">合买主题有没有售后</a></li>
                    <li><span style="background-color: #999999;">4</span><a href="#">关于锦鲤主题的公告功能详解</a></li>
                    <li><span style="background-color: #999999;">6</span><a href="#">聊聊网站启用SSL后让PCIDSS合规</a></li>
                    <li><span style="background-color: #999999;">7</span><a href="#">宝塔控制面板怎么屏蔽IP地址访问</a></li>
                    <li><span style="background-color: #999999;">8</span><a href="#">Windows7倒计时2020年将停止</a></li>
                    <li><span style="background-color: #999999;">9</span><a href="#">PHP常见问题答疑</a></li>
                </ul>
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
    Copyright © 极简博客 丨17002430号 丨 36042102000137
</div>

<script src="../../js/index.js"></script>
</body>
</html>
