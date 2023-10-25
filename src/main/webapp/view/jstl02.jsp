<%--
  Created by IntelliJ IDEA.
  User: kks
  Date: 2023-10-24
  Time: 오후 9:13
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
<c:if test="${cnt%2==0}">
    짝수입니다.
</c:if>
<c:if test="${cnt%2==1}">
    홀수입니다.
</c:if>

</body>
</html>
