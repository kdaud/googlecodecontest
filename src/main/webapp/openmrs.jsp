<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
</head>
<body>
<form action="create.html" method="post" onsubmit="return validation();">
<input type="text" name="name" id="name"/><br>
<input type="email" name="email" id="email"/><br>
<input type="password" name="password" id="password"/><br>
<input type="submit" name="submit" value="insert now">

</form>

<div id="kresult" style="color: red"></div>
<script type="text/javascript">

function validation(){
	var name= document.getElementById("name").value;
	var email= document.getElementById("email").value;
	var password= document.getElementById("password").value;
	
	if(name=='' || email=='' || password==''){
		document.getElementById("kresult").innerHTML="All Fields are Required";
		return false;
	}
	else if(name.length <4){
		document.getElementById("kresult").innerHTML="All Fields are Required";
		return false;
	}
	else if(password.length <4){
		document.getElementById("kresult").innerHTML="All Fields are Required";
		return false;
	}
	else{
		return true;
	}
}
</script>
</body>
</html>