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
	<a href="ListarEmpleados">Volver</a>
	<hr>
	<h1>Agregar empleado</h1>
	<c:if test="${ccmensaje != null}">
		<h3><c:out value="${ccmensaje}"></c:out></h3>
	</c:if>
	
	<form method="post" action="AgregarEmpleado">
		<table>
			<tr>
				<td>
					Nombre: 
				</td>
				<td>
					<input type="text" name="nombre"><br>
				</td>
			</tr>
			<tr>
				<td>
					Especialidad: 
				</td>
				<td>
					<input type="text" name="especialidad"><br>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="Agregar Empleado">
				</td>
			</tr>
		</table>
	</form>

</body>
</html>