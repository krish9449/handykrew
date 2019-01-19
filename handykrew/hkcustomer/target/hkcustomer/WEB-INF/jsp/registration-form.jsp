<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Resistration form</title>
	</head>
	<body style="font-family: consolas; font-size: 30px; color: green;">
		<form:form modelAttribute="customerRegistrationForm">
			
			<span style="color: red;">
				<form:errors path="*"/>
			</span><br/>
			
			email address : <form:input path="emailAddress" /><br>
			password :<form:input path="password" /><br>
			confirmPassword :<form:input path="confirmPassword" /><br>
			firstName :<form:input path="firstName" /><br>
			lastName :<form:input path="lastName" /><br>
			mobile :<form:input path="mobile" /><br>
			addressLine1 :<form:input path="addressLine1" /><br>
			addressLine2 :<form:input path="addressLine2" /><br>
			city :<form:select path="city">
					  <c:forEach items="${cities}" var="city">
					  		<form:option value="${city.cityNo}">${city.cityName}</form:option>
					  </c:forEach>
			   	  </form:select><br>
			state :<form:select path="state">
						<c:forEach items="${states}" var="state">
					  		<form:option value="${state.stateNo}">${state.stateName}</form:option>
					  </c:forEach>
				   </form:select><br>
			<input type="submit" value="register">
		</form:form>
	</body>
</html>