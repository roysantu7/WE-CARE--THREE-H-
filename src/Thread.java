

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
 * Servlet implementation class Thread
 */
@WebServlet("/Thread")
public class Thread extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			Connection con=New_con.getCon();
			HttpSession session=request.getSession(false);
			String id=(String)session.getAttribute("uid");
			
			String msg=request.getParameter("msg");
			String dt= request.getParameter("dt");
			String tm= request.getParameter("tm");
			String mid= request.getParameter("mid");
			
			String sql="select email,name from registration where email=?";
			
			System.out.println(msg+"&"+id);
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, id);
			ResultSet rs=pst.executeQuery();
			if(rs.next()){
				String name=rs.getString(2);
				String eid=rs.getString(1);
			 
					PreparedStatement ps=con.prepareStatement("insert into pmsg values(?,?,?,?,?,?)");
					System.out.println("test :"+mid);
					
					ps.setString(1,eid);
					
					ps.setString(2,msg);
					ps.setString(3,dt);
					ps.setString(4, tm);
					ps.setString(5,name);
					ps.setString(6,mid);
					ps.execute();
					String referer = request.getHeader("Referer");
					 response.sendRedirect(referer);
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
