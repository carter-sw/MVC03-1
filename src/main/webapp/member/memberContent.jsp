<%@ page import="bit.model.MemberDAO" %>
<%@ page import="bit.model.MemberVO" %><%--
  Created by IntelliJ IDEA.
  User: kks
  Date: 2023-10-04
  Time: 오후 9:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
   //MemberVO vo = (MemberVO) request.getAttribute("vo");
%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<form action="memberUpdate.do" method="post">
    <input type="hidden" name="num" value="${vo.num}">
<table class="table table-bordered">
    <c:if test="${vo}!=null">
    <tr>
        <td colspan="2"> ${vo.name} 회원의 상세보기 </td>
    </tr>
    <tr>
        <td>번호</td>
        <td>${vo.num}</td>
    </tr>
    <tr>
        <td>아이디</td>
        <td>${vo.id}</td>
    </tr>
    <tr>
        <td>비밀번호</td>
        <td>${vo.pass}</td>
    </tr>
    <tr>
        <td>이름</td>
        <td>${vo.name}</td>
    </tr>
    <tr>
        <td>나이</td>
        <td><input type="text" name="age" value="${vo.age}"></td>
    </tr>
    <tr>
        <td>이메일</td>
        <td><input type="text" name="email" value="${vo.email}"></td>
    </tr>
    <tr>
        <td>전화번호</td>
        <td><input type="text" name="phone" value="${vo.phone}"></td>
    </tr>
    </c:if>
    <c:if test="${vo==null}">
    <tr>
        <td>일치하는 회원이 없습니다..</td>
    </tr>
    </c:if>
    <tr>
        <td colspan="2" align="center">
            <input type="submit" value="수정하기" class="btn btn-primary">
            <input type="reset" value="취소" class="btn btn-warning">
            <input type="button" value="리스트" onclick="location.href='/MVC03/memberList.do'" class="btn">
        </td>
    </tr>
</table>
</form>
</body>
</html>
