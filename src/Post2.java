

import java.io.File;
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
import javax.servlet.http.Part;

import db_con.New_con;

/**
 * Servlet implementation class Post2
 */
@WebServlet("/Post2")
public class Post2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			Connection con=New_con.getCon();
			int unid=(int)(Math.random()*10000);
			String rid="3H" +unid+"THD";
			String msg=request.getParameter("msg");
			String dt= request.getParameter("dt");
			String tm= request.getParameter("tm");
			String recv= request.getParameter("recv");
			String rnm= request.getParameter("rnm");
			
			String sql="select email,name from registration where email=?";
			
			HttpSession session=request.getSession(false);
			String id=(String)session.getAttribute("uid");
			System.out.println(msg+"&"+id);
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, id);
			ResultSet rs=pst.executeQuery();
			if(rs.next()){
				String name=rs.getString(2);
				String eid=rs.getString(1);
			 
				PreparedStatement ps2=con.prepareStatement("select sender,receiver,mid from thread where sender=? and receiver=?");
				ps2.setString(1, rid);
				ps2.setString(2, eid);
				ResultSet rs2=ps2.executeQuery();
				
				PreparedStatement ps3=con.prepareStatement("select sender,receiver,mid from thread where sender=? and receiver=?");
				ps3.setString(1, eid);
				ps3.setString(2, rid);
				ResultSet rs3=ps3.executeQuery();
				System.out.println(msg+"**"+dt+"*"+tm+"&"+recv+"&"+id+"&"+name+rnm);
				if(rs2.next() || rs3.next()){
					String mid= rs2.getString(3);
					PreparedStatement ps=con.prepareStatement("insert into pmsg values(?,?,?,?,?,?,?,?)");
					System.out.println("test :"+mid);
					
					ps.setString(1,eid);
					ps.setString(2, recv);
					ps.setString(3,msg);
					ps.setString(4,dt);
					ps.setString(5, tm);
					ps.setString(6,name);
					ps.setString(7,rnm);
					ps.setString(8,mid);
					
					
					ps.execute();
					
					rs2.close();
					rs3.close();
					ps2.close();
					ps3.close();
					
					
				}else {
					PreparedStatement ps1=con.prepareStatement("insert into thread values(?,?,?,?,?)");
					
					System.out.println(msg+"**"+dt+"*"+tm+"&"+recv+"&"+id+"&"+name+rnm);
					ps1.setString(1,rid);
					ps1.setString(2, eid);
					ps1.setString(3,recv);
					ps1.setString(4,name);
					ps1.setString(5, rnm);
					
					ps1.execute();
					
				
				PreparedStatement ps=con.prepareStatement("insert into pmsg values(?,?,?,?,?,?)");
				
				System.out.println(msg+"**"+dt+"*"+tm+"&"+recv+"&"+id+"&"+name+rnm);
				ps.setString(1,eid);
				
				ps.setString(2,msg);
				ps.setString(3,dt);
				ps.setString(4, tm);
				ps.setString(5,name);
				
				ps.setString(6,rid);
				
				
				ps.execute();
					
				}
			RequestDispatcher rd=request.getRequestDispatcher("mainpro.jsp?uid10=recv");
			rd.include(request, response);
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}

}
