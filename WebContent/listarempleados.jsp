<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Listado Empleados</h1>	
	<c:if test="${txt != null}">
	<h3><c:out value="${txt}"></c:out></h3>
</c:if>
	<table>
		<tr>
			<th>Nombre</th>
			<th>Especialidad</th>
		</tr>
		<c:forEach items="${listaempleados}" var="emp">
			<tr>
				<td>${emp.getNombreEmpleado()}</td>
				<td>${emp.getEspecialidadEmpleado()}</td>
				<td><a href="${pageContext.request.contextPath}/EliminarEmpleado?id=${emp.getIdEmpleado()}">Eliminar</a></td>
				<td><a href="${pageContext.request.contextPath}/ModificarEmpleado?id=${emp.getIdEmpleado()}">Modificar</a></td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<a href="index.jsp">Menu Principal</a>
	<a href="${pageContext.request.contextPath}/AgregarEmpleado">Agregar Empleado</a>
</body>
</html>