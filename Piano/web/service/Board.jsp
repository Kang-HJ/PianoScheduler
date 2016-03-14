<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<% response.setContentType("text/html; charset=UTF-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">

</script>
<title>Board</title>
</head>
<body>
<%@include file="/comm/PianoTop.jsp"%>
<br/><br/>
<center>
<%System.out.println("reload"); %>
	<div id = "board" style="margin-top: 50px">
		<form method = "post" action="Board.jsp">
			<input type="submit" name = "buttonType" value = "Notice">
			<input type="submit" name = "buttonType" value = "Q & A">
		</form>
		<table border="1">
			<tr>
				<td width="50px"  style="text-align: center">
					<b><font style="border: 2pt">NO.</font></b>
				</td>
				<td width="150px" style="text-align: center">
					<b><font style="border: 2pt">Classification</font></b>
				</td>
				<td width="300px" style="text-align: center">
					<b><font style="border: 2pt">Title</font></b>
				</td>
				<td width="100px" style="text-align: center">
					<b><font style="border: 2pt">Date</font></b>
				</td>
			</tr>
			<tr>
			<% 
			String buttonType = request.getParameter("buttonType");
			
			if(buttonType == null) {
				System.out.println("nulllll");
				buttonType = "Notice";
			}
			System.out.println(buttonType);
				if(buttonType.equals("Notice")){
					System.out.println(buttonType + "---1");
			%> 
				<td width="50px"  style="text-align: center">
					<b><font style="border: 2pt">1</font></b>
				</td>
				<td width="150px" style="text-align: center">
					<b><font style="border: 2pt">2</font></b>
				</td>
				<td width="300px" style="text-align: center">
					<b><font style="border: 2pt">3</font></b>
				</td>
				<td width="100px" style="text-align: center">
					<b><font style="border: 2pt">4</font></b>
				</td>
			<%
			} else {
				System.out.println(buttonType + "---2");
			%>
			<td width="50px"  style="text-align: center">
					<b><font style="border: 2pt">sdfsdf</font></b>
				</td>
				<td width="150px" style="text-align: center">
					<b><font style="border: 2pt">64652</font></b>
				</td>
				<td width="300px" style="text-align: center">
					<b><font style="border: 2pt">sdfsdf3</font></b>
				</td>
				<td width="100px" style="text-align: center">
					<b><font style="border: 2pt">sdfsdf4</font></b>
				</td>
			<%
			}
			%>
				
			</tr>
		</table>
	</div>
</center>
<br/><br/>
<%@include file="/comm/PianoFooter.jsp"%>
</body>
</html>