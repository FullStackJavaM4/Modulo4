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
<h1>Agregar cliente</h1>
<c:if test="${ccmensaje != null}">
	<h3><c:out value="${ccmensaje}"></c:out></h3>
</c:if>

<form method="post" action="GenerarVisita">
	Ciudad: <input type="text" name="nombre" /><br/>
	Direccion: <input type="text" name="telefono" /><br/>
	Fecha de Visita: <input type="text" name="correo" /><br/>
	Observaciones: <input type="text" name="rubro" /><br/>
	Resumen: <input type="text" name="direccion" /><br/>
	Id Empleado <input type="number" name="idempleado" /><br/>
	<input type="number" name="idcliente" value="${idcli}" readonly>
	<input type="submit" value="Generar visita" />
</form>
<a href="PlanificarVisita">Volver</a>

</body>
</html>