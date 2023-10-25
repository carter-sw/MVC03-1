<%--
  Created by IntelliJ IDEA.
  User: kks
  Date: 2023-10-24
  Time: 오후 9:19
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
<c:choose>
    <c:when test="${cnt%2==0}">
        짝수임
    </c:when>
    <c:when test="${cnt%2==1}">
        홀수임
    </c:when>
    <c:otherwise>
        일치하는 when 절이 없는경우에 실행
    </c:otherwise>
</c:choose>
</body>
</html>
