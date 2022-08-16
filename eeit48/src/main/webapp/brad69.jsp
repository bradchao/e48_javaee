<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	var xhttp = new XMLHttpRequest();
	
	
	function callBack(){
		var here = document.getElementById('here');
		here.innerHTML = "OK";
	}	
	
	function test1(){
		xhttp.onload = callBack;
		
		// Send a request
		xhttp.open("GET", "ajax_info.txt");
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
	<div id="here"></div>
	</body>
</html>