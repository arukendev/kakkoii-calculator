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
	<%
	int input = Integer.parseInt(request.getParameter("input"));
	double calculate = (input * 1.8) + 32;
	String result = String.format("%.1f", calculate);
	%>
	<form action="index.html">
		<header id="cHeader">Kakkoii Calculator</header>
		<main>
			<div class="resultBox">
				<div class="result">
					<h1><%=input%></h1>
					<h2>℃</h2>
				</div>
				<i class="fas fa-thermometer-half"></i>
				<div class="result">
					<h1><%=result%></h1>
					<h2>℉</h2>
				</div>
			</div>
		</main>
		<footer>
			<button id="cButton">Back!</button>
		</footer>
	</form>
	<script src="app.js"></script>
	<script src="https://kit.fontawesome.com/6478f529f2.js"
		crossorigin="anonymous"></script>
</body>
</html>
