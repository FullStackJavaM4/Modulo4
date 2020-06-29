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
	<a href="ListarClientes">Volver</a>
	<hr>
	<h1>Agregar cliente</h1>
	<c:if test="${ccmensaje != null}">
		<h3><c:out value="${ccmensaje}"></c:out></h3>
	</c:if>
	
	<form method="post" action="AgregarCliente">
	<table>
		<tr>
			<td>
				Nombre
			</td>
			<td>
				<input type="text" name="nombre" /><br/>
			</td>
		</tr>
		<tr>
			<td>
				Telefono: 
			</td>
			<td>
				<input type="text" name="telefono" /><br/>						
			</td>
		</tr>
		<tr>
			<td>
				Correo electrónico: 
			</td>
			<td>
				<input type="text" name="correo" /><br/>
			</td>
		</tr>		
		<tr>
			<td>
				Rubro: 
			</td>
			<td>
				<input type="text" name="rubro" /><br/>
			</td>
		</tr>
		<tr>
			<td>
				Dirección: 
			</td>
			<td>
				<input type="text" name="direccion" /><br/>
			</td>
		</tr>
		<tr>
			<td>
				<input type="submit" value="Agregar cliente" />
			</td>
		</tr>
	</table>
	</form>

</body>
</html>