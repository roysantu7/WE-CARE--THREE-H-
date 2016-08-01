

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
 * Servlet implementation class Upload
 */
@WebServlet("/Upload")
public class Upload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			PrintWriter out=response.getWriter();
			String eid=request.getParameter("eid");
			String pass=request.getParameter("pass");
			String name=request.getParameter("name");
			String phn=request.getParameter("mob");
			String loc=request.getParameter("loc");
			String age=request.getParameter("age");
			String gen=request.getParameter("gen");
			String deg=request.getParameter("deg");
			String typ=request.getParameter("typ");
			String estb=request.getParameter("estb");
			Connection cn=New_con.getCon();
			String sql="select EMAIL,PASS,NAME,ROLE from registration where EMAIL=?";
			PreparedStatement ps=cn.prepareStatement(sql);
			ps.setString(1, eid);
			
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				String id=rs.getString(1);
				String role=rs.getString(4);
				System.out.println("your role is: "+role);
				if(role.equals("medical")){
					String sql1="update registration set name=?,pass=?,mob=?,loc=?,gender=?,degree=? where email=?";
					PreparedStatement ps1=cn.prepareStatement(sql1);
					ps1.setString(7, eid);
					ps1.setString(1, name);
					ps1.setString(2, pass);
					ps1.setString(3, phn);
					ps1.setString(4, loc );
					ps1.setString(5, gen );
					ps1.setString(6, deg );
					ps1.execute();
					HttpSession session=request.getSession();
					session.setAttribute("uid", id);
				
				RequestDispatcher rd=request.getRequestDispatcher("profilem.jsp");
				rd.forward(request, response);
				}else if(role.equals("user")){
					String sql1="update registration set name=?,pass=?,mob=?,loc=?,gender=?,age=? where email=?";
					PreparedStatement ps1=cn.prepareStatement(sql1);
					ps1.setString(7, eid);
					ps1.setString(1, name);
					ps1.setString(2, pass);
					ps1.setString(3, phn);
					ps1.setString(4, loc );
					ps1.setString(5, gen );
					ps1.setString(6, age );
					ps1.execute();
					
					RequestDispatcher rd=request.getRequestDispatcher("profileu.jsp");
					rd.forward(request, response);
				}else{
					String sql1="update registration set name=?,pass=?,mob=?,loc=?,typ=?,estb=? where email=?";
					PreparedStatement ps1=cn.prepareStatement(sql1);
					ps1.setString(7, eid);
					ps1.setString(1, name);
					ps1.setString(2, pass);
					ps1.setString(3, phn);
					ps1.setString(4, loc );
					ps1.setString(5, typ );
					ps1.setString(6, estb );
					ps1.execute();
					
					RequestDispatcher rd=request.getRequestDispatcher("profileo.jsp");
					rd.forward(request, response);
				}
				
			}
			else{
				RequestDispatcher rd=request.getRequestDispatcher("ajaxtest.jsp");
				out.write("Wrong id or password");
				rd.include(request, response);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
