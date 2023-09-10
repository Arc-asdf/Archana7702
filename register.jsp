<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Course registration</title>

<style>
body {
background-image:url("https://cdn.pixabay.com/photo/2017/10/12/22/17/business-2846221_1280.jpg");
background-size:100%;
background-repeat:no-repeat;
background-position:cover;
font-size:17pt;
color:darkblack;

}
label {
align:"center";
font-size:24pt;
}
</style>

</head>

<body>
<div align=center><br>
<h1> Register Form  </h1>
</div>
<form action="register" method="post" align="center"  ><br>
Name:    <input type="text" name="name"/><br><br>
Email:   <input type="text" name="email"/><br><br>
Phone no:<input type="text" name="phone"/><br><br>
College: <input type="text" name="college"/><br><br>
Course:  <select name="course">
<option>Java</option>
<option>C++</option>
<option>Javascript</option>
<option>Python</option>
<option>other</option>
</select>
<br><br>
<input type="submit" value="Register"/>
<div>
<<ul class="naviright">
<li class="r"><a href="display.jsp" class="padd">
click here to view Details</a></ul></div>





</form>

</body>
</html>