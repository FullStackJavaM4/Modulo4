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
<h1>Modificar Empleado</h1>
<c:if test="${txt != null}">
	<h3><c:out value="${txt}"></c:out></h3>
</c:if>

<form method="post" action="ModificarEmpleado">
	Nombre: <input type="text" name="nombre" value="${regemp.getNombreEmpleado()}"/><br/>
	Especialidad: <input type="text" name="especialidad" value="${regemp.getEspecialidadEmpleado()}"/><br/>
	<input type="hidden" name="idempleado" value="${regemp.getIdEmpleado()}"/>
	<input type="submit" value="Modificar" />
</form>
<a href="ListarEmpleados">Volver</a>

</body>
</html>