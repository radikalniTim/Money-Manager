package database;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ConnectionHelper {
	
	private static Connection connection;

	private static Connection connectToDatabase(){		
		try {
			Context initCtx = new InitialContext();
			Context envCtx = (Context) initCtx.lookup("java:comp/env");

			DataSource ds = (DataSource) envCtx.lookup("jdbc/moneymanager");
			connection = ds.getConnection(); 
			
			System.out.println("Connected to datbase.");
		} catch (NamingException | SQLException e) {
			System.out.print("Database connection failed due to:" + e.getMessage());
			e.printStackTrace();
		}
		
		return connection;
	}

	public static Connection getDatabaseConnection() {
		if(connection == null){
			return connectToDatabase();
		}else{
			return connection;
		}
	}
	
	
}
