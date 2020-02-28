<%--
  Created by IntelliJ IDEA.
  User: chen
  Date: 2020/2/4
  Time: 下午 5:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>选座</title>
</head>
<body>
<%-- 循环生成9个桌号--%>
<table width="50%" align="center" border="1" >
    <%
        int i;
        for (i = 1; i <= 9; i++) {
    %>
    <td>
        <a href="book/<%=i%>"><%=i%></a>
    </td>
    <%
            if (i % 3 == 0)
                out.print("</tr>");
        }%>
</table>

</body>
</html>
