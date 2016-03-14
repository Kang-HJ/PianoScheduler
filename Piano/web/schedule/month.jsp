<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>

<%
//변수 선언
int nowYear = 0;
int nowMonth = 0;
int nowDay = 0;
final int START_DATE = 1;
String param_year;
String param_month;
boolean todayFlag = false; 

Calendar cal = Calendar.getInstance();

nowDay = cal.get(Calendar.DAY_OF_MONTH);
StringBuilder today = new StringBuilder();
today.append(cal.get(Calendar.YEAR)).append(cal.get(Calendar.MONTH)+1);

param_year = request.getParameter("param_year");
param_month = request.getParameter("param_month");
cal.set(Calendar.DAY_OF_MONTH,1);

if(param_year != null){
	 cal.set(Calendar.YEAR,Integer.parseInt(param_year));
}
nowYear = cal.get(Calendar.YEAR);

if(param_month != null){
 cal.set(Calendar.MONTH,Integer.parseInt(param_month)-1);
}
nowMonth = cal.get(Calendar.MONTH)+1;

StringBuilder paramDay = new StringBuilder();
paramDay.append(nowYear).append(nowMonth);

if(today.toString().equals( paramDay.toString())){
 todayFlag = true;
 //out.println("오늘");
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/piano/css/PianoComm.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
th{ 
	width: 100px; border: 1px solid #E1E6F6; 
}

td{ 
	width: 100px; height: 50px; border: 1px solid #E6E6E7; text-align: left; vertical-align: top; padding-left: 3px; padding-top: 2px
}
</style>
<title>Insert title here</title>
</head>
<body>
	<%@include file="/comm/PianoTop.jsp" %>
	<br/><br/>
	<center>
	<div id = "diaryTitle">
	<!-- 손가락나타내기위해서 온클릭보다 a href 를 이용했어 -->
	<a href="month.jsp?param_month=<%=nowMonth-1==0 ? 12:nowMonth-1%>&param_year=<%= nowMonth-1 == 0? nowYear-1:nowYear%>">
		전월
	</a>
	<span id="dayTitle"> <%= nowYear %>년<%=nowMonth %>일 </span>
	<a href="month.jsp?param_month=<%=nowMonth+1==13 ? 1:nowMonth+1%>&param_year=<%= nowMonth+1==13?nowYear+1:nowYear%>">
	 	다음월
	</a>
	<a href="month.jsp">오늘</a>
	</div>
	<div id="diaryContent">
		<table class="dTable">
			<thead>
				<tr>
					<th class="sunTitle">일</th>
					<th>월</th>
					<th>화</th>
					<th>수</th>
					<th>목</th>
					<th>금</th>
					<th class="setTitle">토</th>
				</tr>
			</thead>
			<tbody>
				<tr>
<%
					String dayCss="";
					for(int tempDay=1; ; tempDay++){
						//증가하는 임시날짜를 달력객체 설정
						cal.set(Calendar.DAY_OF_MONTH,tempDay);
						if(tempDay != cal.get(Calendar.DAY_OF_MONTH)){
							for (int i=cal.get(Calendar.DAY_OF_WEEK); i<=7; i++) {
								if(cal.get(Calendar.DAY_OF_WEEK)==1){
									break;	       
								}
%>
								<td class="blank">&nbsp;</td>
<%
							}
							break;
						}//end if
						switch(tempDay){
							case START_DATE:
								int week=cal.get(Calendar.DAY_OF_WEEK);
								for(int blank=1; blank<week;blank++){
%>
									<td class="blank">&nbsp;</td>
<%
								}//end for
						}//end switch
						switch(cal.get (Calendar.DAY_OF_WEEK)){
							case Calendar.SUNDAY :
								dayCss="sun"; break;
							case Calendar.SATURDAY :
								dayCss="sat"; break;
							default :
								dayCss="week";
						}
%>
							<td onclick="location.href='day.jsp?tempDay=<%=tempDay%>'" style="cursor:hand;">
								<span class="<%=dayCss%>"> 
									<%= tempDay %> 
								</span>  
							</td>   
<%
						switch(cal.get(Calendar.DAY_OF_WEEK)){
							case Calendar.SATURDAY :
%> 
								</tr><tr> 
<% 
						}
					}//end for
%>
			</tbody>
		</table>
	</div> 
	</center>
	 
	<br/><br/>
	<%@include file="/comm/PianoFooter.jsp"%>
</body>
</html>