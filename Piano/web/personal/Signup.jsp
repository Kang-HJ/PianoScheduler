<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="/comm/PianoTop.jsp"%>
<br/><br/>
 <!-- <div id = "wrapper">-->
 <div style = border:1px dasged #BDBDBD; width:340px; height:285px; margin:auto;>
 <center style = "padding:200px 0px 0px 0px;">
  <input type = "text" name="loginemail" align="center" placeholder="E-Mail"
  style="width:200px; height:20px; padding:3px 0px 3px 10px;">

  <button name="login" type="submit" style="WIDTH: 60pt; HEIGHT: 20pt; border:0 solid #3498DB; color:white; background-color:#3498DB; font-size:9pt ;
  onclick="alert('hello')" >인증</button>
  
  <br><br>
  <input type = "password" name="loginpwd" align="center" placeholder="Certification Number"
  style="width:200px; height:20px;  padding:3px 0px 3px 10px;"><br>

  <tt  margin:left style = "padding: 0px 100px 0px 0px;color:#C03A2C">Invalid number<tt><br>


   <input type = "password" name="loginpwd" align="center" placeholder="Name"
  style="width:200px; height:20px;  padding:3px 0px 3px 10px;"><br><br>
   <input type = "password" name="loginpwd" align="center" placeholder="PW   "
  style="width:200px; height:20px;  padding:3px 0px 3px 10px;"><br><br><br>
  <button name="login" type="submit" style="WIDTH: 110pt; HEIGHT: 20pt; border:0 solid #3498DB; color:white; background-color:#3498DB; font-size:9pt ;
  onclick="alert('hello')" >Create Account</button><br><br>
  
  </center>
 </div>

  
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