<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Kakkoii Calculator</title>
<link rel="stylesheet" href="style.css" />
</head>
<body>
	<form action="index.html">
		<header id="cmHeader">Kakkoii Calculator</header>
		<main>
			<%
			int input = Integer.parseInt(request.getParameter("input"));
			double calculate = input * 0.393701;
			String result = String.format("%.1f", calculate);
			%>
			<div class="resultBox">
				<div class="result">
					<h1><%=input%></h1>
					<h2>cm</h2>
				</div>
				<i class="fas fa-ruler"></i>
				<div class="result">
					<h1><%=result%></h1>
					<h2>inch</h2>
				</div>
			</div>
		</main>
		<footer>
			<button id="cmButton">Back!</button>
		</footer>
	</form>
	<script src="app.js"></script>
	<script src="https://kit.fontawesome.com/6478f529f2.js"
		crossorigin="anonymous"></script>
</body>
</html>
