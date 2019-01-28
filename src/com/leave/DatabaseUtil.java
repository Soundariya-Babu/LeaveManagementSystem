package com.leave;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseUtil {
	public static Connection getConnection()

	{

		Connection con=null;

		try {

		    Class.forName("com.mysql.jdbc.Driver");

		    con=DriverManager.getConnection(DatabaseConstant.Url,DatabaseConstant.Username,DatabaseConstant.Password);

		    }

		catch(ClassNotFoundException | SQLException e)

		{

			e.printStackTrace();

		}

		return con;

	}



	public static void closeConnection(Connection con)

	{

		if(con!=null)

		{

	      try {

			con.close();

		     }

		  catch(SQLException e)

		  {

			e.printStackTrace();

		  }

		}

	}
}
