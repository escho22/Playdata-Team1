<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>SignEdu Create result</title>
</head>
<body>
 
  <DIV class='title_line'>
    회원
  </DIV>

  <ASIDE class="aside_right">
    <A href="javascript:location.reload();">새로고침</A>
    <span class='menu_divide' >│</span> 
    <A href='./create'>회원 가입</A>
    <span class='menu_divide' >│</span> 
    <A href='./list'>목록</A>
  </ASIDE> 

  <div class='menu_line'></div>
 
<DIV class='message'>
  <fieldset class='fieldset_basic'>
    <UL>
      <c:choose>
        <c:when test="${param.cnt == 1 }">
          <LI class='li_none'>회원가입이 완료되었습니다.</LI>
        </c:when>
        <c:otherwise>
          <LI class='li_none'>회원 가입에 실패했습니다.</LI>
          <LI class='li_none'>다시한번 시도해주세요.</LI>
          <LI class='li_none'>계속 실패시 ☏ 000-0000-0000 문의해주세요.</LI>
        </c:otherwise>
      </c:choose>
      <LI class='li_none'>
        <br>
        <button type='button' onclick="location.href='<%=request.getContextPath()%>/member/create'">회원 등록</button>
        <button type='button' onclick="location.href='<%=request.getContextPath()%>/'">Home</button>
      </LI>
     </UL>
  </fieldset>
 
</DIV>
</body>
</html>