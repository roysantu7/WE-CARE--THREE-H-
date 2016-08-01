

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db_con.New_con;

/**
 * Servlet implementation class Delete
 */
@WebServlet("/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			
			String pid=request.getParameter("pid");
			
			Connection cn=New_con.getCon();
			String sql="delete from udata where id=?";
			PreparedStatement ps=cn.prepareStatement(sql);
			ps.setString(1, pid);
			ps.execute();
			
			String sql1="delete from commentu where id=?";
			PreparedStatement ps1=cn.prepareStatement(sql1);
			ps1.setString(1, pid);
			ps1.execute();
			String referer = request.getHeader("Referer");
			  response.sendRedirect(referer);
				
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
