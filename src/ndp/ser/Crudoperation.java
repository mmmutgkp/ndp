package ndp.ser;
import java.sql.*;
public class Crudoperation 
{
private static Connection Con=null;
ResultSet rs=null;
PreparedStatement ps=null;
public static Connection createConnection()
{
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ndp","root","root");
	}
	catch(SQLException se)
	{
		System.out.println(se);
	}
	catch(ClassNotFoundException cnf)
	{
		System.out.println(cnf);
	}
	return Con;
}
}