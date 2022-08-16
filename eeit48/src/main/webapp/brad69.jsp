<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	var xhttp = new XMLHttpRequest();
	
	
	function callBack(){
		if (xhttp.readyState == 4 && xhttp.status == 200){
			var here = document.getElementById('here');
			here.innerHTML = xhttp.responseText;
		}
	}	
	
	function test1(){
		xhttp.onload = callBack;
		xhttp.onreadystatechange = function(){
			if (xhttp.readyState == 4 && xhttp.status == 200){
				console.log("OK");
			}
		};
		
		// Send a request
		xhttp.open("GET", "brad54.jsp");
		xhttp.send();
		
	}
		
</script>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Brad Big Company</title>
	</head>
	<body>
	<input type="button" value="test" onclick="test1()" /><br />
	<div id="s1"></div>
	<div id="s2"></div>
	<div id="s3"></div>
	<div id="s4"></div>
	<div id="here"></div>
	</body>
</html>