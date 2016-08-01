

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db_con.New_con;

/**
 * Servlet implementation class Recovery
 */
@WebServlet("/Recovery")
public class Recovery extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
				

 String to=request.getParameter("eid");

Connection cn=New_con.getCon();
String sql="select EMAIL,PASS,NAME,ROLE from registration where EMAIL=?";
PreparedStatement ps=cn.prepareStatement(sql);
ps.setString(1, to);
ResultSet rs =ps.executeQuery();
while(rs.next()){
	String pwd=rs.getString(2);
	String nam=rs.getString(3);


 String subject="3H Password Recovery";
 String messg="Hello " + nam +"  "
		+ "Your password is " + pwd
		+ " ,thank you.";

System.out.print(to);

//sender's emailid and password needs to be mentioned

final String from="ideeclipse7@gmail.com";
final String pass="s@n22n@s";

//defining the gmail host
String host="smtp.gmail.com";


//creating properties object
Properties props=new Properties();

//defining properties

props.put("mail.smtp.host",host);
props.put("mail.transport.protocol", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.starttls.enable", "true");
props.put("mail.smtp.socketFactory.port", "465");  
props.put("mail.smtp.socketFactory.class",  
          "javax.net.ssl.SSLSocketFactory");
props.put("mail.user", from);
props.put("mail.password", pass);
props.put("mail.port","465");

//Authorized the session object

Session mailSession=Session.getInstance(props,new javax.mail.Authenticator(){
	@Override
	
	protected PasswordAuthentication getPasswordAuthentication(){
		return new PasswordAuthentication(from,pass);
	}

	
});

try{
	//create a default MimeMessage object
	MimeMessage message=new MimeMessage(mailSession);
	
	//set From : header field of header
	
	message.setFrom(new InternetAddress(from));
	
	//set To : header field of header
	
	message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
	
	// set Subject : header field
	message.setSubject(subject);
	
	//set actual message
	
	message.setText(messg);
	
	//send message
	
	Transport.send(message);
	
	String referer = request.getHeader("Referer");
	  response.sendRedirect(referer);
	
}catch(MessagingException mex){
	mex.printStackTrace();
	
}
}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
