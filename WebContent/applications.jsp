<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="emp_home.jsp">
<%
try{
	String c1=(String)session.getAttribute("t1");
	Class.forName("org.postgresql.Driver");
	Connection c=DriverManager.getConnection("jdbc:postgresql://localhost:5432/uddesh","postgres","postgres");
	Statement s =c.createStatement();
	String sql ="select * from applicant";
	ResultSet rs=s.executeQuery(sql);
	while(rs.next())
	{		
	%>	
<table border='2'>
<th>User Name</th><th>First Name</th><th>Last Name</th><th>Gender</th><th>Email</th>
<tr>
<td><%out.println(rs.getString(4)); %></td>
<td><%out.println(rs.getString(1)); %></td>
<td><%out.println(rs.getString(2)); %></td>
<td><%out.println(rs.getString(3)); %></td>
<td><%out.println(rs.getString(6)); %></td>
</table><br>	
	<%
	}
	
}catch(Exception e ){out.println(e);
}
%>
<input type="submit" value="BACK">
</form>
</body>
</html>