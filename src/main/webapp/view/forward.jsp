<%@ page import="bit.model.MemberVO" %><%--
  Created by IntelliJ IDEA.
  User: kks
  Date: 2023-10-16
  Time: 오후 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    MemberVO vo = (MemberVO) request.getAttribute("vo");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
Controller 에서 받은 데이터 출력<br>
이름 : <%=vo.getName()%><br>
나이 : <%=vo.getAge()%><br>
이메일 : <%=vo.getEmail()%><br>
</body>
</html>
