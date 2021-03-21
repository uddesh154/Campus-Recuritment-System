<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" language="javascript">
function chk_onclick()
{
	var myform=document.pform;
	if(myform.username.value=="" || myform.passwd.value=="")
	{
		alert("PLEASE COMPLETE ALL THE SPECIFICATION");
		if(myform.username.value=="")
		{
			myform.username.focus();
		}
		else
		{
			myform.passwd.focus();
		}
	}
	
}
	  </script>
</head>
<body bgcolor="pink">
<font face="verdana,arial" size=25 color="red"><center><B>COMPANY LOGIN</B></center></font><br><br>
<font face="verdana,arial" size=5 color="blue"><b>Enter your login and password</b></font><br><br>
<form method="post" action="login_e.jsp" name=pform>
<center>
<font face="verdana,arial" size=2>USERNAME:
<input type="text" name="username"><br><br>
<font face="verdana,arial" size=2>PASSWORD:
<input type="password" name="passwd"><br><br>
<input type="submit" value="SUBMIT" name=chkform onclick="chk_onclick()"><br><br>
<tr><td colspan=2><font face="verdana,arial" size=-1>Not member yet? Click <a 
href="emp_reg.jsp">here</a> to register.</font>
</center>
</form>
<form method="post" action="home1.jsp">
<input maxlength="255" size="30" value="HOME" type="submit" >
</form>
<%
String k1=request.getParameter("username");
session.setAttribute("x1",k1);
if(k1!=null){
try{
	
	String k2=request.getParameter("passwd");
	Class.forName("org.postgresql.Driver");
	Connection c=DriverManager.getConnection("jdbc:postgresql://localhost:5432/uddesh","postgres","postgres");
	Statement s =c.createStatement();
	String sql = "select * from employer where username='"+k1+"'";// and password='"+k2+"'";
	ResultSet rs=s.executeQuery(sql);
	rs.next();
	String pass=rs.getString(2);
	if(k2.equals(pass))
	{
		 %>
		  <jsp:forward page="emp_home.jsp" />
	<%}
	else
	{
	 %><script type="text/javascript" language="javascript">
		  alert("Your ID and Password do not match.Enter a valid Login Id and Password.");
		  </script>
	 <%}
	
	}catch(Exception e) 
	{
	%><script type="text/javascript" language="javascript">
			alert("INVALID USER ID");
			</script>
	<%}
}
%>
</body>
</html>