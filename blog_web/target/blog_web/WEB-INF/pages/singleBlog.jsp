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
    <h2 class="news-title">宝塔控制面板怎么屏蔽IP地址访问网站推荐</h2>
    <div class="news-status">25k阅读 • 35分之前发布
        <div class="label label-default">教育</div>
        <div class="label label-default">情感</div>
        <div class="news-content">
            <blockquote>
                <p>
                    今天查看服务器状态，不小心误点了服务器的IP地址，然后居然能打开，，，OMG，怎么会这样，这怎么行呢？
                    所以得修改以下配置文件，不让IP地址访问，至于为什么不让IP访问，有很多解释，...
                </p>
            </blockquote>
            <div>
                一般情况下，要使域名能访问到网站需要两步：
                第一步，将域名解析到网站所在的主机。
                第二步，在web服务器中将域名与相应的网站绑定。但是，如果通过主机IP能直接访问某网站，那么把域名解析到这个IP也将能访问到该网站，
                而无需在主机上绑定，也就是说任何人将任何域名解析到这个IP就能访问到这个网站。
            </div>
            <br>
            <div>
                简单解释就是，你的网站可以通过IP直接访问，本来这没什么问题，但是如果被人恶意用别的域名解析到你的IP的话，那么你的网站就能通过别人的域名来访问了，比如指向非法网站，容易引发搜索引擎惩罚，连带IP受到牵连。即使域名没什么问题，但流量也会被劫持到别的域名，
                被这么一搞，时间一长肯定会被发现域名不符，从而遭到广告联盟的封杀，那就歇菜了。<br>
                所以我们得学会保护好自己的资源，以下教程仅针对宝塔Nginx的系统，其他系统自行度娘。
                首页我们需要新建一个站点，域名绑定什么随便填一个，比如这样：<br>
            </div>
            <br>
            <div>好了，收工，这种教程网上也有很多，基本都能解决的，还是那句话修改前记得做好备份（是指在主网站操作），因为我发现
                我的网站配置如上代码有出现访问空白的问题，就是IP访问和域名访问都会出现一样的界面，所以我才新建一个站点
                很奇怪，在测试站点测试一切正常，为什么主站就不行了呢，你知道什么原因吗？
            </div>
            <br>
            <div>
                简单解释就是，你的网站可以通过IP直接访问，本来这没什么问题，但是如果被人恶意用别的域名解析到你的IP的话，那么你的网站就能通过别人的域名来访问了，比如指向非法网站，容易引发搜索引擎惩罚，连带IP受到牵连。即使域名没什么问题，但流量也会被劫持到别的域名，
                被这么一搞，时间一长肯定会被发现域名不符，从而遭到广告联盟的封杀，那就歇菜了。
                所以我们得学会保护好自己的资源，以下教程仅针对宝塔Nginx的系统，其他系统自行度娘。
                首页我们需要新建一个站点，域名绑定什么随便填一个，比如这样：
            </div>
        </div>
    </div>
</div>


<canvas id="canvas"></canvas>
<script src="../../js/Underscore.js"></script>
<script src="../../js/colorfunBall.js"></script>
</body>
</html>
