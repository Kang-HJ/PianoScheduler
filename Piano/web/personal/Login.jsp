<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <style type="text/css">
#wrapper
{
	width : 1000px;
	margin : 0 auto;
}
</style>
<title>Insert title here</title>
</head>
<body>
<%@include file="/comm/PianoTop.jsp"%>
<div style = border:1px dasged #BDBDBD; width:340px; height:285px; margin:auto;>
 <center style = "padding:200px 0px 0px 0px;">
  <input type = "text" name="loginemail" align="center" placeholder="E-Mail"
  style="width:200px; height:20px; padding:3px 0px 3px 10px;"><br><br>
  <input type = "password" name="loginpwd" align="center" placeholder="PW   "
  style="width:200px; height:20px;  padding:3px 0px 3px 10px;"><br><br>
  <button name="login" type="submit" style="WIDTH: 50pt; HEIGHT: 20pt; border:0 solid #3498DB; color:white; background-color:#3498DB; font-size:9pt ;
  onclick="alert('hello')" >SignIN</button><br><br>
  
  </center>
 </div>
 <center style = "padding:0px 0px 0px 300px;">
 <button name="login"  type="submit"
  style="WIDTH: 50pt; HEIGHT: 20pt; border:0 solid #3498DB; color:#636363; background-color:#E0E0E0; font-size:9pt ; 
  onclick="alert('signup')"align="right" >SignUP</button><br>
  </center>
  <!--
  <form action="http://wsj1326.com.ne.kr" target="_blank">
<input type=submit value="링크된버튼">
</form> 
  -->
  <!-- formaction url...  data destination -->
   <!--  style="WIDTH: 200pt; HEIGHT: 30pt" -->
<br/><br/>
<%@include file="/comm/PianoFooter.jsp"%>
</body>
</html>