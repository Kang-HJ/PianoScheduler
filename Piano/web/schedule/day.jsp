<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//변수 선언
	int time;
	String day;

	day = request.getParameter("tempDay");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="/comm/PianoTop.jsp" %>
<br/><br/>
<center>
	<%=day %>
<table border="1">
	<thead>
		<tr>
			<th>시간</th>
			<th>아이콘</th>
			<th>일정 내용</th>
		</tr>
	</thead>
	<tbody>
<%
		for(time=1; time <= 24; time++){
%>
			<tr>
				<td><%=time%></td>
				<td></td>
				<td></td>
			</tr>
<%
		}
%>
	</tbody>
</table>
</center>

<br/><br/>
<%@include file="/comm/PianoFooter.jsp"%>
</body>
</html>