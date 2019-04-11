<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <form>
        <label>博客标题</label>
        <input type="text" required>
        <label>博客内容</label>
        <textarea></textarea>
        <div class="checkboxes">
            <label>计算机</label>
            <input type="checkbox" value="计算机">
            <label>前端</label>
            <input type="checkbox" value="前端">
            <label>编程语言</label>
            <input type="checkbox" value="编程语言">
            <label>其他</label>
            <input type="checkbox" value="其他">
        </div>
        <label>作者</label>
        <input type="text" placeholder="">
        <button>添加博客</button>

    </form>

</div>
</body>
</html>



