<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2023/5/21
  Time: 23:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register/注册</title>
    <script type="text/javascript">
        function check(){
            var password= document.getElementById('password').value;
            var repassword= document.getElementById('repassword').value;
            if (password === repassword){
                return true;
            }
            else {
                alert("重复密码不匹配");
                return false;
            }
        }
    </script>
    <style>
        body
        {
            background:url(/Glory_Web/image/背景02.gif);
            background-size:100% 100%;
            height:100%;
            width:100%;
            background-repeat:no-repeat;
            margin:0 auto;
        }
        html
        {
            height:100%;
            width:100%;
        }
        div[class=top]
        {
            height:10%;
            width:100%;
            background-color:white;
            position:relative;
        }
        tr
        {
            height:15%;
        }
        table
        {
            position:absolute;
            top:0%;
            height:60%;
            width:100%;
        }
        form
        {
            height:70%;
            width:80%;
            text-align:center;
            position:absolute;
            top:15%;
            bottom:10%;
            left:10%;
            right:10%;
        }
    </style>
</head>
<body>

<div class="top">
    <div style="height:100%; width:10%; float:left; margin-left:5%;">
        <img src="/Glory_Web/image/logo.jpg" style="height:100%; width:100%">
    </div>

    <div style="height:100%; width:46%; float:left; margin-left:5%;">
			<span style="height:100%; width:100%; margin:0 auto; top:20%;
				font-size:250%; position:relative; ">Welcome to
					<span style="color:#fac85a"><b>Glory</b></span>
			</span>
    </div>

    <div style="height:50%; width:30%; float:left; text-align:center; font-size:150%">
        <a style="color:black; top:50%;" href="/Glory_Web/MainPage.html">主页</a>|
        <a style="color:black; top:50%;" href="">个人中心</a>|
        <a style="color:black; top:50%;" href="/Glory_Web/About.html">关于我们</a>
    </div>
</div>

<div style="height:60%; width:38%; background-color:white; border:3px solid gray;
		position:absolute; top:0; bottom:0; left:0; right:0; margin:auto">
    <form action="${pageContext.request.contextPath}/register" method="post" onsubmit="return check();">

        <table>
            <tr>
                <td><label for="username" style="color:black; font-size:150%">昵称:</label></td>
                <td><input type="text" id="username" name="username" style="height:60%; width:70%;"></td>
            </tr>

            <tr>
                <td><label for="password" style="color:black; font-size:150%">输入密码:</label></td>
                <td><input type="password" id="password" name="password" style="height:60%; width:70%;"></td>
            </tr>
            <tr>
                <td><label for="repassword" style="color:black; font-size:150%;">再次输入密码：</label></td>
                <td><input type="password" id="repassword" name="repassword" style="height:60%; width:70%;"></td>
            </tr>
            <tr>
                <td><label for="email" style="color:black; font-size:150%">邮箱:</label></td>
                <td><input type="email" id="email" name="email" style="height:60%; width:70%;"></td>
            </tr>
        </table>

        <input type="submit" value="注册"
               style="height:17%; width:40%; background-color:green; color:white; font-size:150%;
					position:absolute; top:62%; left:30%; right:30%; bottom:0; ">

        <span style="position:absolute; top:87%; left:45%; right:0%; bottom:5%;">注册完成？<a href="http://localhost:8080/Glory_Web/login">点击登录</a></span>
    </form>
</div>
</body>
</html>
