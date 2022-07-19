<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirmation Page</title>
</head>
<body>
	<h1>Grade Added</h1>
	<h4>Name: ${name}</h4>
	<h4>Type: ${type}</h4>
	<h4>Score: ${score}</h4>
	<h4>Total: ${total}</h4>
	
	<a href="/">Return to all grades</a>
</body>
</html>