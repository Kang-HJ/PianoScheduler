<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script type="text/javascript">
		function PasswordCheck(){
			var password = document.getElementById("PW").value;
			var passwordCheck = document.getElementById("PWCheck").value;
						
			if(passwordCheck == "") {
				document.getElementById("checkedResult").innerHTML = "";
			} else if(password != passwordCheck) {
				document.getElementById("checkedResult").innerHTML = 
					"<font color = red size = 2pt>Password Mismatch!</font>";
			} else {
				document.getElementById("checkedResult").innerHTML = 
					"<font color = blue size = 2pt>Password Matching!</font>";
			}
			
		}
	</script>
	<title>User Information</title>
</head>
<body>
<%@include file="/comm/PianoTop.jsp"%>
<br/><br/>
<center>
	<div id = "userInfo" style = "height:400px;width:500px;<!-- background-color: #47C83E" -->>
		<table border="1" align="center" width="300px">
			<tr>
				<td>
					<h4 align = "center">kkang.d.89@gmail.com</h4>
				</td> 
			<tr>
			<tr>
				<td>
					<input type = "text" name = "userName" size = "30px" placeholder = "NAME" />
				</td>
			<tr>
			<tr>
				<td>
					<input type = "password" name = "userPW" size = "30px" placeholder = "PW" id = "PW"/>
				</td>
			<tr>
			<tr>
				<td>
					<input type = "password" name = "PWCheck" size = "30px" placeholder = "Confirm PW" id = "PWCheck" onkeyup="PasswordCheck()"/>
				</td>
			<tr>
			<tr>
				<td>
					<b id = "checkedResult"></b>
				</td>
			<tr>
						<tr>
				<td>
					<center>
						<input type="button" value="CANCEL" onclick="location.href='Board.jsp'"/>
						<input type="button" value="SAVE" onclick="location.href='Board.jsp'"/>
					</center>
				</td>
			<tr>
			
		</table>
	</div>
</center>
<br/><br/>
<%@include file="/comm/PianoFooter.jsp"%>
</body>
</html>