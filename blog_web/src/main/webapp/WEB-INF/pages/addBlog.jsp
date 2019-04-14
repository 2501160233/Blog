<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/main.css">
    <title>添加博客</title>

</head>
<body>
<jsp:include page="nav.jsp"/>
<div class="AddBolg">
    <h3>添加博客</h3>
    <c:if test="${Error!=null}">
        <span style="color: red;font-size:20px">${Error}</span>
    </c:if>
    <form action="/blog/save" method="post" enctype="multipart/form-data">
        <label>博客标题</label>
        <input type="text" name="blog_title">
        <label>摘要</label>
        <input type="text" name="blog_min">
        <label>博客内容</label>
        <textarea name="blog_content"></textarea>
        <label>所属分类</label>
        <select name="blog_class">
            <option value="前端">前端</option>
            <option value="后端">后端</option>
            <option value="其他">其他</option>
        </select>
        <label>请上传照片</label>
        <input type="file" name="file">
        <button class="btn btn-primary btn-block" type="submit">提交</button>
    </form>
</div>
</body>
</html>



