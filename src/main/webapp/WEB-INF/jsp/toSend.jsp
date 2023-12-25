<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2023/5/28
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/sendPost">
  <input type="text" name="title"><br>
  <input type="text" name="content"><br>
  <input type="button" value="发布帖子" onclick="this.form.submit()">
</form>
</body>
</html>
