<%@ page import="com.Glory.po.User" %><%--
  Created by IntelliJ IDEA.
  User: qq136
  Date: 2023/5/24
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="header.jsp"%>
<html>
<head>
  <meta charset="UTF-8">
  <meta name=”viewport” content=”width=device-width, initial-scale=1″ />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0,user-scalable=no">
  <title>用户界面</title>
  <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
  <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
  <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="/Glory_Web/css/HeadPicture.css">
  <link rel="stylesheet" href="/Glory_Web/css/Userbackground.css">
  <link rel="stylesheet" href="/Glory_Web/css/MyPost.css">

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
  <script>
    function toEdit(postId){
      location.href="toEdit?postId="+postId;
    }
    function toDelete(postId){
      location.href="deletePost?postId="+postId;
    }
    function toSend(){
      location.href="toSend";
    }
    function changeToEdit(){
      document.getElementById("textdiv").style.display="none";
      document.getElementById("inputdiv").style.display="";
      document.getElementById("InfoButton").style.display="";
    }
    function changeToInfo(){
      document.getElementById("inputdiv").style.display="none";
      document.getElementById("textdiv").style.display="";
      document.getElementById("EditButton").style.display="";
    }
    function TransmitGender(){
      document.getElementById("gender").value=document.getElementById("SelectGender").value;
    }
    function logout(){
      location.href="logout";
    }
  </script>
</head>
<body>
<div class="user-info">
  <div class="pic-div" >
    <%
      // 从 session 中获取用户信息
      User user = (User) session.getAttribute("USER_SESSION");
      String imgSrc = "robot.jpg";
      if (user.getGender().equals("male")) {
        System.out.println("Boy~");
        imgSrc = "Male.jpg";
      }
      else if (user.getGender().equals("female")) {
        System.out.println("Girl~");
        imgSrc = "Female.jpg";
      }
      else {
        imgSrc = "robot.jpg";
      }
    %>
    <img src="image/<%= imgSrc %>"/>
  </div>
  <div id="textdiv" class="textdiv">
    <p>昵称：${USER_SESSION.username}</p>
    <p>性别：${USER_SESSION.gender}</p>
    <p>个性签名：${USER_SESSION.signature}</p>
    <p>邮箱号：${USER_SESSION.email}</p>
    <button id="EditButton" onclick="changeToEdit()">修改用户信息</button>
  </div>
  <div id="inputdiv" style="display:none">
    <form id="EditForm" action="${pageContext.request.contextPath}/EditUserInfo" method="post">
      <p>昵称：<input type="text" id="username" name="username" value="${USER_SESSION.username}"></p>
      <p>性别：<input type="text" id="gender" name="gender" value="${USER_SESSION.gender}" style="display:none"/>
        <select id="SelectGender">
          <option value="male">男</option>
          <option value="female">女</option>
          <option value="unknown">未知</option>
        </select>
      </p>
      <p>个性签名：<input type="text" id="signature" name="signature" value="${USER_SESSION.signature}"></p>
      <input type="button" value="确认修改" onclick="TransmitGender(); this.form.submit()">
    </form><br>
    <button id="InfoButton" onclick="changeToInfo()" style="display: none">取消修改</button>
  </div>

  <br>
  <h2>我的帖子</h2>
  <div class="comment-box" id="comment-box">
    <c:forEach var="Post" items="${PostList}">
      <div class="post-item">
        <p>标题:${Post.title}</p>
        <h6>内容:${Post.content}</h6>
        <input type="button" value="修改帖子" onclick="toEdit(${Post.postId});">
        <input type="button" value="删除帖子" onclick="toDelete(${Post.postId});">
      </div>
    </c:forEach>
  </div>
</div>
</body>
</html>