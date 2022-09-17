<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> <title>Doctor Donor Diary</title>
   
    <link rel="stylesheet" type="text/css" href="nav.css">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <style>
body{
	margin: 0;
	padding: 0;
	font-family: sans-serif;
}
ul{
	position:absolute;
	top: 8%;
	left: 50%;
	transform: translate(-50%,-50%);
	margin: 0;
	padding: 20px 0; 
	background: #fff; 
	display: flex; 
	border-radius: 10px; 
	box-shadow: 0 10px 30px rgba(0,0,0,.3)
}
ul li{
	list-style: none;
	text-align: center;
	display: block;
	border-right: 1px solid rgba(0,0,0,0.2);
}
ul li:last-child{
	border-right: none;
}
ul li a{
	text-decoration: none;
	padding: 0 50px;
	display: block;
}
ul li a .icon{
	width: 40px;
	height: 40px; 
	text-align: center;
	
	overflow: hidden;
	margin: 0 auto 10px;
	
}
ul li a .icon .fa{
	width: 100%;
	height: 100%;
	line-height: 40px;
	font-size: 34px;
	transition: 0.5s; 
	color: #000;
}
ul li a .icon .fa:last-child{
	color: aqua;
}
ul li a:hover .icon .fa{
	transform: translateY(-100%); 
}
ul li a .name{
	position: relative;
	height: 20px; 
	width: 100%;
	display: block;
	overflow: hidden;
}
ul li a .name span{
	display: block;
	position: relative;
	color: #000;
	font-size: 18px; 
	line-height: 20px;
	transition: 0.5s; 
	
}
ul li a .name span:before{
	content: attr(data-text);
	position: absolute;
	top: -100%;
	width: 100%;
	left: 0;
	height: 1005px;
	color: aqua;
}
@import  url(https://fonts.googleapis.com/css?family=Varela+Round);
 *, *:before, *:after {
	 box-sizing: border-box;
}
 body {
	 background: #383a3f;
	 font-family: "Varela Round", sans-serif;
}
 .card {
	 background: #1f2124;
	 box-shadow: 0 0 20px rgba(0, 0, 0, 0.4);
	 border-radius: 5px;
	 margin: 50px 20px 20px 20px;
	 width: calc(33.3333% - 40px);	
	 padding: 20px;
	 text-align: center;
	 color: white;
	 float: left;
} 
 @media (max-width: 768px) {
	 .card {
		 margin: 10px 20px;
		 width: calc(100% - 40px);
	}
	 .card:first-child {
		 margin-top: 20px;
	}
}
 .card:nth-child(2) {
	 margin: 20px 0px;
	 width: 33.3333%;
	 padding: 50px 20px;
}
 @media (max-width: 768px) {
	 .card:nth-child(2) {
		 margin: 10px 20px;
		 width: calc(100% - 40px);
	}
}
 .card .title {
	 font-size: 25px;
}
 .card .icon {
	align-content: center;
}
 .card .icon svg {
	 width: 100px;
	 height: 100px;
}
 .card .icon svg path {
	 fill: #f6b352;
         
}
 .card .features ul {
	 padding: 0;
	 margin: 20px 0 50px 0;
	 list-style-type: none;
}
 .card .features ul li {
	 margin: 10px 0;
	 font-size: 14px;
}
 .card .features ul li span {
	 border-bottom: 2px dotted #f6b352;
}
 .card .btn {
	 display: block;
	 background: #f6b352;
	 color: white;
	 padding: 15px 20px;
	 margin: 20px 0;
	 border-radius: 5px;
	 box-shadow: rgba(0, 0, 0, 0.9);
	 transition: all 200ms ease-in-out;
	 text-decoration: none;
}
.user{
    height: 300px;
    width:300px;
    
    
}
 .card .btn:hover {
	 background: #f68657;
}

ul li a:hover .name span{
	transform: translateY(20px);
}
.footer-dark {
  padding:50px 100px;
  color:#f0f9ff;
  background-color:#282d32;
}

.footer-dark h3 {
  margin-top:0;
  margin-bottom:12px;
  font-weight:bold;
  font-size:16px;
}

.footer-dark ul {
  padding:0;
  list-style:none;
  line-height:1.6;
  font-size:14px;
  margin-bottom:0;
}

.footer-dark ul a {
  color:inherit;
  text-decoration:none;
  opacity:0.6;
}

.footer-dark ul a:hover {
  opacity:0.8;
}

@media (max-width:767px) {
  .footer-dark .item:not(.social) {
    text-align:center;
    padding-bottom:20px;
  }
}

.footer-dark .item.text {
  margin-bottom:36px;
}

@media (max-width:767px) {
  .footer-dark .item.text {
    margin-bottom:0;
  }
}

.footer-dark .item.text p {
  opacity:0.6;
  margin-bottom:0;
}

.footer-dark .item.social {
  text-align:center;
}

@media (max-width:991px) {
  .footer-dark .item.social {
    text-align:center;
    margin-top:20px;
  }
}

.footer-dark .item.social > a {
  font-size:20px;
  width:36px;
  height:36px;
  line-height:36px;
  display:inline-block;
  text-align:center;
  border-radius:50%;
  box-shadow:0 0 0 1px rgba(255,255,255,0.4);
  margin:0 8px;
  color:#fff;
  opacity:0.75;
}

.footer-dark .item.social > a:hover {
  opacity:0.9;
}

.footer-dark .copyright {
  text-align:center;
  padding-top:24px;
  opacity:0.3;
  font-size:13px;
  margin-bottom:0;
}
.ws6 {font-size: 8px;}
.ws7 {font-size: 9.3px;}
.ws8 {font-size: 11px;}
.ws9 {font-size: 12px;}
.ws10 {font-size: 13px;}
.ws11 {font-size: 15px;}
.ws12 {font-size: 16px;}
.ws14 {font-size: 19px;}
.ws16 {font-size: 21px;}
.ws18 {font-size: 24px;}
.ws20 {font-size: 27px;}
.ws22 {font-size: 29px;}
.ws24 {font-size: 32px;}
.ws26 {font-size: 35px;}
.ws28 {font-size: 37px;}
.ws36 {font-size: 48px;}
.ws48 {font-size: 64px;}
.ws72 {font-size: 96px;}
.wpmd {font-size: 13px;font-family: Arial,Helvetica,Sans-Serif;font-style: normal;font-weight: normal;}
/*----------Para Styles----------*/

    </style>
    
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>   
<body>
     <ul>
            <li>
                <a href="index.jsp">
                    <div class="icon">
                        <i class="fa fa-home" aria-hidden="true"></i>	
                        <i class="fa fa-home" aria-hidden="true"></i>	
                    </div>
                    <div class="name"><span data-text="Home">Home</span></div>
                </a>
            </li>
            <li>
                <a href="AboutUs.jsp">
                    <!-- this anchor text for link your About page to another page -->
                    <div class="icon">
                        <i class="fa fa-file" aria-hidden="true"></i><!-- this is file icon link get form fornt-awesome icon for about -->	
                        <i class="fa fa-file" aria-hidden="true"></i><!-- copy and paste the file icon link here for hover effect -->		
                    </div>
                    <div class="name"><span data-text="About">About</span></div>
                    <!-- we are create second menu item name About -->
                </a>
            </li>
         
            <li>
                <a href="ContactForm.jsp">
                    <!-- this anchor text for link your home to another page -->
                    <div class="icon">
                        <i class="fa fa-envelope" aria-hidden="true"></i><!-- this is picture icon link get form fornt-awesome icon for portfolio --> 		
                        <i class="fa fa-envelope" aria-hidden="true"></i><!-- copy and paste the home icon link here for hover effect -->		
                    </div>
                    <div class="name"><span data-text="Contact">Contact</span></div>
                    <!-- we create first menu item name home -->
                </a>
            </li>
            
            
            <li>
                <a href="LoginPage.jsp">
                    <!-- this anchor text for link your login page to another page -->
                    <div class="icon">
                        <i class="fa fa-sign-in" aria-hidden="true"></i><!-- this is sign in icon link get form fornt-awesome icon for Login --> 		
                        <i class="fa fa-sign-in" aria-hidden="true"></i><!-- copy and paste the sign in  icon link here for hover effect -->		
                    </div>
                    <div class="name"><span data-text="Login">Login</span></div>
                    <!-- we are create tenth menu item name login panel -->
                </a>
            </li>
        </ul>
<br><br>
   
<br><br>  <br><br> <div >
<div class="card">

  <div class="title">Doctor</div>

  <div class="icon">
<img src="img/doctorimg.jpg" class="user" alt="">
</div>
<a href="SearchDoctor.jsp" class="btn">Find A Doctor</a>
</div>
<div class="card">
<div class="title">Blood Donor</div>
<div class="icon">
    <img src="img/blooddonorimg.jpg" class='user'>
</div>
<a href="SearchDonor.jsp" class="btn">Find a Blood Donor</a>
</div>
      <div class="card">
<div class="title">Become a Blood Donor</div>
<div class="icon">
    <img src="img/BecomeDonor.jpg" class='user'>
</div>
<a href="RegisterDonor.jsp" class="btn">Register Yourself</a>
</div>
      <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

<footer>
    <div class="footer-dark">
<div class="container">
<div class="row">
<h3>Doctor Donor Diary</h3>
<p>
Welcome to D3 - The Instant Medical Help site . Our aim is to make this the most authentic updated resource for Indian medical&nbsp; information.There are nearly 1500 sites in the Directory, and with simple and advanced searching facilities you will be able to find what you need effortlessly.
<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;We also encourage every medical entity - including small Nursing homes, Polyclinics etc to have their own websites, by offering affordable solutions for creating them and for updating them – either on their own, or with our help.
<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;With this Directory we believe that we’d never have to say “Indian medical information is difficult to find”
<br>As we saw in course of Corona crisis we were helpless and were not able to find and contact any doctor nearby us or in our locality, we aim to overcome this while creating this project
</p>
</div>  
<p class="copyright" style="text-align:right"></p>
</div></div>
    <div> <%@include file="Footer.html"%></div>
</footer>
</div>

</div>
</body>
</html>
