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
      <header id="mHeader" onmousemove="mm(event)">Kakkoii Calculator</header>
      <main>
        <% int input = Integer.parseInt(request.getParameter("input")); double
        calculate = input * 0.3025; String result = String.format("%.1f",
        calculate); %>
        <div class="resultBox">
          <div class="result">
            <h1><%=input%></h1>
            <h2>m<sup>2</sup></h2>
          </div>
          <i class="fas fa-ruler-combined"></i>
          <div class="result">
            <h1><%=result%></h1>
            <h2>pyeong</h2>
          </div>
        </div>
      </main>
      <footer>
        <button id="mButton">Back</button>
      </footer>
    </form>
    <script type="text/javascript">
      function mm(event) {
        const header = document.getElementById("mHeader");
        const x = event.offsetX;
        const y = event.offsetY;
        header.style.cssText = "background-image: radial-gradient("
            +"circle farthest-corner at " +x + "px "+y+"px,#1e3799 0%, #60a3bc 100%);";
      }
    </script>
    <script
      src="https://kit.fontawesome.com/6478f529f2.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
