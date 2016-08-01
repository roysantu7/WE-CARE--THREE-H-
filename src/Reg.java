
import db_con.*;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Reg
 */
@WebServlet("/Reg")
public class Reg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out=response.getWriter();
			Connection con=New_con.getCon();
			
			
			
			String name=request.getParameter("name");
			String eid=request.getParameter("eid");
			String pass=request.getParameter("pass");
			String loc=request.getParameter("loc");
			String gen=request.getParameter("gender");
			String phn=request.getParameter("phn");
			String deg=request.getParameter("deg");
			String age=request.getParameter("age");
			String estb=request.getParameter("estb");
			String typ=request.getParameter("typ");
			String role=request.getParameter("role");
			
			System.out.println(role+"&"+name+"&"+eid+"&"+pass+"&"+loc+"&"+gen+"&"+phn+"&"+deg+"&"+age+"&"+estb+"&"+typ+"***");
			
			String sql="insert into registration values (?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, role);
			ps.setString(2, name );
			ps.setString(3, eid );
			ps.setString(4, pass );
			ps.setString(5, loc);
			ps.setString(6, gen);
			ps.setString(7, phn );
			ps.setString(8, deg );
			ps.setString(9, age );
			ps.setString(10, estb);
			ps.setString(11, typ);
			ps.execute();
			
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			out.println("Successfully Registered");
			rd.include(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
