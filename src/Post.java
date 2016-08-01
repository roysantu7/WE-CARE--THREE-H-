
import db_con.*;
import java.sql.*;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 * Servlet implementation class Post
 */
@WebServlet("/Post")
@MultipartConfig(fileSizeThreshold=1024*1024*2,maxFileSize=1024*1024*10,maxRequestSize=1024*1024*50)
//this one is optional because default file size is 0,default maxFileSize and maxRequestSize in unlimited
public class Post extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR="impic";

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			int unid=(int)(Math.random()*10000);
			String rid="3H" +unid;
			//int chk=0;
			//int rec1=chk+1;
			//String rec=""+ rec1;
			String tale=request.getParameter("tale");
			String msg=request.getParameter("msg");
			String dt= request.getParameter("dt");
			String tm= request.getParameter("tm");
			Part pc=request.getPart("pic");
			System.out.println("test"+pc);
			if(pc!=null){
				String savePath="S:"+File.separator+SAVE_DIR;//File.separator is used for "\" in windows
				File fileSaveDir=new File(savePath);//create the directory path where image will be uploaded
				
				if(!fileSaveDir.exists()){
					fileSaveDir.mkdir();
				}//check filder exists or not . If not then create the folder autometically
				PrintWriter out=response.getWriter();
				
				Connection con=New_con.getCon();
				String sql="select email,name from registration where email=?";
				
				HttpSession session=request.getSession(false);
				String id=(String)session.getAttribute("uid");
				System.out.println(msg+"&"+id);
				PreparedStatement pst=con.prepareStatement(sql);
				pst.setString(1, id);
				ResultSet rs=pst.executeQuery();
				while(rs.next()){
					String name=rs.getString(2);
					String eid=rs.getString(1);
				
				Part part=request.getPart("pic");
				String filePath=extractFile(part);
				String fileName=filePath.substring(filePath.lastIndexOf("\\")+1,filePath.length());		
				part.write(savePath+File.separator+fileName);
				
				
				PreparedStatement ps=con.prepareStatement("insert into udata(email,name,pic,msg,id,sdate,stime,title) values(?,?,?,?,?,?,?,?)");
				String fileAdd=savePath+File.separator+fileName;
				System.out.println("**"+rid+"*"+fileAdd+"&"+id+"&"+name+"&"+eid);
				ps.setString(1,eid);
				ps.setString(2, name);
				ps.setString(3,fileAdd);
				ps.setString(4, msg);
				ps.setString(5, rid);
				ps.setString(6, dt);
				ps.setString(7, tm);
				ps.setString(8, tale);
				//ps.setString(6, rec);
				
				ps.execute();
				
				
				String referer = request.getHeader("Referer");
				  response.sendRedirect(referer);
				}
				
			}else{
				Connection con=New_con.getCon();
				String sql="select email,name from registration where email=?";
				
				HttpSession session=request.getSession(false);
				String id=(String)session.getAttribute("uid");
				System.out.println(msg+"&"+id);
				PreparedStatement pst=con.prepareStatement(sql);
				pst.setString(1, id);
				ResultSet rs=pst.executeQuery();
				while(rs.next()){
					String name=rs.getString(2);
					String eid=rs.getString(1);
				
				PreparedStatement ps=con.prepareStatement("insert into udata(email,name,msg,id,sdate,stime,title) values(?,?,?,?,?,?,?)");
				System.out.println("**"+rid+"*"+"&"+id+"&"+name+"&"+eid);
				ps.setString(1,eid);
				ps.setString(2, name);
				ps.setString(3, msg);
				ps.setString(4, rid);
				ps.setString(5, dt);
				ps.setString(6, tm);
				ps.setString(7, tale);
				//ps.setString(6, rec);
				
				ps.execute();
				
				String referer = request.getHeader("Referer");
				  response.sendRedirect(referer);
			}
			
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	private String extractFile(Part part){
		String contentDisp=part.getHeader("Content-Disposition");
		String[] item=contentDisp.split(";");
		for (String s : item) {
			if(s.trim().startsWith("filename")){
				return s.substring(s.indexOf("=")+2,s.length()-1);
			}
		}
		
		
		return "";
	}
	

}
