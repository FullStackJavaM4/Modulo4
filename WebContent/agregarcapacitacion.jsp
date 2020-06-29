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
	<c:if test="${ccmensaje != null}">
	<h3><c:out value="${ccmensaje}"></c:out></h3>
</c:if>
	<br>
	<h2>Listado de visitas generadas</h2>
	<table border="1">
		<tr>
			<th>Identificador Visita </th>
			<th>Direccion</th>
			<th>Ciudad </th>
			<th>Fecha Visita</th>
			<th>Identificador Cliente</th>
			<th>Empleado Asignado</th>
		</tr>
		<c:forEach items="${listavisitas}" var="lgv">
			<tr>
				<td>${lgv.getIdVisita()}</td>
				<td>${lgv.getDireccionVisita()}</td>
				<td>${lgv.getCiudadVisita()}</td>
				<td>${lgv.getFechaVisita()}</td>
				<td>${lgv.getIdClienteVisita()}</td>
				<td>${lgv.getIdEmpleadoVisita()}</td>
				<td><a href="${pageContext.request.contextPath}/GeneraCapacitacion?id=${lgv.getIdVisita()}">Generar Capacitación</a></td>
				<td><a href="${pageContext.request.contextPath}/EliminarCapacitacion?id=${lgv.getIdVisita()}">Eliminar Capacitaciónr</a></td>
			</tr>
		</c:forEach>
	</table>
		<!--  <a href="${pageContext.request.contextPath}/ListarCapacitacion?id=${emp.getIdEmpleado()}">Listar Capacitaciónes</a></td>  -->
	
</body>
</html>

