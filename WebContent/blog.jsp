<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>3H Blog</title>

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
      border: 1px solid #f4511e; 
      border-radius:0 !important;
      transition: box-shadow 0.5s;
  }
  .panel:hover {
      box-shadow: 5px 0px 40px rgba(0,0,0, .2);
  }
  .panel-footer .btn:hover {
      border: 1px solid #f4511e;
      background-color: #fff !important;
      color: #f4511e;
  }
  .panel-heading {
      color: #fff !important;
      background-color: #f4511e !important;
      padding: 25px;
      border-bottom: 1px solid transparent;
      border-top-left-radius: 0px;
      border-top-right-radius: 0px;
      border-bottom-left-radius: 0px;
      border-bottom-right-radius: 0px;
  }
  .panel-footer {
      background-color: white !important;
  }
  .panel-footer h3 {
      font-size: 32px;
  }
  .panel-footer h4 {
      color: #aaa;
      font-size: 14px;
  }
  .panel-footer .btn {
      margin: 15px 0;
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
  .seek{
      float:left;
	  position:absolute;
	  left:-16%;
	  margin-top:5%;   
	  position:fixed;
  	  -webkit-transition:position 0.5s linear 0s, left 0.8s linear 0s;
  	    
  }
  .seek:hover{
   		float:left;
		position:absolute;
		left:0px;
		position:fixed;
		
		
  }
  .seek:hover #xyz{
   		visibility: hidden;
  }
  #test:hover{
   		color: #ee4035;
   		text-decoration: blink;
  }
  .bbox{
   		border: 1px solid transparent;
   		transition: box-shadow 0.5s;
   		margin-bottom: 3%;
   		background-color: #dfe3ee;
   		margin-left: 2%;
  }
  .bbox:hover {
      box-shadow: 5px 0px 40px rgba(0,0,0, .2);
      background-color: #8b9dc3;
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
<body id="myPage">
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

<!-- Mcq section -->
<div class="row">
<div class="col-sm-5 seek" style=" margin-left:0px;">
<div class="col-sm-4">
<h4 style="font-size: 15px; margin-bottom: 0px; color: #ee4035;">Go for a</h4>
<a href="#myModalMcq" style="font-size: 35px;" data-toggle="modal" id="test">
<span style="font-size: 35px; margin-top: 1px; color: #8ec127;" class="glyphicon glyphicon-check"></span>Test</a>
</div>
<div class="col-sm-1" id="xyz" style="font-size: 20px; font-weight: bolder; color:#000000;">
<p style="background: #ee4035; border-radius:6%;padding: 10px;padding-right: 25px;">M<br>C<br>Q</p>
</div>
</div>
</div>

<!-- Modal mcq -->
<div class="modal fade" id="myModalMcq" role="dialog" style="margin-top: 3%;">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header" style="background-color: #555555;">
      	<button type="button" class="close" data-dismiss="modal" style="color: red; font-size: 35px;">&times;</button>
        <h3 style="text-align: center; color:#8ec127;font-size: 30px;font-weight: bolder; "><span class="glyphicon"></span>CHOOSE  MOST RESEMBLE ANSWERS </h3>
        
        
      </div>
      <div class="modal-body" >
       <div class="panel-body" style="text-align: left;">
       
       
       <form role="form" action="" style="color:#3366ff;font-size: 20px; ">
       
       <div class="modal-section text-center" style="margin-bottom: 20px;margin-left:30%;">
       <div style=" font-size:25px;color: black;text-align: left; ">
        Hello <%=rs9.getString(2) %>
         
         </div>
         <div style="font-size:15px;color: black;text-align: left;">
         answer the following questions
         
        </div>
       </div>
       
       <div class="form-group">
            <label for="psw"><span class="glyphicon "></span> Question 1</label>
           
         
          <div class="checkbox" style="">
 		  	<label class="checkbox-inline"><input type="checkbox" value=""> Option 1</label>
		  
  			<label class="checkbox-inline"><input type="checkbox" value=""> Option 2</label>
		  
 			 <label class="checkbox-inline"><input type="checkbox" value=""> Option 3</label>
   		  </div>
        </div> 
        
        <div class="form-group">
            <label for="psw"><span class="glyphicon "></span> Question 2</label>
           
         
          <div class="checkbox">
 		  	<label class="checkbox-inline"><input type="checkbox" value=""> aaa</label>
		 
  			<label class="checkbox-inline"><input type="checkbox" value=""> bbb</label>
		  
 			 <label class="checkbox-inline"><input type="checkbox" value=""> ccc</label>
   		  </div>
        </div> 
        
        <div class="form-group">
            <label for="psw"><span class="glyphicon "></span> Question 3</label>
           
         
          <div class="checkbox">
 		  	<label class="checkbox-inline"><input type="checkbox" value=""> 123</label>
		  
  			<label class="checkbox-inline"><input type="checkbox" value=""> 435</label>
		 
 			 <label class="checkbox-inline"><input type="checkbox" value=""> 887</label>
   		  </div>
        </div> 
        
        <div class="form-group">
            <label for="psw"><span class="glyphicon "></span> Question 4</label>
           
         
          <div class="checkbox">
 		  	<label class="checkbox-inline"><input type="checkbox" value=""> 2ee</label>
		 
  			<label class="checkbox-inline"><input type="checkbox" value=""> 6gd</label>
		  
 			 <label class="checkbox-inline"><input type="checkbox" value=""> 5gs</label>
   		  </div>
        </div> 
        
        <div class="form-group">
            <label for="psw"><span class="glyphicon "></span> Question 5</label>
           
         
          <div class="checkbox">
 		  	<label class="checkbox-inline"><input type="checkbox" value=""> 111</label>
		  
  			<label class="checkbox-inline"><input type="checkbox" value=""> 999</label>
		  
 			 <label class="checkbox-inline"><input type="checkbox" value=""> 777</label>
   		  </div>
        </div> 
          <button class="btn btn-success" data-toggle="modal" data-target="#myModalOk" data-dismiss="modal">Submit</button>
           <button type="submit" class="btn btn-danger btn-default text-center" data-dismiss="modal">
          <span class="glyphicon"></span>Cancel
        </button>
          
        </form>
       
        
        
         </div>
      </div>
      <div class="modal-footer" style="background-color: #555555;">
        
        
      </div>
    </div>
  </div>
</div>

<%
			}
       }catch(Exception e){
    	   e.printStackTrace();
       }

%>

<!-- Modal ok -->
<div class="modal fade" id="myModalOk" role="dialog" style="margin-top: 3%;">
  <div class="modal-dialog">
<!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header" style="background-color:">
      
        <button type="button" class="close" data-dismiss="modal" style="color: red; font-size: 35px;">&times;</button>
        <h3 style="text-align: center; color:#8ec127;font-size: 30px;font-weight: bolder; "><span class="glyphicon"></span>
        Your answers have been successfully submitted </h3>
        
      </div>
      
      
      <div class="modal-body" >
       <div class="panel-body" style="text-align: center; color:blue; ">
       
       <h3>Your result will be mailed to your email id soon</h3>
       
       
        
        
         </div>
      </div>
      <div class="modal-footer" style="background-color: #555555;">
        
        <h1 style="text-align: center;">Thank You</h1>
      </div>
    </div>
  </div>
</div>


<div class="jumbotron text-center">
  
    
    <h1 style="color: #fdf498; padding-bottom: 15px; font-family: fantasy;">
    <span style="color: #d5d9d8;" class="glyphicon glyphicon-pencil"></span>
    Share Your Thoughts</h1>
    
    <form class="form-inline" action="Post" method="post" enctype="multipart/form-data">
     
    <%
    Date today=new Date();
    SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yyyy");
    String newsdf=sdf.format(today);
    SimpleDateFormat localDateFormat = new SimpleDateFormat("HH:mm:ss");
    String time = localDateFormat.format(new Date());
	
	%>
	<input type="hidden" name="dt" value="<%= newsdf  %>">
	<input type="hidden" name="tm" value="<%= time  %>">
    <textarea rows="2" cols="65" class="form-control" name="tale" placeholder=" Type your Headline here"></textarea><br>
    	  			<p></p>
    	  			<textarea rows="5" cols="65" class="form-control" name="msg" placeholder="Blog it here" ></textarea><br>
    	  			<p></p>
    <input type="file" placeholder="Upload photo (if any)" size="40" style="" name="pic" class="form-control">
    <input type="submit" value="SHARE" style="background-color: #fb2e01; color: white;" class="form-control">
  </form>
</div>


<!-- Container (blog Section) -->
<div id="blog" class="container">
  <h3 class="text-center" style="margin-bottom: 5%;font-size: 35px;color: #ee4035;font-weight: bolder;">From The Bloggers</h3>
  <%
      try{
    	  Connection con=New_con.getCon();
    	  String sql="select name,email,pic,msg,id,sdate,stime,title from udata";
    		PreparedStatement ps=con.prepareStatement(sql);
    		ResultSet rs=ps.executeQuery();
    		while(rs.next()){
    		String nam=rs.getString(1);
    		String email=rs.getString(2);
    		String pic=rs.getString(3);
    		String msg=rs.getString(4);
    		String pid=rs.getString(5);
    		String title=rs.getString(8);
    		%>
  <div class="row">
  	<div class="col-md-12">
  		<div class="row">
  			<div class="col-sm-7 bbox">
  				<div class="row">
       			 <div class="col-md-6 form-group">
        
         			 <h3 style="color: #326ada;"><%=nam %></h3>
          			<p style="font-size: small; margin-bottom: 0px;">on <%=rs.getString(6) %> at <%=rs.getString(7) %></p>
        		</div>
      			</div>
      
      			<div class="row">
       			 <div class="col-sm-3 form-group">
         			 <img alt="" src="<%= pic%>" height="" width="150">
        		</div>
        		<div class="col-md-7 form-group">
          			<h2 style="text-align: left; color: black;"> <%=title %> </h2>
          			<a href="description.jsp?pid=<%=pid%>" style=" margin-left: 65%;margin-bottom:5%;">
          <input type="button" value="Continue Reading"></a>
        		</div>
      		  </div>
  			</div>
  <%}
      }catch(Exception e){
    	  e.printStackTrace();
      }
  
    %>
  			<div class="col-sm-4">
  					<p align="right">Our Bloggers</p>
      <% 
       try{
			Connection con1=New_con.getCon();
			String sql2="select email,name from registration";
			PreparedStatement ps2=con1.prepareStatement(sql2);
			ResultSet rs2=ps2.executeQuery();
			while(rs2.next()){
		
	  %>
		
		
          <h5 align="right"><a href="mainpro.jsp?eid=<%=rs2.getString(1) %>" style="text-decoration: none; text-align: left;"> <%=rs2.getString(2) %> </a></h5>
       
		
     
     
    <%
	}
}catch(Exception e){
	e.printStackTrace();
}
%>
		</div>  
  </div>

  			</div>
  		
  		
  
  
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