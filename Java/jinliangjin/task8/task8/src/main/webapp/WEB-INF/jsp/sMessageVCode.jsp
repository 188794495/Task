<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<html>
<head>
    <link rel="stylesheet" href="/task8/css/body.css">
    <title>葡萄藤</title>
</head>
<body>

<div align="center">
    <br/>
    <br/>
    <c:if test="${errors != null && errors.size() >0}">
        <c:forEach items="${errors}" var="item">
            ${item.defaultMessage}
        </c:forEach>
    </c:if>
    <c:if test="${!empty message}">
        ${message}
    </c:if>

    <form action="${pageContext.request.contextPath}/it/u/tel/result" method="post">
        <br/>
        <br/>
        <table border="0">
            <tr>
                <td align="center">请输入验证码</td>
                <td><input type="text" name="vCode" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="绑定" /></td>
            </tr>
        </table>
    </form>

    <br/>
    <a href="${pageContext.request.contextPath}/it/u/recommend">放弃修改</a>
    <br/><br/>
</div>
</body>
</html>