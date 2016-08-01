package db_con;

import java.sql.*;

public class New_con {
	static String driver ="com.ibm.db2.jcc.DB2Driver";
	static String url="jdbc:db2://localhost:50000/NEWDATA";
	static String user="roysantu7";
	static String pass="s@n22n@s";
	static Connection c=null;
	
	public static Connection getCon() {
		try{
			Class.forName(driver);
			c=DriverManager.getConnection(url,user,pass);
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return c;
	}

}
