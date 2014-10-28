package book.db;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.InputStream;
import java.sql.*;
import java.util.Properties;
import java.util.ResourceBundle;

import javax.naming.*;


public class DBpool {
	private static Connection conn;
	
	public static Connection GetConnection() throws SQLException,NamingException
	{
		try
		{
			Properties p = new Properties(); 
			InputStream in = DBpool.class.getResourceAsStream("/1.properties");  
            p.load(in);  
            in.close(); 
            String url=p.getProperty("url"); 
		    String user="root";
			String password="11111";
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			conn=DriverManager.getConnection(url,user,password);  
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return conn;
	}

}
