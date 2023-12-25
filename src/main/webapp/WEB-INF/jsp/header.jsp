<%--
  Created by IntelliJ IDEA.
  User: qq136
  Date: 2023/5/30
  Time: 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="/Glory_Web/css/title.css" rel="stylesheet" type="text/css">
</head>
<body>
<header>
    <div class="box-logo">
            <div class="img-logo-box text-logso">
                <img src="/Glory_Web/image/logo.jpg" height="50px" width="50px" alt="logo">
            </div>
        <nav >
            <ul>
                <li><a href="http://localhost:8080/Glory_Web/AfterLogin">首页</a></li>
                <li><a href="http://localhost:8080/Glory_Web/AfterLoginJob">职业系</a></li>
                <li><a href="http://localhost:8080/Glory_Web/AfterAbout">关于我们</a></li>
                <li><a href="http://localhost:8080/Glory_Web/UserPage">个人中心</a> </li>
                <li><a href="http://localhost:8080/Glory_Web/Forum">论坛</a> </li>
            </ul>
        </nav>
        <div class="header-info">
            <a href=""><img src="/Glory_Web/image/Search.png" />搜索</a>
            <a href=""><img src="/Glory_Web/image/消息.png" />消息</a>
            <div class="after-login">
                <h2>欢迎来到荣耀世界！${USER_SESSION.username}</h2>
            </div>
            <button onclick="logout()">退出登录</button>
        </div>
    </div>
</header>
</body>
<script>
    function logout(){
        location.href="logout";
    }
</script>
</html>
