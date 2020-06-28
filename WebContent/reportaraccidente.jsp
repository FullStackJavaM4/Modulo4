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
	<h2>Reportar Accidente</h2>	
	<c:if test="${ccmensaje != null}">
		<h3><c:out value="${ccmensaje}"></c:out></h3>
	</c:if>
	
	<c:if test="${idtrue == null}">
		<form action="ReportarAccidente" method="post">
		Ingrese Id Cliente 
		<input type="number" name="idcli" required>
		<input type="submit" value="Reisar">
		</form>
	</c:if>
	
	<c:if test="${idtrue == false}">
		<form action="ReportarAccidente" method="post">
		Ingrese Id Cliente 
		<input type="number" name="idcli" required>
		<input type="submit" value="Reisar">
		</form>
	</c:if>
	
	<c:if test="${idtrue != null}">
		<c:if test="${idtrue == true }">
			<form action="AgregarAccidente" method="post">
			<table>
				<tr>
					<td>Fecha Accidente</td>
					<td><input type="text" name="fechaaccidente"></td>
				</tr>
				<tr>
					<td>Hora Accidente</td>
					<td><input type="text" name="horaaccidente"></td>
				</tr>
				<tr>
					<td>Suceso Accidente</td>
					<td><input type="text" name="sucesoaccidente"></td>
				</tr>
				<tr>
					<td>Lugar Accidente</td>
					<td><input type="text" name="lugaraccidente"></td>
				</tr>
				<tr>
					<td>
						<input type="text" value="${datocli.getIdCliente()}" readonly>
						<input type="submit" value="ingresar accidente">
					</td>
				</tr>
			</table>
			</form>
		</c:if>
	</c:if>
	
	
</body>
</html>