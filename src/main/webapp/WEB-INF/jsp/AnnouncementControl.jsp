<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ include file="AdministratorHeader.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="deployment.jsp"%>

<html>
<head>
    <title>公告管理</title>
    <link rel="stylesheet" href="/Glory_Web/css/AdminControl.css">
</head>
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
<!-- 发布公告的表单 -->
<div class="announce-form">
    <form action="${pageContext.request.contextPath}/sendAnnouncement" method="post">
        <label for="announceTitle">公告标题:</label>
        <input type="text" id="announceTitle" name="title">
        <input type="submit" value="发布公告">
    </form>
</div>

<div class="announce-list">
    <h2>公告列表</h2>
    <table>
        <thead>
        <tr>
            <th>公告标题</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${AnnouncementList}" var="Announcement">
            <tr>
                <td>${Announcement.title}</td>
                <td>
                    <a onclick="toShowA(${Announcement.id})">显示</a>
                    <a onclick="toHideA(${Announcement.id})">隐藏</a>
                    <a onclick="toDeleteA(${Announcement.id})">删除</a>
                </td>

            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
    </section>
</div>
</body>
<script>
    function toHideA(id){
        location.href='hideAnnouncement?id='+id;
    }
    function toShowA(id){
        location.href='showAnnouncement?id='+id;
    }
    function toDeleteA(id){
        location.href='deleteAnnouncement?id='+id;
    }
</script>
</html>