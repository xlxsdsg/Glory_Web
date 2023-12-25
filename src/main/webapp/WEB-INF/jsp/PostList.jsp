
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@ include file="deployment.jsp"%>
    <title>帖子列表</title>
    <link rel="stylesheet" href="/Glory_Web/css/Postbackground.css">

</head>
<body>
<div class="postlist ">

    <table class="table table-hover " style= "FILTER:   alpha(opacity=40) " >
        <thead>
        <center><h2>论坛帖子</h2></center>
        </thead>
        <tbody>
        <c:forEach items="${PostList}" var="Post">
            <tr>
                <td>
                    <h3>${Post.title} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${Post.username}，&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${Post.time}</h3>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>


