<%--
  Created by IntelliJ IDEA.
  User: chen
  Date: 2020/2/4
  Time: 下午 6:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>点餐</title>
    <script type="text/javascript" src="../../JS/jquery-3.4.1.min.js"></script>
</head>
<body>
你好${id}号桌顾客！</br>
<c:choose>
<c:when test="${not empty goods}">
<table border="1" align="center">
    <tr>
        <th>ID</th>
        <th>名称</th>
        <th>单价</th>
        <th>剩余</th>
        <th>图片</th>
        <th>购买数量</th>
    </tr>
    <c:forEach items="${goods}" var="good">
        <tr class="info">
            <td class="id">${good.id}</td>
            <td class="name">${good.name}</td>
            <td class="price">${good.price}</td>
            <td class="amount">${good.amount}</td>
            <td><img src="../../${good.pic}"></td>
            <td>
                <input type="button" class="sub" value="-">
                <input type="text" class="num" readonly value="0">
                <input type="button" class="add" value="+">
            </td>
        </tr>
    </c:forEach>
    <tr>
        <td>总计：<input id="total" value="0" readonly>元</td>
        <td><input type="button" value="付款" id="check"></td>
    </tr>
    </c:when>
    <c:otherwise>
        <c:out value="暂时没有数据！"></c:out>
    </c:otherwise>
    </c:choose>
</table>
<script type="text/javascript">
    <%--    使用class标识，不能用id，id在页面内是唯一标识，用了只有第一个起作用--%>
    <%--on方法替代了 live（）等，为后期生成的标签页添加事件绑定--%>
    $(".sub").on("click", function () {
        //拿到输入框
        var t = $(this).next();
        var price = parseInt(t.parent().prevAll("td.price").text());
        if (parseInt(t.val()) <= 0) return;
        t.val(parseInt(t.val()) - 1);

        var total = $("#total");
        total.val(parseInt(total.val()) - price);


    });
    $(".add").on("click", function () {
        var t = $(this).prev();
        console.log(t.parent().prevAll("td.price").text())
        var price = parseInt(t.parent().prevAll("td.price").text());
        if (parseInt(t.val()) >= 99) return;
        t.val(parseInt(t.val()) + 1);

        var total = $("#total");
        total.val(parseInt(total.val()) + price);
    });

    $("#check").click(function () {
        var table =${requestScope.id};
        var items = []
        var trs = $("tr.info")//取到有信息的所有tr
        trs.each(function () {
            var number = $(this).find(".num").val()//input可以用val
            if (parseInt(number) == 0)
                return true;
            var id = $(this).find(".id").text()//其他标签取值只能用text
            var name = $(this).find(".name").text()
            var item = {"id": id, "name": name, "number": number}
            items.push(item)

        });
        var order = {
            "table": table,
            "foods": items,
        }
        console.log(order)
        alert("订单看控制台")
        var option = {
            url: "/check",
            contentType:"application/json",
            type: "post",
            data: JSON.stringify(order),
            success: function () {
                alert("订单提交成功")
            },
            error: function () {
                alert("失败")
            }
        }

        $.ajax(option)
    });
</script>
</body>
</html>
