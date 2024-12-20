<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%@ include file="Header.jsp"%>
	<sf:form method="post" action="Login" modelAttribute="form">
		<div align="center">
			<h1 style="color: navy">Login</h1>
			
			<H3 align="center">
				<c:if test="${not empty error}">
					<font color="red">${error}</font>
				</c:if>
			</H3>
			
			<table>
				<tr>
					<th align="left">Login ID :</th>
					<td><sf:input path="login" /></td>
				</tr>
				<tr>
					<th align="left">Password :</th>
					<td><sf:input path="password" /></td>
				</tr>
				<tr>
					<th></th>
					<td><input type="submit" name="operation" value="signIn"></td>
				</tr>
			</table>
		</div>
	</sf:form>


</body>
</html>