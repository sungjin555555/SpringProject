<%@ page contentType="text/html;charset=UTF-8" language="java"
         isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
<%--    <link rel="stylesheet" href="${path}/resources/css/style.css" type="text/css"/>--%>
</head>
<body>

<h1>${title}</h1>

<table id="list" width="90%">
<tr>
    <th>Id</th>
    <th>Category</th>
    <th>Title</th>
    <th>Writer</th>
    <th>Content</th>
    <th>RegDate</th>
    <th>Edit</th>
    <th>Delete</th>
</tr>

<c:forEach items="${list}" var="u">
    <tr>
        <td>${u.seq}</td>
        <td>${u.category}</td>
        <td>${u.title}</td>
        <td>${u.writer}</td>
        <td>${u.content}</td>
        <td>${u.regdate}</td>
        <td><a href="editform/${u.seq}">Edit</a></td>
        <td><a href="delete_ok/${u.seq}">Delete</a></td>
<%--        <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>--%>
    </tr>
</c:forEach>
</table>

<br/><a href="add">Add New Post</a>
</body>
</html>