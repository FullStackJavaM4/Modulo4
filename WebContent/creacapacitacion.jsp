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
			<th>Fecha Capacitacion</th>
			<th>Hora Capacitacion </th>
			<th>Numero asistencia capacitacion</th>
			<th>Identificador Cliente</th>
			<th>Id visita capacitacion </th>
		</tr>
		<c:forEach items="${nn}" var="lgv">
			<tr>
				<td>${lgv.getFechaCapacitacion()}</td>
				
			<!-- <td><a href="${pageContext.request.contextPath}/GeneraCapacitacion?id=${lgv.getIdVisita()}">Genera la Capacitación</a></td>   -->
				
		</c:forEach>
	</table>
	
	
	
</body>
</html>