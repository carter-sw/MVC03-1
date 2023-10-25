<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: kks
  Date: 2023-10-24
  Time: 오후 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
  //Controller --> jsp
  List<String> list =new ArrayList<String>();
  list.add("Python");
  list.add("Java");
  list.add("Node.js");
  list.add("C++");
  list.add("JQuery");
  request.setAttribute("list",list);
%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach var="sw" items="${list}">
${sw} <br>
</c:forEach>

</body>
</html>
