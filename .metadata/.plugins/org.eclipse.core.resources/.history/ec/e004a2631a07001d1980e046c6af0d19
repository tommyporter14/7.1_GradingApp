<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>grades</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
	<table class=table>
		<thead>
			<tr>
				<th>Name</th>
				<th>Type</th>
				<th>Score</th>
				<th>Total</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="grade" items="${grades}">
				<tr>
					<td><a href="grades/detail?id=${grades.id}">${grades.name}</a></td>
					<td>${type}</td>
					<td>${score}</td>
					<td>${total}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>