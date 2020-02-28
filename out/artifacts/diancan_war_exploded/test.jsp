<%--
  Created by IntelliJ IDEA.
  User: chen
  Date: 2020/2/4
  Time: 上午 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script type="text/javascript" src="JS/jquery-3.4.1.min.js"></script>
</head>
<body>
<a href="hello">点我</a></br>
<a href="hello2">hello2</a></br>

<input type="button" id="sub" value="-">
<input type="text" id="num" value="0">
<input type="button" id="add" value="+">
<script type="text/javascript">
    $("#sub").click(function () {
        var t = $(this).next();
        t.val(parseInt(t.val()) - 1);
    });
    $("#add").click(function () {
        var t = $(this).prev();
        t.val(parseInt(t.val()) + 1);
    });
</script>
</body>
</html>
