<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	User user = (User)session.getAttribute("login_user");
%>
<%=user.getId() %>
${login_user.id }

<%=session.getAttribute(name) %>


</body>
</html>