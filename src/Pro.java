

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
 * Servlet implementation class Pro
 */
@WebServlet("/Pro")
public class Pro extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Connection con=New_con.getCon();
			HttpSession session=request.getSession(false);
			String id=(String)session.getAttribute("uid");
			String sql="select role,name from registration where email=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, id);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				String name=rs.getString(2);
				
				String role=rs.getString(1);
				System.out.println(id);
				if(role.equals("medical")){
					
				
				RequestDispatcher rd=request.getRequestDispatcher("profilem.jsp");
				rd.forward(request, response);
				}else if(role.equals("user")){
					
					RequestDispatcher rd=request.getRequestDispatcher("profileu.jsp");
					rd.forward(request, response);
				}else{
					
					
					RequestDispatcher rd=request.getRequestDispatcher("profileo.jsp");
					rd.include(request, response);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
