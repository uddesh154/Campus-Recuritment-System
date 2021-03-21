<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
try
{
	Class.forName("org.postgresql.Driver");
	Connection c=DriverManager.getConnection("jdbc:postgresql://localhost:5432/uddesh","postgres","postgres");
	Statement stmt=c.createStatement();
	String sql1="create table admin(username text primary key,password text)";
	stmt.executeUpdate(sql1);
	out.println("Table created");
	String sql="insert into admin values('uddesh','uddesh')";
	stmt.executeUpdate(sql);
	String sql2="create table employer(username text primary key,password text,website text)";
	stmt.executeUpdate(sql2);
	out.println("Table created");
	String sql3="create table applicant(firstname varchar(20),lastname(20),gender varchar(20),username text,password text,email text)";
	stmt.executeUpdate(sql3);
	out.println("Table created");
	String sql4="create table job(username text,website text,vacancy int,salary float,area text,location varchar(20),key varchar(20),interviewdate date,interviewtime time,interviewplace text)";
	stmt.executeUpdate(sql4);
	out.println("Table created");
	String sql5="create table interview(susername text,cusername text,interviewdate date,interviewtime time,interviewplace text)";
	stmt.executeUpdate(sql5);
	out.println("Table created");
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>