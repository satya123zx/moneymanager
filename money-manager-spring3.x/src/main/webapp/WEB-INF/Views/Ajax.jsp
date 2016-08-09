<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>    
<!-- jQuery -->
<script src="../vendors/jquery/dist/jquery.min.js"></script>  
</head>
<body>
<div><p id = "demo"></p></div>
<button type="button" onclick="LoadAjax()"> send Request</button>
<script>
/* 
Ajax method call demo
*/
/* function LoadAjax(){
	alert("inside LoadAjax")
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange = function(){
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200 ){
			document.getElementById("demo").inn
			alert(xmlhttp.responseText);
		}}
		xmlhttp.open("GET", "AjaxDemo",true)
		xmlhttp.send();
	
} */
function LoadAjax(){
$.ajax({
	type	:	"POST",
	url 	:	"AjaxDemo",
	data	:	{
			username	:	"satya",
			password	:	"mohapatra"
			},
	success	:	function(response){
			alert(response);
	}
	
});
}

</script>

</body>
</html>