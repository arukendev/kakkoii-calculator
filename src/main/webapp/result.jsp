<%@ page import="com.jh.main.Result" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kakkoii Calculator</title>
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
<%
	Result r = (Result) request.getAttribute("r");
%>
	<form action="UnitC">
		<header id="<%=r.gethId()%>">Kakkoii Calculator</header>
		<main>
			<div class="resultBox">
				<div class="result">
					<h1><%=request.getParameter("input")%></h1>
					<h2><%=r.getUnit1()%></h2>
				</div>
				<i class="fas <%=r.getIcon()%>"></i>
				<div class="result">
					<h1><%=r.getResult()%></h1>
					<h2><%=r.getUnit2()%></h2>
				</div>
			</div>
		</main>
		<footer>
			<button id="<%=r.getbId()%>">Back!</button>
		</footer>
	</form>
	<script src="js/main.js"></script>
	<script src="https://kit.fontawesome.com/6478f529f2.js"
		crossorigin="anonymous"></script>
</body>
</html>