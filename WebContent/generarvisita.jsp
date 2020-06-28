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
<h1>Generar Visita Cliente ${cliente}</h1>
<c:if test="${ccmensaje != null}">
	<h3><c:out value="${ccmensaje}"></c:out></h3>
</c:if>

<form method="post" action="GenerarVisita">
	Fecha de Visita: <input type="date" name="fecha" required pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}" /><br/>
	Ciudad: <input type="text" name="ciudad" /><br/>
	Direccion: <input type="text" name="direccion" /><br/>
	Observaciones: <input type="text" name="obs" /><br/>
	Resumen: <input type="text" name="resumen" /><br/>
	Empleado: 
	<select name="idempleado">
		<c:forEach items="${listemp}" var="emp">
			<option value="${emp.getIdEmpleado()}">${emp.getNombreEmpleado()} (${emp.getEspecialidadEmpleado()})</option>
		</c:forEach>
	</select>
	<br>
	<!-- 
	 Id Empleado <input type="number" name="idempleado" /><br/>	
	 -->
	<input type="number" name="idcliente" value="${idcli}" readonly><br>
	<input type="submit" value="Generar visita" />
</form>
<a href="PlanificarVisita">Volver</a>

</body>
</html>