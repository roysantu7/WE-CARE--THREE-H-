<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Learn About Cancer</title>

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
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="index.jsp">3H</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
	    <li><a href="#basics">INTRODUCTION</a></li>
	    <li><a href="#types">TYPES</a></li>
	    <li><a href="#stages">STAGES</a></li>
	    <li><a href="#treatment">TREATMENT</a></li>
	    <li><a href="#faq">FAQ</a></li>
      </ul>
    </div>
  </div>
</nav>

<!-- Container (basic Section) -->
<div id="basics" class="container-fluid">
<div class="" style="position: fixed; margin-left: 85%; ">
<a href="index.jsp"><input type="button" value="Go Back"></a>
</div>
<div class="text-center">
<h1>A guide for patients and families</h1>
</div>
  <div class="row">
    <div class="col-sm-7">
      
      <h2>What is cancer?</h2><br>
      <p>The body is made up of trillions of living cells. Normal body cells grow, divide into new cells, and die in an orderly way. During the early years of a person`s life, normal cells divide faster to allow the person to grow. After the person becomes an adult, most cells divide only to replace worn-out or dying cells or to repair injuries.
		 Cancer starts when cells in a part of the body start to grow out of control. There are many kinds of cancer, but they all start because of out-of-control growth of abnormal cells.Cancer cell growth is different from normal cell growth. Instead of dying, cancer cells continue to grow and form new, abnormal cells. Cancer cells can also 
         invade (grow into) other tissues, something that normal cells can’t do. Growing out of control and invading other tissues are what makes a cell a cancer cell.Cells become cancer cells because of damage to DNA. DNA is in every cell and directs all its actions. In a normal cell, when DNA gets damaged the cell either repairs the damage or 
         dies. In cancer cells, the damaged DNA is not repaired, but the cell doesn’t die like it should. Instead, this cell goes on making new cells that the body doesn’t need. These new cells will all have the same damaged DNA as the first cell does.People can inherit damaged DNA, but most DNA damage is caused by mistakes that happen while the 
         normal cell is reproducing or by something in our environment. In most cases, no clear cause is found.Cancer cells often form a tumor. But some cancers, like leukemias, rarely form tumors. Instead, these cancer cells involve the blood and blood-forming organs and circulate through other tissues where they grow.Cancer cells often travel 
         to other parts of the body, where they begin to grow and form new tumors that replace normal tissue. This process is called metastasis (meh-tas-tuh-sis). It happens when the cancer cells get into the bloodstream or lymph vessels of our body.
      </p>
    </div>
    <div class="col-sm-4">
      
    </div>
  </div>
</div>

<!-- Container (types Section) -->
<div id="types" class="container-fluid">
  <div class="row">
    <div class="col-sm-7">
      
      <h2>How many different types of cancer are there?</h2><br>
      <p>There are more than 100 types of cancer. Types of cancer are usually named for the organs or
       tissues where the cancers form. For example, lung cancer starts in cells of the lung, and brain
        cancer starts in cells of the brain <br><br>
        There are three main types of cell where cancer develops:<br>

		# Epithelial cells. Cancers that develop in this type of cell are called carcinomas. About 80-90%
		 of cancers are this type.<br>
		# Cells of the blood and lymphatic system. Cancers that develop in this type of cell are called 
		leukaemias and lymphomas. About 7% of cancers are this type.<br>
		# Connective tissue cells. Cancers that develop in this type of cell are called sarcomas. About 1% 
		of cancers are this type.</p><br><br>
		<h4>Cancer types by site</h4>
       <p>Most people are aware of cancer types when they are described according to where the cancer first
        started in the body (the primary site). For example, lung cancer or breast cancer. The most common 
        sites for cancer to develop include the:<br><br>

		skin<br>
		lungs<br>
		breasts<br>
		prostate
		colon and rectum (large bowel). <br><br>
      
    </div>
    <div class="col-sm-4">
      
    </div>
  </div>
</div>

<!-- Container (stages Section) -->
<div id="stages" class="container-fluid bg-grey">
  <div class="row">
    <div class="col-sm-8">
      <h2>What stage is the cancer?</h2><br>
      
      <p>The doctor also needs to know if and how far the cancer has spread from where it started. This is called the cancer stage. You may have heard other people say that their cancer was stage 1 or stage 2. Knowing the stage of the cancer helps the doctor decide what type of treatment is best.

		For each type of cancer there are tests that can be done to figure out the stage of the cancer. As a rule, a lower stage (such as a stage 1 or 2) means that the cancer has not spread very much. A higher number (such as a stage 3 or 4) means it has spread more. Stage 4 is the highest stage.

		Ask your doctor to explain the stage of your cancer and what it means for you.
      </p>
    </div>
    <div class="col-sm-4">
      
    </div>
  </div>
</div>

<!-- Container (treatment Section) -->
<div id="treatment" class="container-fluid bg-grey">
  <div class="row">
    <div class="col-sm-8">
      <h2>How is cancer treated?</h2><br>
      
      <p>The most common treatments for cancer are surgery, chemotherapy, and radiation.

		Surgery can be used to take out the cancer. The doctor might also take out some or all of the body 
		part the cancer affects. For breast cancer, part (or all) of the breast might be removed. For prostate 
		cancer, the prostate gland might be taken out. Surgery is not used for all types of cancer. For example,
 		blood cancers like leukemia are best treated with drugs.<br>
 		Chemo (short for chemotherapy) is the use of drugs to kill cancer cells or slow their growth. Some chemo 
		can be given by IV (into a vein through a needle), and others are a pill you swallow. Because chemo drugs
		 travel to nearly all parts of the body, they are useful for cancer that has spread.<br>
		 Radiation is also used to kill or slow the growth of cancer cells. It can be used alone or with surgery or 
		chemo. Radiation treatment is like getting an x-ray. Sometimes it's given by putting a seed inside the 
		cancer to give off the radiation.
      </p>
    </div>
    <div class="col-sm-4">
      
    </div>
  </div>
</div>

<!-- Container (faq Section) -->
<div id="faq" class="container-fluid">
  <div class="row">
    <div class="col-sm-8">
      <h2>Who gets cancer?</h2><br>
      
      <p>Over one and a half million new cancer cases are diagnosed each year. Anyone can get cancer
       at any age, but the risk goes up with age. About 78% of all cancers are diagnosed in people age
        of 55 and older. Cancer can be found in Americans of all racial and ethnic groups, but the rate
         of cancer occurrence (called the incidence rate) varies from group to group.
      </p><br><br>
      <h2>Can injuries cause cancer?</h2><br>
      
      <p>It's a common myth that injuries can cause cancer. But the fact is that falls, bruises, broken
       bones, or other such injuries have not been linked to cancer. Sometimes a person might visit the
        doctor for what's thought to be an injury and cancer is found at that time. But the injury did
         not cause the cancer; the cancer was already there. It also sometimes happens that a person
          will remember an injury that happened long ago in the place cancer was found.
      </p><br><br>
      <h2>What are the risk factors for cancer?</h2><br>
      
      <p>A risk factor is anything linked to your chance of getting a disease, such as cancer. Different
       cancers have different risk factors. For instance, exposing skin to strong sunlight is a risk factor
        for skin cancer, but it's not linked to colon cancer. Some risk factors can actually cause cancer,
         while others may simply be more common in people who get cancer. For example, old age by itself
          doesn't cause cancer, but it is a risk factor.
      </p><br><br>
      <h2>Is cancer contagious?</h2><br>
      
      <p>In the past, people often stayed away from someone who had cancer. They were afraid they might
       catch the disease. But cancer isn't like the flu or a cold. You can't catch cancer from someone
        who has it. You won't get cancer by being around or touching someone with cancer. Don't be afraid
         to visit someone with cancer. They need the support of their family and friends.
      </p><br><br>
      <h2>What are the side effects of cancer treatment?</h2><br>
      
      <p>The type of treatment a person gets depends on the type and stage (extent) of the cancer, their
       age and overall health, their medical history, and their personal preferences. Each drug or treatment
        plan has different side effects. It's hard to predict what side effects a person will have; even when
         people get the same treatment they can have different side effects. Some can be severe and others
          fairly mild. It's true that some people have a tough time with cancer treatment, but many others
           manage quite well. And most cancer treatment side effects can be treated.
      </p><br><br>
      
      <h2>What is remission?</h2><br>
      
      <p>Some people think that remission means the cancer has been cured, but this isn't always the case.
       Remission is a period of time when the cancer is responding to treatment or is under control. In a
        complete remission, all the signs and symptoms of cancer go away and cancer cells can't be detected
         by any of the tests available for that cancer. It's also possible for a patient to have a partial
          remission. This is when the cancer shrinks but doesn't completely disappear. Remissions can last
           anywhere from several weeks to many years. Complete remissions may go on for years and over time
            be considered cures. If the cancer returns (recurs), another remission may be possible with
             further treatment.
      </p><br><br>
    </div>
    <div class="col-sm-4">
      
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
</body>
</html>