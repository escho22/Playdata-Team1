<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>SignEdu Create result</title>
</head>
<body>

	<DIV class='title_line'>단어</DIV>

	<div class='menu_line'></div>

	<DIV class='message'>
		<fieldset class='fieldset_basic'>
			<UL>
				<c:choose>
					<c:when test="${param.cnt == 1 }">
						<LI class='li_none'>단어 '${param.name }' 생성이 완료되었습니다.</LI>
					</c:when>
					<c:otherwise>
						<LI class='li_none'>단어생성에 실패했습니다.</LI>
						<LI class='li_none'>다시한번 시도해주세요.</LI>
						<LI class='li_none'>계속 실패시 ☏ 000-0000-0000 문의해주세요.</LI>
					</c:otherwise>
				</c:choose>
				<LI class='li_none'><br>
					<button type='button' onclick="history.back();"
						class="btn btn-info">재시도</button>
					<button type='button'
						onclick="location.href='/admin/control/choose'"
						class="btn btn-info">관리페이지</button></LI>
			</UL>
		</fieldset>

	</DIV>
</body>
</html>