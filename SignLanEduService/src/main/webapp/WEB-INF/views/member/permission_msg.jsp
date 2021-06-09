<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, width=device-width" />
<title>Member Permission</title>
 
<link href="/css/style.css" rel="Stylesheet" type="text/css">
 
<script type="text/JavaScript"
          src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 
<!-- Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   
   
<script type="text/javascript">
  $(function(){
    $('#btn_retry').on('click', function() {
      location.href="./login"
    });

    $('#btn_home').on('click', function() {
      location.href="${pageContext.request.contextPath}/"
    });    
  });
</script>
 
</head>
<body>
 
<DIV class='title_line'>알림</DIV>
  <DIV class='message'>
    <fieldset class='fieldset_basic'>
      <ul>
        <li class='li_none'>계속 진행하기위해</li>
        <li class='li_none'>로그인후 이용해주세요.</li>
        <li class='li_none'>
          <button type="button" id="btn_retry" class="btn btn-primary btn-md">로그인 다시 시도</button>
          <button type="button" id="btn_home" class="btn btn-primary btn-md">확인</button>
        </li>
       
      </ul>
    </fieldset>    
  </DIV>
 
<jsp:include page="../menu/bottom.jsp" flush='false' />
</body>
 
</html>