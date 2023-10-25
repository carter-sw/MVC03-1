<%--
  Created by IntelliJ IDEA.
  User: kks
  Date: 2023-10-24
  Time: 오후 9:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cnt" value="7"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach var="i" begin="1" end="5" step="1">
<font size="${i}">야호~ <br>
</c:forEach>

</body>
</html>
