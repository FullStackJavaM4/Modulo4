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
	<a href="index.jsp">Menu Principal</a>
	<hr>
	<h2>Listado Clientes (Generar Visita)</h2>	
	<c:if test="${ccmensaje != null}">
	<h3><c:out value="${ccmensaje}"></c:out></h3>
</c:if>
	<table border="1">
		<tr>
			<th>Nombre</th>
			<th>Telefono</th>
			<th>Direccion</th>
			<th colspan="2">Opciones</th>
		</tr>
		<c:forEach items="${listaclientes}" var="cli">
			<tr>
				<td>${cli.getNombreCliente()}</td>
				<td>${cli.getTelefonoCliente()}</td>
				<td>${cli.getDireccionCliente()}</td>
				<td><a href="${pageContext.request.contextPath}/GenerarVisita?id=${cli.getIdCliente()}&cliente=${cli.getNombreCliente()}">Generar Visita</a></td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<hr>
	<h2>Listado de visitas generadas</h2>
	<table border="1">
		<tr>
			<th>Nombre Cliente</th>
			<th>Telefono </th>
			<th>Direccion</th>
			<th>Fecha Visita</th>
			<th>Ciudad</th>
			<th>Empleado Asignado</th>
		</tr>
		<c:forEach items="${listagenerada}" var="lg">
			<tr>
				<td>${lg.getNombrecliente()}</td>
				<td>${lg.getTelefonocliente()}</td>
				<td>${lg.getDireccioncliente()}</td>
				<td>${lg.getFechavisita()}</td>
				<td>${lg.getCiudadvisita()}</td>
				<td>${lg.getNombreempleado()}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>