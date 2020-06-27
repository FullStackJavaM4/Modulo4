<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Agregar empleado</h1>
<c:if test="${ccmensaje != null}">
	<h3><c:out value="${ccmensaje}"></c:out></h3>
</c:if>

<form method="post" action="AgregarEmpleado">
	Nombre: <input type="text" name="nombre" /><br/>
	Especialidad: <input type="text" name="especialidad" /><br/>
	<input type="submit" value="Agregar Empleado" />
</form>
<a href="ListarEmpleados">Volver</a>

</body>
</html>