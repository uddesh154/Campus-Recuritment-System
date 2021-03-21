<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Home</title>
</head>
<body bgcolor="pink">
<%
String usr=(String)session.getAttribute("t1");
%>
<font FACE="COPPERPLATE GOTHIC BOLD" SIZE="55" COLOR="RED"><b>Welcome</b>  <%out.println(usr);  %></font><br><br>
<font FACE="COPPERPLATE GOTHIC BOLD" SIZE="5" COLOR="BLUE">Click here for Student information:
<form action="stud_view.jsp" method="post">
<center><input type="submit" value="Student detail"></center>
</form>
</font><br><br>
<font FACE="COPPERPLATE GOTHIC BOLD" SIZE="5" COLOR="BLUE">Click here for Company information:
<form action="comp_view.jsp" method="post">
<center><input type="submit" value="Company detail"></center>
</form><br><br>
<form method="post" action="login_admin.jsp">
<input maxlength="255" size="30" value="LOGOUT" type="submit" >
</form>
</body>
</html>