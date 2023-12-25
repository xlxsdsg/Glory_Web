<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="header.jsp"%>

<html>
<head>
  <title>帖子页面</title>
  <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
  <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="/Glory_Web/css/PostPage.css">
  <link rel="stylesheet" href="/Glory_Web/css/Userbackground.css">
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
<div class="container">
  <div class="row">
    <div class="col-md-8">
      <c:forEach items="${PostList}" var="Post">
        <div class="post">
          <div class="post-header">
            <h1>${Post.title}</h1>
            <p>${Post.username}, ${Post.time}</p>
          </div>
          <div class="post-content">
            <p>${Post.content}</p>
          </div>
          <div class="post-footer">
          </div>
        </div>
      </c:forEach>
      <div class="comment-box">
        <h3>评论区</h3>
        <c:forEach items="${CommentList}" var="Comment">
          <div class="comment">
            <div class="comment-header">
              <p>${Comment.username}, Time: ${Comment.time}</p>
            </div>
            <div class="comment-content">
              <p>Content: ${Comment.content}</p>
            </div>
          </div>
        </c:forEach>
        <c:forEach items="${PostList}" var="Post">
        <form action="${pageContext.request.contextPath}/sendComment" method="post">
            <input type="hidden" name="postId" value="${Post.postId}">
            <div class="comment-footer">
              <input type="text" name="content" placeholder="写下你的评论...">
              <input type="submit" value="发表评论">
            </div>
        </form>
        </c:forEach>
      </div>
    </div>
  </div>
</div>
</body>
</html>