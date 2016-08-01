

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
 * Servlet implementation class Comment
 */
@WebServlet("/Comment")
public class Comment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			PrintWriter out=response.getWriter();
			String dt= request.getParameter("dt");
			String tm= request.getParameter("tm");
			String pid=request.getParameter("id1");
			String comm=request.getParameter("comm");
			Connection cn=New_con.getCon();
			
			HttpSession session=request.getSession(false);
			String logid=(String)session.getAttribute("uid");
			
			String sql="select email,name from registration where email=?";
			PreparedStatement ps=cn.prepareStatement(sql);
			ps.setString(1, logid);
			System.out.println("pic id="+pid+logid +comm);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				String id=pid;
				String eid=rs.getString(1);
				String name=rs.getString(2);
				System.out.println(id+comm+eid);
				String sql1="insert into commentu (email,id,comm,name,sdate,stime) values(?,?,?,?,?,?)";
				PreparedStatement ps1=cn.prepareStatement(sql1);
				ps1.setString(1, eid);
				ps1.setString(2, id);
				ps1.setString(3, comm);
				ps1.setString(4, name);
				ps1.setString(5, dt);
				ps1.setString(6, tm);
				ps1.execute();
				//RequestDispatcher rd=request.getRequestDispatcher("profileu.jsp");
				//rd.forward(request, response);
				String referer = request.getHeader("Referer");
				  // handle empty referer.....
				  response.sendRedirect(referer);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
