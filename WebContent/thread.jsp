<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
  <style>
  body {
      font: 400 15px Lato, sans-serif;
      line-height: 1.8;
      color: #818181;
  }
  h2 {
      font-size: 24px;
      text-transform: uppercase;
      color: #303030;
      font-weight: 600;
      margin-bottom: 30px;
  }
  h4 {
      font-size: 19px;
      line-height: 1.375em;
      color: #303030;
      font-weight: 400;
      margin-bottom: 30px;
  }  
  .jumbotron {
      background-color: #2f2f2f;
      color: #fff;
      padding: 100px 25px;
      font-family: Montserrat, sans-serif;
  }
  .container-fluid {
      padding: 60px 50px;
  }
  .bg-grey {
      background-color: #f6f6f6;
  }
  .logo-small {
      color: #f4511e;
      font-size: 50px;
  }
  .logo {
      color: #f4511e;
      font-size: 200px;
  }
  .thumbnail {
      padding: 0 0 15px 0;
      border: none;
      border-radius: 0;
      background-color: #f6f6f6;
  }
  .thumbnail img {
      width: 100%;
      height: 250px;
      margin-bottom: 10px;
      filter: grayscale(90%);
  }
  .carousel-control.right, .carousel-control.left {
      background-image: none;
      color: #f4511e;
  }
  .carousel-indicators li {
      border-color: #f4511e;
  }
  .carousel-indicators li.active {
      background-color: #f4511e;
  }
  .item h4 {
      font-size: 19px;
      line-height: 1.375em;
      font-weight: 400;
      font-style: italic;
      margin: 70px 0;
  }
  .item span {
      font-style: normal;
  }
  .panel {
      border: 1px solid #555555; 
      border-radius:0 !important;
      transition: box-shadow 0.5s;
  }
  .panel:hover {
      box-shadow: 5px 0px 40px rgba(0,0,0, .2);
  }
  .panel-footer .btn:hover {
      border: 1px solid #555555;
      background-color: #fff !important;
      color: #f4511e;
  }
  .panel-heading {
      color: #fff !important;
      background-color: #555555 !important;
      padding: 25px;
      border-bottom: 1px solid transparent;
      border-top-left-radius: 0px;
      border-top-right-radius: 0px;
      border-bottom-left-radius: 0px;
      border-bottom-right-radius: 0px;
  }
  .panel-footer {
      background-color: #555555 !important;
  }
  .panel-footer h3 {
      font-size: 32px;
  }
  .panel-footer h4 {
      color: #aaa;
      font-size: 14px;
  }
  .panel-footer .btn {
      margin-top: 5px ;
      background-color: #f4511e;
      color: #fff;
  }
  .navbar {
      margin-bottom: 0;
      background-color: #2f2f2f;
      z-index: 9999;
      border: 0;
      font-size: 12px !important;
      line-height: 1.42857143 !important;
      letter-spacing: 4px;
      border-radius: 0;
      font-family: Montserrat, sans-serif;
  }
  .navbar li a, .navbar {
      color: #fff !important;
  }
  .navbar-brand {
      color: #ff66b3 !important;
  }
  .navbar-nav li a:hover, .navbar-nav li.active a {
      color: #f4511e !important;
      background-color: #fff !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
      color: #fff !important;
  }
  .open .dropdown-toggle {
      color: #fff;
      background-color: #555 !important;
  }
  .dropdown-menu li a {
      color: #000 !important;
  }
  .dropdown-menu li a:hover {
      background-color: #92a8d1 !important;
  }
  footer .glyphicon {
      font-size: 20px;
      margin-bottom: 20px;
      color: #f4511e;
  }
  .slideanim {visibility:hidden;}
  .slide {
      animation-name: slide;
      -webkit-animation-name: slide;	
      animation-duration: 1s;	
      -webkit-animation-duration: 1s;
      visibility: visible;			
  }
  .blogg{
      background-color:#cbcac8;
  }
  @keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }	
  }
  @-webkit-keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
    .btn-lg {
        width: 100%;
        margin-bottom: 35px;
    }
  }
  @media screen and (max-width: 480px) {
    .logo {
        font-size: 150px;
    }
  }
  </style>

</head>
<body>
<%@page import="db_con.*,java.util.*,java.sql.*" %>

<% 
       try{
			Connection con=New_con.getCon();
			session=request.getSession(false);
			String id=(String)session.getAttribute("uid");
			String sql9="select email,name from registration where email=?";
			PreparedStatement ps9=con.prepareStatement(sql9);
			ps9.setString(1,id);
			ResultSet rs9=ps9.executeQuery();
			while(rs9.next()){
		
	  %>

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage">3H</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
	    <li><a href="blog.jsp">3H-BLOG</a></li>
	    <li><a href="event.jsp">EVENTS</a></li>
	   <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">NEAR BY
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="nearevent.jsp" class="glyphicon glyphicon-map-marker"> EVENTS</a></li>
            <li><a href="nearmedical.jsp" class="glyphicon glyphicon-map-marker"> MEDICAL EXPERTICE</a></li>
          </ul>
        </li>
       <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#" style="font-weight: bolder;"><%=rs9.getString(2) %>
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="Pro" class="glyphicon glyphicon-user"> PROFILE</a></li>
            <li><a href="thread.jsp" class="glyphicon glyphicon-envelope"> MESSAGE</a></li>
            <li><a href="Logout" class="glyphicon glyphicon-log-out"> LOGOUT</a></li> 
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
<%
			}
       }catch(Exception e){
    	   e.printStackTrace();
       }

%>

<!-- Container (thread Section) -->
<div id="events" class="container-fluid">
  <div class="text-center">
    <h2>Private Threads</h2>
  </div>
  <div class="row">
   <%
      try{
    	  Connection con=New_con.getCon();  
    	  session=request.getSession(false);
  		  String id=(String)session.getAttribute("uid");
  		  String sql="select mid,sender,receiver,sname,rname from thread where sender=? or receiver=?";
  		  PreparedStatement ps=con.prepareStatement(sql);
  		  ps.setString(1, id);
  		  ps.setString(2, id);
  		  ResultSet rs=ps.executeQuery();
    		while(rs.next()){
    		String sname=rs.getString(4);
    		String rname=rs.getString(5);
    		String mid=rs.getString(1);
        	%>
        
  
    <div class="col-sm-4">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h4 style="color: #ffcc5c;">Thread Id : <%=rs.getString(1) %></h4>
          <h3 style=" font-size: large;">
           <%=sname %> - <%=rname %>
          </h3>
        </div>
        <div class="panel-body">
          <div class="" 
	      style=" text-align:left; border-radius:5%; padding: px; border: 2px solid transparent;overflow: auto;height: 250px; ">
          	
          	  <%
	           
	           	String sql2="select Sender,msg,msgdt,mgtm,sname,mid from pmsg where mid=?";
	           	PreparedStatement ps2=con.prepareStatement(sql2);
	           	ps2.setString(1, mid);
	           	ResultSet rs2=ps2.executeQuery();
	           	while(rs2.next()){
	           		%>
	           		<p style="color: blue;"><%=rs2.getString(5) %> 
	           		<span style="text-align: right;font-size: small;color: silver;margin-left: 15px;"> <%=rs2.getString(3) %> at <%=rs2.getString(4) %></span>
	           		
	           		</p>
	           		<p style="color: black;font-size: medium; margin-top: 0px;"><%=rs2.getString(2) %></p>
                   <%} %>
              </div>	
              <div>
              
        		
          			
       	  </div>
        </div>
        <div class="panel-footer">
            <%
    	Date today=new Date();
    	SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yyyy");
    	String newsdf=sdf.format(today);
    	SimpleDateFormat localDateFormat = new SimpleDateFormat("HH:mm:ss");
    	String time = localDateFormat.format(new Date());
	
		%>
          <form class="form-inline" action="Thread" method="post">
          			
					<input type="hidden" name="mid" value="<%= mid  %>">
					<input type="hidden" name="dt" value="<%= newsdf  %>">
					<input type="hidden" name="tm" value="<%= time  %>">
    	  			<textarea rows="2" cols="30" class="form-control" name="msg" placeholder="Type your message here"></textarea><br><br>
    	  			<input type="submit" value="SEND" style="background-color: #fb2e01; color: white; class="form-control"" >
  		        </form>
        </div>
      </div>      
    </div>  
    
   
        
         <%}
         
      }catch(Exception e){
    	  e.printStackTrace();
      }
  
    %>
        
         
  </div>
</div>

<footer class="container-fluid text-center" style="background-color: #2f2f2f; margin-top:35px;">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>copyright Three-H 2016</p>		
</footer>

</body>
</html>