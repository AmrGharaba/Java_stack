<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<p>
        <c:out value="${name}"/>
    </p>
    <p>
        <c:out value="${itemName}"/>
    </p>
    <p>
        <c:out value="${price}"/>
    </p>
    <p>
        <c:out value="${description}"/>
    </p>
    <p>
        <c:out value="${vendor}"/>
    </p>


</body>
</html>