<%--
  Created by IntelliJ IDEA.
  User: qq136
  Date: 2023/6/1
  Time: 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AdminHeader</title>
    <link rel="stylesheet" href="/Glory_Web/css/AdminHeader.css">
</head>
<body>
<header>
    <nav class="navbar">
        <div class="container">
            <div style="text-align: center;"><p class="navbar-brand">游戏论坛 - 管理员页面</p></div>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <button class="logout-btn" onclick="logout()">退出登录</button>
                </li>
            </ul>
        </div>
    </nav>
</header>
<script>
    function logout(){
        location.href="logout";
    }
</script>
</body>
</html>