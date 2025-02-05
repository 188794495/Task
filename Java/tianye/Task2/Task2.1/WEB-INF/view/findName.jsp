<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 田野
  Date: 2018/5/20
  Time: 12:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="GB18030"%>
<head>
    <title>表格</title>
</head>
<body>

<table cellpadding="0" cellspacing="0" border="1"
style=" border-collapse: collapse;min-height: 300px;width: 1800px;text-align: center;">

<tr>
    <td>学号</td>
    <td>姓名</td>
    <td>QQ</td>
    <td>入学时间</td>
    <td>类型</td>
    <td>学校</td>
    <td>日报链接</td>
    <td>立愿</td>
    <td>师兄</td>
    <td>从哪知道</td>
    <td>创建时间</td>
    <td>更新时间</td>
    <td>修改</td>
    <td>删除</td>
</tr>
<c:forEach items="${students}" var="li" varStatus="i">
    <tr>
        <td>${li.s_id}</td>
        <td>${li.s_name}</td>
        <td>${li.s_qq}</td>
        <td>${li.s_time}</td>
        <td>${li.s_type}</td>
        <td>${li.s_school}</td>
        <td>${li.s_link}</td>
        <td>${li.s_words}</td>
        <td>${li.s_brother}</td>
        <td>${li.s_know}</td>
        <td>${li.create_at}</td>
        <td>${li.update_at}</td>
        <td><a type="button"  href="${path}update?id=${li.s_name}" class="btn btn-info btn-sm">
            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
            修改</a>
        </td>
        <td> <a type="button"  href="${path}/delete?s_id=${li.s_name}" class="btn btn-danger btn-sm">
            <span class="glyphicon glyphicon-trash" aria-hidden="true" ></span>
            删除</a>
        </td>
    </tr>
</c:forEach>
</table>
</body>