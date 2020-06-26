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
<h1>Modificar cliente</h1>
<c:if test="${txt != null}">
	<h3><c:out value="${txt}"></c:out></h3>
</c:if>

<form method="post" action="ModificarCliente">
	Nombre: <input type="text" name="nombre" value="${regcli.getNombreCliente()}"/><br/>
	Telefono: <input type="text" name="telefono" value="${regcli.getTelefonoCliente()}"/><br/>
	Correo electrónico: <input type="text" name="correo" value="${regcli.getEmailCliente()}"/><br/>
	Rubro: <input type="text" name="rubro" value="${regcli.getRubroCliente()}"/><br/>
	Dirección: <input type="text" name="direccion" value="${regcli.getDireccionCliente()}"/><br/>
	<input type="hidden" name="idcliente" value="${regcli.getIdCliente()}"/>
	<input type="submit" value="Modificar" />
</form>
<a href="ListarClientes">Volver</a>

</body>
</html>