<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Vehicle</title>
</head>
<body>
	<h2>List Vehicle</h2>

	<table border="1">

		<tr>
			<th>ParkingCode</th>
			<th>VehicleNo</th>
			<th>VehicleType</th>
		</tr>
		<c:forEach items="${listVehicle}" var="v">
			<tr>
				<td>${v.parkingCode}</td>
				<td>${v.vehicleNo}</td>
				<td>${v.vehicleType}</td>
			</tr>
		</c:forEach>


	</table>
</body>
</html>