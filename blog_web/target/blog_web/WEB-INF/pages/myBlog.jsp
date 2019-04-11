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
    <title>我的博客</title>
    <style>
        body{
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
            <div class="right-card">
                <div class="news-list">
                    <div class="news-list-item clearfix ani4">
                        <div class="col-xs-4">
                            <img src="../../img/7.jpg" class="animate4">
                        </div>
                        <div class="col-xs-8">
                            <a href="singleBlog.html"><p class="title">Windows7倒计时2020年将停止服务支持</p></a>
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
    </div>
</div>
</body>
</html>
