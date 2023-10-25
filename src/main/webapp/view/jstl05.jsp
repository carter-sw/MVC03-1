<%--
  Created by IntelliJ IDEA.
  User: kks
  Date: 2023-10-24
  Time: 오후 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    //Controller --> jsp
    String [] str ={"사과","바나나","포도","귤","오렌지"};
    request.setAttribute("str",str);
%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach var="f" items="${str}">
    ${f}<br>
</c:forEach>
</body>
</html>
