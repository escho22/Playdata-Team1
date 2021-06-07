<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignEdu Create</title>

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
This is member create page
</body>
</html>