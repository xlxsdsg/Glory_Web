<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2023/5/21
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
  <title>Login/登陆</title>
  <link href="/Glory_Web/css/LoginCSS.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="top">
  <div style="height:100%; width:10%; float:left; margin-left:5%;">
    <img src="/Glory_Web/image/logo.jpg" style="height:100%; width:100%">
  </div>
  <div style="height:100%; width:46%; float:left; margin-left:5%;">
			<span style="height:100%; width:100%; margin:0 auto; top:20%;
				font-size:250%; position:relative; ">Welcome to
					<span style="color:#fac85a"><b>Glory</b></span></span>
  </div>
  <div style="height:50%; width:30%; float:left; text-align:center; font-size:150%">
    <a style="color:black; top:50%;" href="EasyPage.html">主页</a>|
    <a style="color:black; top:50%;" href="">个人中心</a>|
    <a style="color:black; top:50%;" href="About.html">关于我们</a>
  </div>
</div>

<div style="height:60%; width:100%; margin:7% auto;
		background-color:white;">

  <img src="/Glory_Web/image/LoginLogo.jpg" height=82% width=60%
       style="margin-top:2%; margin-bottom:2%; margin-left:3%; margin-right:3%; float:left;">

  <form style="height:100%; width:30%; float:left;" action="${pageContext.request.contextPath}/login" method="post">
    <input type="text" name="email" placeholder="Email/邮箱" style="margin-top:15%">
    <input type="password" name="password" placeholder="Password/密码" style="margin-top:5%">
    <input type="submit" value="登录" style="margin-top:5%">
    <span style="margin-top:7%; margin-right:5%; float:right; font-size:120%;">
        没有账户？  <a href="http://localhost:8080/Glory_Web/register">现在注册！</a></span>
  </form>
</div>
</body>
</html>

