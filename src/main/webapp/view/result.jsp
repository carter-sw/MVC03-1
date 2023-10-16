<%--
  Created by IntelliJ IDEA.
  User: kks
  Date: 2023-10-11
  Time: 오전 12:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
//    String data=(String)request.getAttribute("data");
    String data =request.getParameter("data");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
Controller에서 받은 값을 출력 : <%= data%>

</body>
</html>
