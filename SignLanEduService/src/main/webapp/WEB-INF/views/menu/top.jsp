<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>
<c:choose>
	<c:when test="${not empty sessionScope.m_id && sessionScope.m_is_admin == 1}">
		<c:set var="str">관리자 페이지 입니다.</c:set>
	</c:when>
	<c:when test="${not empty sessionScope.m_id && sessionScope.m_is_admin != 1}">
		<c:set var='str'>안녕하세요  ${sessionScope.m_id } 님 !</c:set>
	</c:when>
	<c:otherwise>
		<c:set var="str">기본 페이지 입니다.</c:set>
	</c:otherwise>
</c:choose>
<!DOCTYPE html> 
<html>
<head>
  <title>memo</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style type="text/css">
  #grade{
  
   color : orange;
  }  
  </style>
</head>
<body> 
<!--상단메뉴-->
<div class="container">
  <ul class="nav nav-tabs">
    <li class="active"><a href="${root}/">Home</a></li>
        <li class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" href="#">Learn <span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="${root}/learn/select">난이도 선택</a></li>
        <li><a href="${root}/learn/level4/choose">Level 4</a></li>
      </ul>
    </li> 
    
    <li class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" href="#">Quiz <span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="${root}/quiz/select">난이도 선택</a></li>
        <li><a href="${root}/quiz/level4/choose">Level 4</a></li>
      </ul>
    </li>
    <c:choose>
    <c:when test="${empty sessionScope.id }">
    <li><a href="${root}/member/create">회원가입</a></li>
    <li><a href="${root}/member/login">로그인</a></li>
    </c:when>
    <c:otherwise>
    <li><a href="${root}/member/read">나의정보</a></li>
    <li><a href="${root}/member/update">회원수정</a></li>
    <li><a href="${root}/member/logout">로그아웃</a></li>
    </c:otherwise>
    </c:choose> 
    <c:if test="${not empty sessionScope.id && sessionScope.grade == 'A'}">
    <li><a href="${root}/admin/list">회원목록</a></li>
    </c:if>
  </ul>
</div>
</body>
</html>