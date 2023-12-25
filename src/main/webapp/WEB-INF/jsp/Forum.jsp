
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="header.jsp"%>
<%@ include file="deployment.jsp"%>
<html lang="zh-cn">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,user-scalable=no">
    <title>论坛页面</title>
    <link rel="stylesheet" href="/Glory_Web/css/Forum.css">

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
    function toRealPost(postId){
        location.href='PostPage?postId='+postId;
    }
</script>
<body>
<div class="container-fluid forum-container">
    <div class="row">
        <div class="col-md-6" id="post-list">
            <div class="postlist">
                <!-- 论坛帖子列表 -->
                <center><h2>论坛帖子</h2></center>
                <table class="table table-hover">
                    <tbody>
                    <c:forEach items="${PostList}" var="Post">
                        <tr>
                            <td>
                                <h3><a onclick="toRealPost(${Post.postId})">${Post.title}</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${Post.username}，&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${Post.time}</h3>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="post-form">
                <form action="${pageContext.request.contextPath}/sendPost" method="post">
                    <label for="postTitle">帖子标题:</label>
                    <input type="text" id="postTitle" name="title" required>
                    <label for="postContent">帖子内容:</label>
                    <textarea id="postContent" name="content" required></textarea>
                    <input type="submit" value="发布帖子">
                </form>
            </div>
        </div>
        <div class="col-md-6">
            <div class="announcementlist">
                <!-- 公告列表 -->
                <center><h2>公告</h2></center>
                <table class="table table-hover">
                    <tbody>
                    <c:forEach items="${AnnouncementList}" var="announcement">
                        <tr>
                            <td>
                                <h3>${announcement.title} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${announcement.time}
                                </h3>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>

