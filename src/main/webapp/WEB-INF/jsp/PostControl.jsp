<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: qq136
  Date: 2023/6/1
  Time: 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ include file="AdministratorHeader.jsp"%>
<%@ include file="deployment.jsp"%>
<html>
<head>
    <link rel="stylesheet" href="/Glory_Web/css/AdminControl.css">

    <title>帖子管理</title>
    <style>
        .box-logo nav ul li a{
            text-align: center;
        }
        a{
            text-decoration: none;
        }
        .header-info a{
            color:var(--font-main-color);
            font-size: 1.25em;
        }
        .brief p{
            text-align:center;
        }
    </style>
</head>
<script>
    function hiddenPostByRoot(postId){
        location.href='hiddenPostByRoot?postId='+postId;
    }
    function deletePostByRoot(postId){
        location.href='deletePostByRoot?postId='+postId;
    }
</script>
<body>
<div class="row">
    <aside class="col-md-3 bg-light">
        <div class="list-group">
            <h1>控制面板</h1>
            <a href="/Glory_Web/UserControl" class="list-group-item list-group-item-action">用户管理</a>
            <a href="/Glory_Web/PostControl" class="list-group-item list-group-item-action">帖子管理</a>
            <a href="/Glory_Web/AnnouncementControl" class="list-group-item list-group-item-action">公告管理</a>
        </div>
    </aside>
    <section class="col-md-9">
        <div class="col-md-8">
            <h2>帖子列表</h2>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>用户名</th>
                    <th>帖子标题</th>
                    <th colspan="3">操作</th>
                </tr>
                </thead>
                <tbody id="user-list">
                <c:forEach items="${PostList}" var="Post">
                    <tr>
                        <td>${Post.username}</td>
                        <td>${Post.title}</td>
                        <td>
                            <a onclick="hiddenPostByRoot(${Post.postId})" class="list-group-item list-group-item-warning ">隐藏</a>
                        </td>
                        <td>
                            <a onclick="deletePostByRoot(${Post.postId})" class="list-group-item list-group-item-info">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </section>
</div>

</body>
</html>
