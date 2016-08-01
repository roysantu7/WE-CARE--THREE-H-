<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>3H Home</title>
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
      -webkit-filter: grayscale(90%);
      width: 100%;
      height: 250px;
      margin-bottom: 10px;
      filter: grayscale(90%);
  }
  .carousel-control.right, .carousel-control.left {
      background-image: none;
      color: #ffcc5c;
  }
  .carousel-indicators li {
      border-color: #ffcc5c;
  }
  
  .carousel-indicators li.active {
      background-color: #ffcc5c;
  }
  
  .item h4 {
      font-size: 19px;
      line-height: 1.375em;
   3   font-weight: 400;
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
  .panel-body1{
		  background-color: #92a8d1 !important;
  
  }
  .panel1 {
      
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
  .panel-heading1 {
      color: #fff !important;
      background-color: #92a8d1 !important;
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
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="70">
<%@page import="db_con.*,java.util.*,java.sql.*" %>

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
	    <li><a href="#login">LOGIN</a></li>
	    <li><a href="#learn">LEARN</a></li>
	    <li><a href="#blog">BLOG</a></li>
	    <li><a href="#events">EVENTS</a></li>
        <li><a href="#about">ABOUT</a></li>
        <li><a href="#contact">CONTACT</a></li>
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
       
       <div class="modal-section text-center" style="margin-bottom: 10px;margin-left:30%;">
       <div style="width: 200px; font-size:15px;color: black;text-align: left; ">
         Name
         <input type="text" name="eid" class="form-control" size="15" placeholder=" enter your name" required>
         </div>
         <div style="width: 200px;font-size:15px;color: black;text-align: left;">
         Email
         <input type="text" name="eid" class="form-control" size="15" placeholder="enter your email" required>
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
  
    <h1>3<span style="color: #f68c8c;">H</span></h1> 
    <p><span style="color: #d5d9d8;">Hope Hoist Help</span></p>
    
    <form class="form-inline" action="Search">
    <input type="text" class="form-control" size="50" name="ser" placeholder="search Blog by name,title or keywords" required>
    <input type="submit" value=" Search" style="background-color: #fb2e01; color: white;" class="form-control">
  </form>
  
  
  
</div>



<!-- Container (LOGIN Section) -->
<div id="login" class="container-fluid text-center ">
  <h2>Want to explore 3H ?</h2>
  <br>
  <div class="row slideanim">
  
   <div class="row">	    
    <div class="col-sm-9" style="margin-top: 55px; padding-bottom: 10px;">
       <div class="panel1 panel-default text-center">
        <div class="panel-heading1">
          <h1>Why You Should Join 3H ? </h1>
        </div>
        <div class="panel-body1">
         <div id="myCarousel" class="carousel slide text-center" data-ride="carousel" style="background-color: 	#555555;">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1" ></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox" >
      <div class="item">
        <h4 style="color: #ffcc5c; font-size: 30px;">Subscribe to Newsletter</h4>
      </div>
      <div class="item">
        <h4 style="color: #ffcc5c; font-size: 30px;">Access to 3H Blog</h4>
      </div>
      <div class="item">
        <h4 style="color: #ffcc5c;font-size: 30px;">Nearby Events</h4>
      </div>
      <div class="item">
        <h4 style="color: #ffcc5c;font-size: 30px;">Nearby Medical Expertise</h4>
      </div>
      <div class="item active">
        <h4 style="color: #ffcc5c;font-size: 30px;">Clear your Doubts in Private Messages</h4>
      </div>
    </div>

  </div>
        </div>
        <div class="panel-footer1" style="background-color: #92a8d1; padding-bottom: 8px; margin-top: 5px; color: white;">
          <a href="#contact" style="color: white; font-weight: bolder;margin-top: 5px;">Need help?</a>
        </div>
      </div>  
    </div>
  <br><br>
 
  	  
    <div class="col-sm-3" style="background-color: #92a8d1; padding-bottom: 20px;" >
    <h4><span class="glyphicon glyphicon-user"></span> Login Here</h4>
      <form action="Login" class="form-inline">
          <table align="center">
          
          <tr><td style="border: none; margin: 0px 10px;"><input type="text" name="eid" class="form-control" size="25" placeholder="Email" required></td></tr>
          
          <tr><td style="border: none; margin-bottom: 10px; margin-right: 10px;margin-left: 10px;"><br>
          <input type="password" name="pass" class="form-control" size="25" placeholder="Password" required></td></tr>
          <tr><td colspan="" height="10px" style="border: none; margin-top: 5px;"><br>
          <a href="#myModalForget" style="text-decoration: none; padding-right: 5px;" data-toggle="modal">forget password?</a>
          <input type="submit" value="LOGIN" class="form-control"></td></tr>
          </table>
      </form>
      <h2>OR</h2>
      <button class="btn btn-danger" data-toggle="modal" data-target="#myModal">REGISTER</button>
      
      <!-- Modal Forget password -->
      
<div class="modal fade" id="myModalForget" role="dialog" style="margin-top: 3%;">
  <div class="modal-dialog">
<!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header" style="background-color:#555555;">
      
        <button type="button" class="close" data-dismiss="modal" style="color: red; font-size: 35px;">&times;</button>
        <h3 style="text-align: center; color:#silver;font-size: 30px;font-weight: bolder; "><span class="glyphicon"></span>
        Password Recovery </h3>
        
      </div>
      
      
      <div class="modal-body" >
       <div class="panel-body" style="text-align: center; color:blue; ">
       
       <form  action="Recovery">
         
          <div class="form-group">
            <label for="usrname"><span class="glyphicon"></span> Email</label>
            <input type="text" class="form-control" id="usrname" placeholder="Enter your email id" name="eid">
          </div>
          <input type="submit"  value="Send"> 
           
           </form>
       
       
        
        
         </div>
      </div>
      <div class="modal-footer" style="background-color: #555555;">
        
        <h4 style="text-align: center;">Check your email id to get your password</h4>
      </div>
    </div>
  </div>
</div>
      
     
    
    <!-- Modal Register -->
  <div class="modal fade" id="myModal" role="dialog" style="text-align: center;">
    <div class="modal-dialog">
<!-- Modal content-->
      <div class="modal-content" style="margin-top: 10%;">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">x</button>
          <h4><span class="glyphicon glyphicon-lock"></span>Register as</h4>
          <select name="reg" class="form-control" style="width: 200px; height: 45px; margin-left: 35%;">
           <option onclick="loadDoc()">Select</option><option onclick="loadDoc1()">Medical</option>
           <option onclick="loadDoc2()">Org</option><option onclick="loadDoc3()">user</option>
        </select>
        </div>
        <div class="modal-body form-inline" id="demo" style="">
          
        </div>
        <div class="modal-footer" style="text-align: right;">
          
        </div>
      </div>
    </div>
   </div>
   </div>
   
    </div> 
  </div>
</div>
    
 



<!-- Container (intro Section) -->
<div id="learn" class="container-fluid bg-grey">
  <div class="row">
    <div class="col-sm-8">
      <h2>Learn About Cancer</h2><br>
      <h4>What is cancer?</h4><br>
      <p>The body is made up of trillions of living cells. Normal body cells grow, divide into new cells, and die in an orderly way. During the early years of a person`s life, normal cells divide faster to allow the person to grow. After the person becomes an adult, most cells divide only to replace worn-out or dying cells or to repair injuries.
		 Cancer starts when cells in a part of the body start to grow out of control. There are many kinds of cancer, but they all start because of out-of-control growth of abnormal cells.Cancer cell growth is different from normal cell growth. Instead of dying, cancer cells continue to grow and form new, abnormal cells. Cancer cells can also 
         invade (grow into) other tissues, something that normal cells can’t do. Growing out of control and invading other tissues are what makes a cell a cancer cell.Cells become cancer cells because of damage to DNA. DNA is in every cell and directs all its actions. In a normal cell, when DNA gets damaged the cell either repairs the damage or 
         dies. In cancer cells, the damaged DNA is not repaired, but the cell doesn’t die like it should. Instead, this cell goes on making new cells that the body doesn’t need. These new cells will all have the same damaged DNA as the first cell does.People can inherit damaged DNA, but most DNA damage is caused by mistakes that happen while the 
         normal cell is reproducing or by something in our environment. In most cases, no clear cause is found.Cancer cells often form a tumor. But some cancers, like leukemias, rarely form tumors. Instead, these cancer cells involve the blood and blood-forming organs and circulate through other tissues where they grow.Cancer cells often travel 
         to other parts of the body, where they begin to grow and form new tumors that replace normal tissue. This process is called metastasis (meh-tas-tuh-sis). It happens when the cancer cells get into the bloodstream or lymph vessels of our body.
      </p>
      <br><a href="learn.jsp"><input type="button" value="Read More"></a>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon img-circle" style="">
      <img src="C:\Users\roysantu7\Desktop\priImage\image1.jpg" style="border-radius: 50%;margin-top: 200px;" /></span>
    </div>
  </div>
</div>

<!-- Container (blog Section) -->
<div id="blog" class="container-fluid text-center ">
  <h2>3H  WALL</h2><br>
  <h3>From The Bloggers</h3>
  <div class="row text-center slideanim">
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
    		
    		%>
    		 <div class="col-sm-12" style="margin-bottom:20px;
    		 border: 1px solid #92a8d1;background-color:#92a8d1; ">
    		   <div style="width: 150px;height: auto; border: 1px;margin-top: 15px;" class="col-sm-5">
        	   <img alt="" src="<%= pic%>">
        	   </div>
        	   <div class="col-sm-7" style="margin-left: 20%;">
        	   <p style="text-align: left; margin-left: 10px; margin-top: 20px;color: black; font-size: 25px;"><%=rs.getString(8) %></p>
               <div class="" style="padding: 0px 5px;">
        	   <p style="text-align: left;margin-left: 5px; margin-top: 10px;margin-bottom: 0px;color: blue;font-size: 20px;">By  <%=nam %> </p>
        	   <p style="font-size: small; margin-bottom: 10px;margin-top:0px;text-align: left;margin-left: 5px;">on <%=rs.getString(6) %> at <%=rs.getString(7) %></p>
        	   </div>
        	   
          <a href="details.jsp?pid=<%=pid%>" style=" margin-left: 90%;margin-bottom: 10px;">
          <input type="button" value="Continue Reading"></a>
        </div>
   			</div>    
    
    <%}
    		 
      }catch(Exception e){
    	  e.printStackTrace();
      }
  
    %>
    
  </div>
  
 
  <div id="myCarousel" class="carousel slide text-center " data-ride="carousel" style="background-color: #555555; color: silver;">
   <h3 style="padding-top: 10px;">Some Inspirational Quotes by great personalities</h3>
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
      <li data-target="#myCarousel" data-slide-to="5"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item">
        <h4 style="color: #ffcc5c;">"Cancer is a word, not a sentence."<br><br><span style="font-style:normal; text-align: left">- John Diamon</span></h4>
      </div>
      <div class="item">
        <h4 style="color: #ffcc5c;">"Time is shortening. But every day that I challenge this cancer and survive is a victory for me."<br><br>
        <span style="font-style:normal;text-align: left">- Ingrid Bergman</span></h4>
      </div>
      <div class="item">
        <h4 style="color: #ffcc5c;">"We have two options, medically and emotionally: give up or fight like hell."<br><br>
        <span style="font-style:normal;text-align: left">- Lance Armstrong</span></h4>
      </div>
      <div class="item">
        <h4 style="color: #ffcc5c;">"The ultimate measure of a man is not where he stands in moments of comfort<br> and convenience, 
        but where he stands at a time of challenge and controversy."<br><br>
        <span style="font-style:normal; text-align: left">- Dr. Martin Luther King Jr</span></h4>
      </div>
      <div class="item active">
        <h4 style="color: #ffcc5c;">"Cancer can take away all of my physical abilities. It cannot touch my mind,<br> it cannot touch my heart, 
        and it cannot touch my soul"<br><br>
        <span style="font-style:normal;text-align: left">-  Jim Valvano</span></h4>
      </div>
      <div class="item">
        <h4 style="color: #ffcc5c;">"You never know how strong you are until being strong is the only choice you have"<br><br>
        <span style="font-style:normal;text-align: left">- Cayla Mills</span></h4>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>



<!-- Container (Events Section) -->
<div id="events" class="container-fluid">
  <div class="text-center">
    <h2>EVENTS</h2>
    <h4>Register for an upcoming Event</h4>
  </div>
  <div class="row slideanim">
   <%
      try{
    	  Connection con=New_con.getCon();  		
  		  String sql="select name,venue,loc,sdate,stime,guest,comm,evntid,pid,pname from event";
  		  PreparedStatement ps=con.prepareStatement(sql);
  		  ResultSet rs=ps.executeQuery();
    		while(rs.next()){
    		String nam=rs.getString(1);
    		String loc=rs.getString(3);
    		
        if(loc.equals("North Kolkata")){
        	%>
        
  
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>North Kolkata</h1>
        </div>
        <div class="panel-body" style="overflow: auto; height: 400px;">
          <div class="text-center" 
	           		style="background-color: #555555;border-radius:5%; padding: 10px; border: 2px solid transparent; ">
          				<p style="color:#ff1d8e ; font-size: 25px;padding: 5px;"><span class="glyphicon glyphicon"></span> " <%=rs.getString(1) %> "</p>
      	  				<p style="color: #ffffff;font-size: medium;"><span class="glyphicon glyphicon" style="color: #ffcc5c;font-size: medium;"> About:</span>
      	  				 <%=rs.getString(7) %></p>
          				<p style="color: #00e7eb;font-size: medium;"><span class="glyphicon glyphicon-map-marker" style="color: #ffcc5c;font-size: large;"></span>
          				 <%=rs.getString(2) %></p>
      	  				<p style="color: #00e7eb;font-size: medium;"><span class="glyphicon glyphicon" style="color: #ffcc5c;font-size: large;">Date:</span>
      	  				 <%=rs.getString(4) %></p>
    	  				<p style="color: #00e7eb;font-size: medium;"><span class="glyphicon glyphicon-clock" style="color: #ffcc5c;font-size: large;">Time:</span>
    	  				 <%=rs.getString(5) %></p>
    	  				<p style="color: #00e7eb;font-size: medium;"><span class="glyphicon glyphicon" style="color: #ffcc5c;font-size: large;">Special Guest:</span>
    	  				 <%=rs.getString(6) %></p>
    	  				 <h2 style="color: white;">Hosted BY <%=rs.getString(10) %></h2>
       				 </div>
        </div>
        <div class="panel-footer">
          <button class="btn" data-toggle="modal" data-target="#myModalreg" >REGISTER</button>
        </div>
      </div>      
    </div>  
    <%
    }else if(loc.equals("Central Kolkata")){
    
    %>   
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Central Kolkata</h1>
        </div>
        <div class="panel-body" style="overflow:auto; height: 400px;">
          <div class="text-center" 
	           		style="background-color: #555555;border-radius:5%; padding: 10px; border: 2px solid transparent; ">
          				<p style="color:#ff1d8e ; font-size: 25px;padding: 5px;"><span class="glyphicon glyphicon"> </span>
          				" <%=rs.getString(1) %> "</p>
      	  				<p style="color: #ffffff;font-size: medium;"><span class="glyphicon glyphicon" style="color: #ffcc5c;font-size: large;"> About:</span>
      	  				 <%=rs.getString(7) %></p>
          				<p style="color: #00e7eb;font-size: medium;"><span class="glyphicon glyphicon-map-marker" style="color: #ffcc5c;font-size: large;"></span>
          				 <%=rs.getString(2) %></p>
      	  				<p style="color: #00e7eb;font-size: medium;"><span class="glyphicon glyphicon" style="color: #ffcc5c;font-size: large;">Date:</span>
      	  				 <%=rs.getString(4) %></p>
    	  				<p style="color: #00e7eb;font-size: medium;"><span class="glyphicon glyphicon-clock" style="color: #ffcc5c;font-size: large;">Time:</span>
    	  				 <%=rs.getString(5) %></p>
    	  				<p style="color: #00e7eb;font-size: medium;"><span class="glyphicon glyphicon" style="color: #ffcc5c;font-size: large;">Special Guest:</span>
    	  				 <%=rs.getString(6) %></p>
    	  				 <h2 style="color: white;">Hosted BY <%=rs.getString(10) %></h2>
       				 </div>
        </div>
        <div class="panel-footer">
          <button class="btn" data-toggle="modal" data-target="#myModalreg" >REGISTER</button>
        </div>
      </div>      
    </div>   
    
    <%
    }else{
    %>    
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>South Kolkata</h1>
        </div>
        <div class="panel-body" style="overflow: auto; height: 400px;">
          <div class="text-center" 
	           		style="background-color: #555555;border-radius:5%; padding: 10px; border: 2px solid transparent; ">
          				<p><span class="glyphicon glyphicon" style="color: #ff1d8e; font-size: 25px;padding: 5px;">" <%=rs.getString(1) %> "</span></p>
      	  				<p style="color: #ffffff;font-size: medium;"><span class="glyphicon glyphicon" style="color: #ffcc5c;font-size: medium;"> About:</span>
      	  				 <%=rs.getString(7) %></p>
          				<p style="color: #00e7eb;font-size: medium;"><span class="glyphicon glyphicon-map-marker" style="color: #ffcc5c;font-size: medium;"></span>
          				 <%=rs.getString(2) %></p>
      	  				<p style="color: #00e7eb;font-size: medium;"><span class="glyphicon glyphicon" style="color: #ffcc5c;font-size: medium;">Date:</span>
      	  				 <%=rs.getString(4) %></p>
    	  				<p style="color: #00e7eb;font-size: medium;"><span class="glyphicon glyphicon-clock" style="color: #ffcc5c;font-size: medium;">Time:</span>
    	  				 <%=rs.getString(5) %></p>
    	  				<p style="color: #00e7eb;font-size: medium;"><span class="glyphicon glyphicon" style="color: #ffcc5c;font-size: medium;">Special Guest:</span>
    	  				 <%=rs.getString(6) %></p>
    	  				 <h2 style="color: white;">Hosted BY <%=rs.getString(10) %></h2>
       				 </div>
        </div>
        <div class="panel-footer">
          <button class="btn" data-toggle="modal" data-target="#myModalreg" >REGISTER</button>
        </div>
        
         <%}
         }
      }catch(Exception e){
    	  e.printStackTrace();
      }
  
    %>
        
      </div>      
    </div>    
  </div>
</div>


<!-- Event Register Modal -->
<div class="modal fade" id="myModalreg" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content" style="margin-top: 10%;">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4><span class="glyphicon glyphicon-lock"></span> Register</h4>
      </div>
      <div class="modal-body">
        <form role="form" action="Eventreg">
          <div class="form-group">
            <label for="psw"><span class="glyphicon "></span> Name</label>
            <input type="text" class="form-control" id="psw" placeholder="Enter your name" name="nam">
          </div>
          <div class="form-group">
            <label for="usrname"><span class="glyphicon"></span> Email</label>
            <input type="text" class="form-control" id="usrname" placeholder="Enter your email id" name="eid">
          </div>
          <div class="form-group">
            <label ><span class="glyphicon "></span> Gender</label><br>
            <input type="radio" name="gen" value="Male" checked="checked"> Male
			<input type="radio" name="gen"  value="Female"> Female
			<input type="radio" name="gen"  value="Others"> Others</td>
          </div>
          <div class="form-group">
            <label for="usrname1"><span class="glyphicon glyphicon-user"></span> Mobile</label>
            <input type="text" class="form-control" id="usrname1" placeholder="Enter your mobile no">
          </div>
          <input type="submit" class="btn btn-block" value="Register"> 
           
          
        </form>
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
          <span class="glyphicon glyphicon-remove"></span> Cancel
        </button>
        <p>Need <a href="#">help?</a></p>
      </div>
    </div>
  </div>
</div>


<!-- Container (About Section) -->
<div id="about" class="container-fluid bg-grey">
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon  ">
      <img src="C:\Users\roysantu7\Desktop\priImage\image0.jpg" width="300" height="auto" style="border-radius: 50%;margin-top: 100px;" /></span>
    </div>
    <div class="col-sm-8">
      <h2>About Us</h2><br>
      <h4>The best cancer care starts with the best cancer information. 3H - brings the expertise and resources to people living with cancer and those who care for and care about them.
       Well-informed patients are their own best advocates and invaluable partners for physicians. 3H provides timely, comprehensive information to help patients and families make informed health care decisions.</h4>
      <h3>OUR MISSION</h3>
      <h4><strong>Helping You Stay Well</strong> <br>
      We help you take steps to prevent cancer or find it at its earliest, most treatable stage.
      </h4>
      <h4><strong>Helping You Get Well</strong> <br>
      We are in your corner around the clock to help you through every step of your cancer experience.
      </h4>
      <h4><strong>Access to Care</strong> <br>
       We are working every day to ensure everyone has access to quality health care and how you can help
      </h4><br>
      <h3>OUR VISION</h3>
      <h4><strong>3H</strong> is dedicated to ensuring that all people impacted by cancer are empowered by knowledge, strengthened by action and sustained by community.
      so we worked relentlessly to save lives and create a world with less cancer</h4>
    </div>
  </div>
</div>



<!-- Container (Contact Section) -->
<div id="contact" class="container-fluid ">
  <h2 class="text-center" style="margin-left: 250px;">WRITE US A FEEDBACK</h2>
  <div class="row">
    <div class="col-sm-5">
      <h3>CONTACT US</h3>
      <p><span class="glyphicon glyphicon-map-marker"></span> Kolakata, India</p>
      <p><span class="glyphicon glyphicon-phone"></span> +91 8013999591</p>
      <p><span class="glyphicon glyphicon-envelope"></span> feedback@3h.com</p>	   
    </div>
    <div class="col-sm-7 slideanim">
    <form action="Send">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input type="hidden" value="roysantu7@gmail.com" name="mail">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="msg" placeholder="Comment" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <input type="submit" value="SEND">
        </div>
      </div>
      </form>	
    </div>
  </div>
</div>


<footer class="container-fluid text-center" style="background-color: #2f2f2f;">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>copyright Three-H 2016</p>		
</footer>

<script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Prevent default anchor click behavior
    event.preventDefault();

    // Store hash
    var hash = this.hash;

    // Using jQuery's animate() method to add smooth page scroll
    // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
    $('html, body').animate({
      scrollTop: $(hash).offset().top
    }, 900, function(){
   
      // Add hash (#) to URL when done scrolling (default click behavior)
      window.location.hash = hash;
    });
  });
  
  $(window).scroll(function() {
    $(".slideanim").each(function(){
      var pos = $(this).offset().top;

      var winTop = $(window).scrollTop();
        if (pos < winTop + 600) {
          $(this).addClass("slide");
        }
    });
  });
})
</script>

 <script> 
function loadDoc1() {
	  var xhttp = new XMLHttpRequest();
	  
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	     document.getElementById("demo").innerHTML = xhttp.responseText;
	    }
	  };
	 
	  xhttp.open("GET", "regm.jsp", true);
	  xhttp.send();
	  
	}
function loadDoc2() {
	  var xhttp = new XMLHttpRequest();
	  
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	     document.getElementById("demo").innerHTML = xhttp.responseText;
	    }
	  };
	 
	  xhttp.open("GET", "rego.jsp", true);
	  xhttp.send();
	  
	}
function loadDoc3() {
	  var xhttp = new XMLHttpRequest();
	  
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	     document.getElementById("demo").innerHTML = xhttp.responseText;
	    }
	  };
	 
	  xhttp.open("GET", "regu.jsp", true);
	  xhttp.send();
	  
	}
function loadDoc() {
	  var xhttp = new XMLHttpRequest();
	  
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	     document.getElementById("demo").innerHTML = xhttp.responseText;
	    }
	  };
	 
	  alert("Please select an option");
	  
	}
</script>

</body>
</html>