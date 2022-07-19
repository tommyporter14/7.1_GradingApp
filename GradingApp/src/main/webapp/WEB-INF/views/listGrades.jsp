<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Grades</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
<h1>Grades</h1>
<c:if test="${grades.isEmpty()}">
	<h3>There are no grades</h3>
</c:if>
<c:if test="${!grades.isEmpty()}">
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
					<td><c:out value="${grade.name}"/></td>
					<td><c:out value="${grade.type}"/></td>
					<td><fmt:formatNumber type="number" pattern=".#" value="${grade.score}"/></td>
					<td><fmt:formatNumber type="number" pattern=".#" value="${grade.total}"/></td>
					<td><a href="/delete?id=${grade.id}" class="button">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</c:if>
	<a href="/addGrade">Add a Grade</a>
</body>
</html>