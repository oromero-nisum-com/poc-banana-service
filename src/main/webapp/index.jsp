<html>
<head>
<meta charset="UTF-8">
<title>Welcome to our POC for BANANA</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery-1.11.3.js"></script>
<script>
$(document).ready(function() {
	var username = "username";
	var user = document.cookie.substring(username.length+1, document.cookie.length);
	if (user != ""){
		$("#name").text(user);
	}else{
		document.cookie="username=Osman R";
	}
});

</script>
</head>
<body>

	<h1>
		Hi <span id="name">undefined!</span>
	</h1>
	<h2>Welcome to our POC for BANANA</h2>

	This is the landing page for the BANANA POCs
	<ul>
		<li>Product price service <a
			href="http://localhost:8080/poc-banana-service/productService/products/">click</a></li>
		<li>Cookies enabled ("Osman R" value hardcoded for username)</li>
	</ul>


</body>
</html>