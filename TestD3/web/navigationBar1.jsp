<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Doctor Donor Diary</title>
   
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
         height: auto;
	 width:auto;	
	 padding: 20px;
	 text-align: center;
	 color: white;
	 float: center;
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
    height: 200px;
    width:200px;
    
    
}
 .card .btn:hover {
	 background: #f68657;
}
 

    </style> 
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>   
<body>
    <div>
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
                    
                    <div class="icon">
                        <i class="fa fa-file" aria-hidden="true"></i>	
                        <i class="fa fa-file" aria-hidden="true"></i>		
                    </div>
                    <div class="name"><span data-text="About">About</span></div>
                
                </a>
            </li>
            
            <li>
                <a href="#">
               
                    <div class="icon">
                        <i class="fa fa-users" aria-hidden="true"></i>	
                        <i class="fa fa-users" aria-hidden="true"></i>			
                    </div>
                    <div class="name"><span data-text="Team">Team</span></div>
                 
                </a>
            </li>
            <li>
                <a href="ContactForm.jsp">
                    <div class="icon">
                        <i class="fa fa-envelope" aria-hidden="true"></i>		
                        <i class="fa fa-envelope" aria-hidden="true"></i>		
                    </div>
                    <div class="name"><span data-text="Contact">Contact</span></div>
                   
                </a>
            </li>
            <li>
                <a href="Logout.jsp">
                    <div class="icon">
                        <i class="fa fa-sign-out" aria-hidden="true"></i>		
                        <i class="fa fa-sign-out" aria-hidden="true"></i>		
                    </div>
                    <div class="name"><span data-text="Contact">Logout</span></div>
                   
                </a>
            </li> 
     </ul><br><br><br><br><br>
    </div>
    
    
</body>
</html>

