<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
  Created by IntelliJ IDEA.
  User: qq136
  Date: 2023/5/31
  Time: 19:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="header.jsp"%>
<%@ include file="deployment.jsp"%>
<html>
<head>
    <title>编辑帖子</title>
    <link rel="stylesheet" href="/Glory_Web/css/EditPage.css">
    <link rel="stylesheet" href="/Glory_Web/css/Userbackground.css">

</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <h1>编辑帖子</h1>
            <c:forEach items="${OnePost}" var="Post">
            <form action="${pageContext.request.contextPath}/UserPageToEditPost" method="post">

                <input type="text" name="postId" value="${Post.postId}" readonly="readonly" hidden>
                <div class="form-group">
                    <label for="title">标题</label>
                    <input type="text" id="title" name="title" value="${Post.title}">
                </div>
                <div class="form-group">
                    <label for="content">内容</label>
                    <textarea id="content" name="content">${Post.content}</textarea>
                </div>
                <div class="form-group">
                    <input type="submit" value="更新帖子">
                </div>
                </c:forEach>
            </form>
        </div>
    </div>
</div>
</body>
