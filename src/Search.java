

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
 * Servlet implementation class Search
 */
@WebServlet("/Search")
public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			PrintWriter out=response.getWriter();
			String ser=request.getParameter("ser");
			Connection cn=New_con.getCon();
			String sql="select msg,title,name,email,id,pic,sdate,stime from udata where msg like ? or name like ? or title like ? ";
			PreparedStatement ps=cn.prepareStatement(sql);
			ps.setString(1,"%"+ ser + "%");
			ps.setString(2, ser + "%");
			ps.setString(3,"%"+ ser + "%");
			ResultSet rs=ps.executeQuery();
			System.out.println(ser);
			if(rs.next()){
				String id=rs.getString(5);
				HttpSession session=request.getSession();
				session.setAttribute("testid", id);
				RequestDispatcher rd=request.getRequestDispatcher("comments.jsp");
				rd.forward(request, response);
			}
			else{
				
				RequestDispatcher rd=request.getRequestDispatcher("search.jsp");
				out.println("not found");
				rd.include(request, response);
			}
			
			
		}catch(Exception e){
			
		}
		
		
		
	}

}
