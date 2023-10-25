<%@ page import="bit.model.MemberVO" %><%--
  Created by IntelliJ IDEA.
  User: kks
  Date: 2023-10-24
  Time: 오후 11:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    MemberVO vo = new MemberVO();
    vo.setNum(1);
    vo.setId("bitcocom");
    vo.setName("나시원");
    vo.setEmail("6k2hcc");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<TABLE border="1">
    <tr>
        <td>번호</td>
        <td>아이디</td>
        <td>이름</td>
        <td>이메일</td>
    </tr>
    <tr>
        <td>${vo.num}</td>
        <td>${vo.id}</td>
        <td>${vo.name}</td>
        <td>${vo.email}</td>
    </tr>
</TABLE>

</body>
</html>
