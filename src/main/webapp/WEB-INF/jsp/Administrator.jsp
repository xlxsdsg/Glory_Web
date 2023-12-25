<%--
  Created by IntelliJ IDEA.
  User: qq136
  Date: 2023/5/24
  Time: 19:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="deployment.jsp"%>
<%@ include file="AdministratorHeader.jsp"%>
<html>
<head>
    <meta charset="utf-8">
    <title>游戏论坛 - 管理员页面</title>
</head>
<body>
<main>
    <div class="container-fluid">
        <div class="row">
            <aside class="col-md-3 bg-light">
                <div class="list-group">
                    <a href="/Glory_Web/Administrator" class="list-group-item list-group-item-action active">控制面板</a>
                    <a href="/Glory_Web/UserControl" class="list-group-item list-group-item-action">用户管理</a>
                    <a href="/Glory_Web/PostControl" class="list-group-item list-group-item-action">帖子管理</a>
                    <a href="/Glory_Web/AnnouncementControl" class="list-group-item list-group-item-action">公告管理</a>
                </div>
            </aside>
            <section class="col-md-9">
                <h1>控制面板</h1>
                <div class="row">
                    <div class="col-md-6">
                        <div class="card mb-4">
                            <div class="card-body">
                                <h5 class="card-title">用户数量</h5>
                                <p class="card-text">当前平台上的用户数量为 <strong>1000</strong></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card mb-4">
                            <div class="card-body">
                                <h5 class="card-title">帖子数量</h5>
                                <p class="card-text">当前平台上的帖子数量为 <strong>5000</strong></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <h5 class="card-header">最近的帖子</h5>
                    <div class="card-body">
                        <ul class="list-group">
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                <a href="#">如何评价《王者荣耀》新版本的英雄与装备调整？</a>
                                <span class="badge badge-primary badge-pill">10</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                <a href="#">PS5与Xbox Series X的性能差距到底有多大？</a>
                                <span class="badge badge-primary badge-pill">5</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                <a href="#">如何评价《赛博朋克2077》的最新预告片？</a>
                                <span class="badge badge-primary badge-pill">3</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </section>
        </div>
    </div>
</main>
<footer>
    <div class="container">
        <p>版权所有《荣耀》游戏论坛</p>
    </div>
</footer>
</body>
</html>
