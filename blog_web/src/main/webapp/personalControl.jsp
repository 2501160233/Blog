<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>博客管理</title>
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/main.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        .control {
            width: 100%;
            margin-top: 15px;
            background-color: #fff;
            border: 1px solid #cccccc;
            box-shadow: 5px 5px 5px #888888;
            padding: 16px;
        }
    </style>
</head>
<body>
<div class="container" style="max-width: 850px;">
    <div class="control">
        <ul id="myTab" class="nav nav-tabs">
            <li class="active">
                <a href="#tab-one" data-toggle="tab">
                    文章管理
                </a>
            </li>
            <li><a href="#tab-two" data-toggle="tab">用户管理</a></li>

        </ul>
        <div id="myTabContent" class="tab-content">
            <div class="tab-pane fade in active" id="tab-one">
                <table class="table table-bordered">
                    <caption>博客管理</caption>
                    <thead>
                    <tr>
                        <th>所在分类</th>
                        <th>文章标题</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>Tanmay</td>
                        <td>标题标题标题标题标题标题标题标题标题标题标题</td>
                        <td>
                            <button class="btn btn-success">查看</button>
                            <button class="btn btn-danger">删除</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Sachin</td>
                        <td>Mumbai</td>
                        <td>
                            <button class="btn btn-success">查看</button>
                            <button class="btn btn-danger">删除</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Uma</td>
                        <td>Pune</td>
                        <td>
                            <button class="btn btn-success">查看</button>
                            <button class="btn btn-danger">删除</button>
                        </td>
                    </tr>
                    </tbody>
                </table>

            </div>
            <div class="tab-pane fade" id="tab-two">
                <table class="table table-bordered">
                    <caption>用户管理</caption>
                    <thead>
                    <tr>
                        <th>用户名</th>
                        <th>昵称</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>Tanmay</td>
                        <td>标题标题标题标</td>
                        <td>
                            <button class="btn btn-success">修改</button>
                            <button class="btn btn-danger">删除</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Sachin</td>
                        <td>Mumbai</td>
                        <td>
                            <button class="btn btn-success">修改</button>
                            <button class="btn btn-danger">删除</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Uma</td>
                        <td>Pune</td>
                        <td>
                            <button class="btn btn-success">修改</button>
                            <button class="btn btn-danger">删除</button>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>
