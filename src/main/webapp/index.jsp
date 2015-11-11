<html>
<head>
<meta charset="UTF-8">
<title>BANANA POC STORE</title>
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
    $("#maoButton").click(function() {
        $.ajax({
            url: 'http://192.168.7.36:8080/poc-banana-service/productService/product/1',
            dataType: 'json',
            success: function(data) {
            	$("#mao_price").text(data.sellingPrice);         	
              //  $("#results").append('all good');
                //alert(JSON.stringify(data));	
            },
             error: function() {
                $("#results").append("error");
                alert('error');
            }
        });
    });
	
});


</script>
</head>
<body>

<div id="header" style="border: 1px solid gray; background:black; height:30px">
	<div id="user_details" style="float:right;color:white;margin-right:10px;margin-top:6px;">Hi <span id="name" style="font-weight: bold;">undefined!</span></div>
</div>
<div id="body" style="font-family:arial;">
	<div id="item" style="position:relative;margin-left:50px;margin-top:50px;">
		<div id="item_photos" style="width:600px;position:absolute;">
			<h1>Boys Classic Tees</h1>
			<img src="${pageContext.request.contextPath}/imgs/tshirt.jpg" />
		</div>
		<div id="item_description" style="position:static; margin-left:600px;margin-right:50px;">
			<div id="item_description_title" style="font-weight:bold; font-size:20;position:left;">Boys Classic Tees</div>
			<div id="item_description_price" style="font-weight:bold; font-size:20;position:left;">$49.90</div>
			<div id="item_description_colors" style="font-weight:bold; font-size:14;position:left;">
				<ul style="display: inline;list-style-type: none;"><li>black</li><li>white</li><li>gray</li><li>charcoal</li></ul>
			</div>
			<div id="item_description_text">
				<p>
					PRODUCT DESCRIPTION  
					DESCRIPTION
					Henley shirt in cotton jersey with buttons at front. Long sleeves with roll-up tab and button.
					DETAILS
					100% cotton. Machine wash warm
					Imported
					Art.No. 35-2349
					<br/><br/>
					Lorem ipsum dolor sit amet, elit augue prodesset quo ex, vel ut primis habemus cotidieque, cu est quaeque appareat. Eos mutat verear at, ius denique recteque persequeris ut. Sit sale saperet theophrastus te, tantas fuisset consequat cum ut, exerci propriae cu duo. Te ferri repudiandae nec, et labores alienum deserunt vix.
					<br/><br/>
					Cookies enabled ("Osman R" value hardcoded for username)
				</p>
			</div>
			<div id="item_description_mao" style="">
				<button> BUY NOW </button>
			</div>
			<div id="item_description_mao" style="border: 1px dashed red;margin-top:60px;">
				<b>Lucky you !</b><br/>
				<b>Make an Offer</b> is now enabled for you for this particular item<br/>
				<div id="item_description_mao_price" style="font-size:24px;font-weight:bold;color:gray;">Current price: $<span id="mao_price">49.90</span></div>				
				<input type="text" style="font-size:24px;font-weight:bold;color:red;"/> <button id="maoButton" style="background:red; color:yellow;font-size:24px;font-weight:bold;"> Make and Offer !</button>
			</div>
		</div>
	</div>
</div>
	
	

	


</body>
</html>