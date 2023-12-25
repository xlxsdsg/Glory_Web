<%--
  Created by IntelliJ IDEA.
  User: qq136
  Date: 2023/5/24
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ include file="header.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name=”viewport” content=”width=device-width, initial-scale=1″ />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,user-scalable=no">
    <title>官网</title>
    <link href="/Glory_Web/css/title.css" rel="stylesheet" type="text/css">
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/Glory_Web/css/lunbo.css">
    <link rel="stylesheet" href="/Glory_Web/css/background.css">
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
<body>
<div id="tv" >
    <div id="screen">
        <img src="/Glory_Web/image/1.jpg"height="430px" width="640px" >
        <img src="/Glory_Web/image/2.jpg"height="430px" width="640px">
        <img src="/Glory_Web/image/3.jpg"height="430px" width="640px">
        <img src="/Glory_Web/image/4.jpg"height="430px" width="640px">
    </div>
</div>
<!--图片轮播-->

<div id="brief" style="color:aliceblue">
    <br>
    <br>
    <p><center>
    <h1>荣耀简介:</h1>
    <br>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;网游《荣耀》中被誉为教科书级别的顶尖高手叶修，因为种种原因遭到俱乐部的驱逐......<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;离开职业圈的他栖身于一家网吧成了一个小小的网管。
        <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;但是，拥有十年游戏经验的他，在荣耀新开的第十区重新投入了游戏，带着对往昔的回忆，
        和一把未完成的苏沐秋制作的银武千机伞，开始了重返巅峰之路......</h3>
    </center>
    </p>
</div>
<div id="notice" >

    <iframe name="menuframe" width="100%" height="50px"
            src="/Glory_Web/html/菜单栏.html">
    </iframe>

    <iframe name="contentframe"width="100%"height="370px"
    ></iframe>

</div>
</div>
</body>
</html>
