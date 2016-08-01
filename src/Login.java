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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			PrintWriter out=response.getWriter();
			String eid=request.getParameter("eid");
			String pass=request.getParameter("pass");
			Connection cn=New_con.getCon();
			String sql="select EMAIL,PASS,NAME,ROLE from registration where EMAIL=? and PASS=?";
			PreparedStatement ps=cn.prepareStatement(sql);
			ps.setString(1, eid);
			ps.setString(2, pass);
			
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				String name=rs.getString(3);
				String id=rs.getString(1);
				String role=rs.getString(4);
				System.out.println(id);
				if(role.equals("medical")){
					HttpSession session=request.getSession();
					session.setAttribute("uid", id);
				
				RequestDispatcher rd=request.getRequestDispatcher("blog.jsp");
				rd.forward(request, response);
				}else if(role.equals("user")){
					HttpSession session=request.getSession();
					session.setAttribute("uid", id);
					
					RequestDispatcher rd=request.getRequestDispatcher("blog.jsp");
					rd.forward(request, response);
				}else{
					HttpSession session=request.getSession();
					session.setAttribute("uid", id);
					out.print("Welcome "+name);
					RequestDispatcher rd=request.getRequestDispatcher("blog.jsp");
					rd.include(request, response);
				}
				
			}
			else{
				
				RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
				rd.forward(request, response);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
