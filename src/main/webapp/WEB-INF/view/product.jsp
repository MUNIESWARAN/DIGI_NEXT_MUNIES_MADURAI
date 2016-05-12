 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Product Registration Form</title>
</head>


<body>
<centre>
<h3>Product Registration Page</h3>

<form:form method="POST" action="saveproduct">
<table>
<tr> <td> <form:label path="pname">Product Name:</form:label></td><td><form:input path="pname" value="${product.pname}" /></td></tr>
<tr> <td> <form:label path="brand">Brand:</form:label></td><td><form:input path="brand" value="${product.brand}" /></td></tr>
<tr> <td> <form:label path="ptype">Product Type:</form:label></td><td><form:input path="ptype" value="${product.ptype}" /></td></tr>
<tr> <td> <form:label path="price">Price:</form:label></td><td><form:input path="price" value="${product.price}" /></td></tr>
 <tr><td></td><td><input type="submit" value="SAVE"/></td></tr>
</table>

</form:form>



</centre>
</body>
</html>