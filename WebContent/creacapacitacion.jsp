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
	<h2>Creacion de Capacitacion para cliente</h2>
	<form method="post" action="GenerarCapacitacion">
		<table border="1">
			<tr>
				<td>Fecha Capacitacion</td>
				<td> <input type="text" name="fecha"><br> </td>
			</tr>
			<tr>
				<td>Hora Capacitacion </td>
				<td><input type="text" name="hora"><br></td>
			</tr>
			<tr>
				<td>Numero asistente capacitacion</td>
				<td><input type="number" name="numasistente"><br></td>
			</tr>
			<tr>
				<td>Numero visita</td>
				<td><input type="number" name="idvisita" value="${idvisita}" readonly><br></td>
			</tr>
			<tr>
			<td>
				<input type="submit" value="Enviar Capacitacion">  
			</td>
			</tr>
		</table>
		
		
		
	</form>
		
		
	
			
			
				
			<!-- <td><a href="${pageContext.request.contextPath}/GeneraCapacitacion?id=${lgv.getIdVisita()}">Genera la Capacitación</a></td>   -->
				
	
	</table>
	
	
	
</body>
</html>