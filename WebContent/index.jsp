<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Menu Principal</h1>
	<ol>
		<hr>
		<h4>ÁREA ADMINISTRADOR</h4>
		<li>CU 1
			<a href="${pageContext.request.contextPath}/ListarClientes">Administrar Clientes</a>
		</li>
		<li>CU 2
			<a href="${pageContext.request.contextPath}/ListarEmpleados">Administrar Empleados</a>
		</li>
		<hr></hr>
		<h4>ÁREA EMPLEADO</h4>	
		<li>CU3
			<a href="${pageContext.request.contextPath}/AgregarCapacitacion">Crear capacitación</a>
		</li>
		<li>CU4 
			<a href="${pageContext.request.contextPath}/PlanificarVisita">Planificar Visita</a>
		</li>
		<li>CU5 
			<a href="${pageContext.request.contextPath}/RevisarCliente">Revisar Cliente</a>
		</li>
		<li>CU6 
			<a href="${pageContext.request.contextPath}/ReportarAccidente">Reportar accidente</a>
		</li>		
		<li>CU7 Crear caso de asesoria</li>
		<li>CU13 Ingresar Asesoria</li>
		<li>CU19 Generar reporte cliente</li>
		<li>CU20 Generar reporte global</li>
	</ol>
</body>
</html>
