

import java.io.IOException;
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
 * Servlet implementation class Post3
 */
@WebServlet("/Post3")
public class Post3 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			Connection con=New_con.getCon();
			int unid=(int)(Math.random()*10000);
			String rid="3H" +unid+"EVNT";
			String pname=request.getParameter("pname");
			String dt= request.getParameter("dat");
			String tm= request.getParameter("tim");
			String nam= request.getParameter("nam");
			String ven= request.getParameter("ven");
			String loc= request.getParameter("loc");
			String guest= request.getParameter("sg");
			String comm= request.getParameter("comm");
			
			HttpSession session=request.getSession(false);
			String id=(String)session.getAttribute("uid");
			
			
					PreparedStatement ps=con.prepareStatement("insert into event values(?,?,?,?,?,?,?,?,?,?)");
					System.out.println("test :");
					
					ps.setString(1,nam);
					ps.setString(2, ven);
					ps.setString(3,loc);
					ps.setString(4,dt);
					ps.setString(5, tm);
					ps.setString(6,guest);
					ps.setString(7,comm);
					ps.setString(8,rid);
					ps.setString(9,id);
					ps.setString(10,pname);
					
					
					ps.execute();				
					
				
					String referer = request.getHeader("Referer");
					  response.sendRedirect(referer);
			
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
