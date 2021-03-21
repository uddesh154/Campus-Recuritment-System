import java.sql.*;
public class CreateDB 
{
	public static void main(String[] args)
	{
		try
		{
	  Class.forName("org.postgresql.Driver");
      Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/uddesh","postgres","postgres");
      Statement stmt1=con.createStatement();
      stmt1.executeUpdate("create table employer(username text primary key,password text,website text");
      //Statement stmt2=con.createStatement();
     // stmt2.executeUpdate("create table job(username text references employer(username),website text,password text,");      
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
