<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2023/5/26
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<script>
    function toEdit(postId){
        location.href="toEdit?postId="+postId
    }
    function toDelete(postId){
        location.href="deletePost?postId="+postId
    }
    function toSend(){
        location.href="toSend"
    }
    function toExactPost(postId){
        location.href="PostPage?postId="+postId
    }
</script>
<body>
<div>
    <h2>帖吧</h2>
    <c:forEach items="${PostList}" var="post">
        <div>
            <a href="/Glory_Web/PostPage?postId=${post.postId}">${post.title}</a>
            <table>
                <tr>
                    <td colspan="4"></td>
                </tr>
                <tr>
                    <td>${post.postId}</td>
                    <td>${post.username}</td>
                    <td>${post.time}</td>
                </tr>
                <tr>
                    <td colspan="3">${post.content}</td>
                </tr>
            </table>
        </div>
    </c:forEach>
</div><br>
<div>
    <h2>我的帖子</h2>
    <c:forEach items="${MyPostList}" var="post">
        <table>
            <tr>
                <td>${post.postId}</td>
                <td>${post.username}</td>
            </tr>
            <tr>
                <td colspan="2">
                        ${post.content}
                </td>
            </tr>
            <tr>
                <td>
                    <input type="button" value="修改" onclick="toEdit(${post.postId})"/>
                </td>
                <td>
                    <input type="button" value="删除" onclick="if (confirm('你确定要删除该帖子吗？')) toDelete(${post.postId})">
                </td>
            </tr>
        </table>
    </c:forEach>
</div><br>
<div>
    <input type="button" value="发送帖子请点这里" onclick="toSend()">
</div>
</body>
</html>
