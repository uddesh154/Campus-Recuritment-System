import java.sql.*;
public class Demo
{
	public static void main(String[] args) 
	{
	try
	{
		Class.forName("org.postgresql.Driver");
		Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/uddesh","postgres","postgres");
		Statement stmt=con.createStatement();
		stmt.executeUpdate("create table aa(ano int,aname varchar(20))");
		System.out.println("Table created");
	}
catch(Exception e)
	{
	e.printStackTrace();
	}
	}

}
