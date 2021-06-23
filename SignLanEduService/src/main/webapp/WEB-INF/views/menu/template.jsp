<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title><tiles:getAsString name="title"/></title>
</head>
<body>
    <tiles:insertAttribute name="header"></tiles:insertAttribute> 
    <tiles:insertAttribute name="body"></tiles:insertAttribute> 
    <tiles:insertAttribute name="footer"></tiles:insertAttribute>
</body>
</html>