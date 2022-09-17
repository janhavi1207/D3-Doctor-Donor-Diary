<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donor Registration</title>
    
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
    form#form2 {
        line-height: 40px;
        width: 50%;
        margin: auto;
       
    }
    body{ 
/*        color: blueviolet;*/
        font-size: 18px;
    }

</style>

    <script lang="javascript">
         function validateDetails()
         { 
            var fname1,lname1,mob,age, pass,repass;
            
            fname1=document.getElementById("fname").value;
            lname1=document.getElementById("lname").value;
            mob=document.getElementById("contact").value;
            age=document.getElementById("age").value;
//            if(fName=="")
//            {
//              alert("Name can't be left blank");
//              document.getElementById("fname").focus();
//              return false;
//            }
//            if(lName=="")
//            {
//              alert("Name can't be left blank");
//              document.getElementById("lname").focus();
//              return false;
//            }

                    pass=document.getElementById("pass").value;
                    repass=document.getElementById("repass").value;
                    
                    if(!(pass.equals(repass))){
                        alert("New Password and Re-enter Password does not match");
                        return false;
                    }
                    
            if(fname1!="")
            {
              
               var valid="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ ";   
               for(i=0;i<fname1.length;i++)
               {
                   n=fname1.charAt(i);
                   if(valid.indexOf(n)==-1)
                   {
                      alert("Invalid data only character allowed");
                      document.getElementById("fname").focus();
                      document.getElementById("fname").select(); 
                      return false;
                   }    
               }   
              
               
            }
            if(lname1!="")
            {
              
               var valid="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ ";   
               for(i=0;i<lname1.length;i++)
               {
                   n=lname1.charAt(i);
                   if(valid.indexOf(n)==-1)
                   {
                      alert("Invalid data only character allowed");
                      document.getElementById("lname").focus();
                      document.getElementById("lname").select(); 
                      return false;
                   }    
               }   
              
               
            }
            
            if(mob!="")  
            {
                var valid="1234567890";   
               for(i=0;i<mob.length;i++)
               {
                   n=mob.charAt(i);
                   if(valid.indexOf(n)==-1)
                   {
                      alert("Invalid data only number allowed");
                      document.getElementById("contact").focus();
                      document.getElementById("contact").select(); 
                      return false;
                   }    
               }   
            }
            if(mob!="")  
            {
                var valid="987";   
                   n=mob.charAt(0);
                   if(valid.indexOf(n)==-1)
                   {
                      //alert("Invalid first digit of contact"); 
                      alert("Invalid contact");
                      document.getElementById("contact").focus();
                      document.getElementById("contact").select(); 
                      return false;
                   }    
               }   
            if(mob!="")  
            {
                if(mob.length!=10)
                {
                    alert("mobile no should be of 10 digits");
                    return false;
                }
            }
            if(age<18){
                alert("Sorry!!You are not eligible for donating blood");
                return false;
            }
            
            return true;
        }   
        
         function validate(){
                var stateSelect = document.getElementById("state").value;
                var citySelect = document.getElementById("city").value;
                var areaSelect = document.getElementById("area").value;
                var pincode = document.getElementById("pin").value;
                
//                if (stateSelect == "")
//                {
//                    alert("Please select state");
//                //alert("hii");
//                  document.getElementById("state").focus();
//                    return false;
//                }
//                if (citySelect == "")
//                {
//                    alert("Please select city");
//                    document.getElementById("city").focus();
//                    return false;
//                }               
        }
       
         var stateObject1 = 
                 {
"Madhya Pradesh":{
"Alirajpur": [""],
"Ashok Nagar": [""],
"Balaghat":[""],
"Bhopal": [""],
"Ganjbasoda": [""],
"Gwalior": [""],
"Indore": ["Cloth Market","Agra","Ajnod","Alwasa","Ambachandan","ArmyHeadquarter","Attahada","Atwada","Aurangpura","Bachhoda","Badgonda","BadodiaKhan","Bai","BalodaTkun","Banadia","Baoliakhurd","BarlaiJagir","Betma","Bhagana","Bhagora","Bhanwrasala","Bhatkhedi","Bhilbadoli","BicholiMardana","BijasanRoad","Binawda","Burankhedi","Chadoda","Chambal","Chittoda","Choral","Chordia","Dakachia","Datoda","Depalpur","Dhannad","Dharnaka","Dudhia","Farkodha","FcGanj","Gandhinagar","Gautampura","Gawlipalasia","Girota","Gokulpur","Gujarkheda","Guran","GurunanakChauk","Harsola","Hasalpur","Hatod","Cgocomplex","Cat","City-2","Clothmarket","Collectorate","Courts","Ddunagar","Govt.college","Industrialarea","Javeribagh","Kanadiaroad","Kumarkhadi","Malwamill","Manoramaganj","Nagar","Pardesipura","R.s.s.nagar","Rajmohalla","Rambagh","Siyaganj","Tillaknagar","Tukoganj","Uchchanyayalay","IndustrialEstate","Jalodiyagyan","JamburdiSarwar","Jamburdihapsi","Jamli","Jhalaria","Jindakheda","Joshiguradia","Juni","Kachalia","KadwaliBujurg","Kalaria","Kallibillod","Kalmer","Kamadpur","Kampel","Kanadia","KanadiaRoad","Kankariapal","Kanwasa","Karadia","Kasturbagram","Kelod","Kelodkartal","KhatiwalaTank","KhediSihod","Khudel","Khurdi","Kishanganj","Kodria","Kudana","Lasudia","Limbiodapar","LokmanyaNagar","Machal","Machla","Maithwada","Manglia","Manpur","Men","Mendakwasa","Mhow","MhowBarracks","MhowCantt","MhowCollegeofcombat","MhowGaon","MhowInfantryschool","MhowRailwaystattion","Murkheda","NandaNagar","Neori","Pagnispaga","Palakhedi","Palda","Paliya","Panod","Paphund","Pedmi","Pigdamber","Pipalda","Piwdai","RadioColony","RajendraNagar","Rajoda","Rangwasa","Rao","Rasalpura","Rolai","SadarBazar","Sagdod","Sanawadia","Sanwer","SanwerLinkroad","SemliaChau","Simrol","Sivani","Solsinda","SonwayBhensolayaudygikkshet","SudamaNagar","Sumtha","Tihi","Tillorbujurg","Tillorkhurd","Todi","Umaria","Vallabhnagar","VijayNagar","YashwantNagar"],
"Itarsi": [""],
"Jabalpur": [""],
"Lahar": [""],
"Maharajpur": [""],
"Mahidpur": [""],
"Maihar": [""],
"Malaj Khand": [""],
"Manasa": [""],
"Manawar": [""],
"Mandideep": [""],
"Mandla": [""],
"Mandsaur": [""],
"Mauganj": [""]
}
}


         var stateObject2 = 
                 {
"Madhya Pradesh":{
"Alirajpur": [""],
"Ashok Nagar": [""],
"Balaghat":[""],
"Bhopal": [""],
"Ganjbasoda": [""],
"Gwalior": [""],
"Indore": ["452002","Agra","Ajnod","Alwasa","Ambachandan","ArmyHeadquarter","Attahada","Atwada","Aurangpura","Bachhoda","Badgonda","BadodiaKhan","Bai","BalodaTkun","Banadia","Baoliakhurd","BarlaiJagir","Betma","Bhagana","Bhagora","Bhanwrasala","Bhatkhedi","Bhilbadoli","BicholiMardana","BijasanRoad","Binawda","Burankhedi","Chadoda","Chambal","Chittoda","Choral","Chordia","Dakachia","Datoda","Depalpur","Dhannad","Dharnaka","Dudhia","Farkodha","FcGanj","Gandhinagar","Gautampura","Gawlipalasia","Girota","Gokulpur","Gujarkheda","Guran","GurunanakChauk","Harsola","Hasalpur","Hatod","Cgocomplex","Cat","City-2","Clothmarket","Collectorate","Courts","Ddunagar","Govt.college","Industrialarea","Javeribagh","Kanadiaroad","Kumarkhadi","Malwamill","Manoramaganj","Nagar","Pardesipura","R.s.s.nagar","Rajmohalla","Rambagh","Siyaganj","Tillaknagar","Tukoganj","Uchchanyayalay","IndustrialEstate","Jalodiyagyan","JamburdiSarwar","Jamburdihapsi","Jamli","Jhalaria","Jindakheda","Joshiguradia","Juni","Kachalia","KadwaliBujurg","Kalaria","Kallibillod","Kalmer","Kamadpur","Kampel","Kanadia","KanadiaRoad","Kankariapal","Kanwasa","Karadia","Kasturbagram","Kelod","Kelodkartal","KhatiwalaTank","KhediSihod","Khudel","Khurdi","Kishanganj","Kodria","Kudana","Lasudia","Limbiodapar","LokmanyaNagar","Machal","Machla","Maithwada","Manglia","Manpur","Men","Mendakwasa","Mhow","MhowBarracks","MhowCantt","MhowCollegeofcombat","MhowGaon","MhowInfantryschool","MhowRailwaystattion","Murkheda","NandaNagar","Neori","Pagnispaga","Palakhedi","Palda","Paliya","Panod","Paphund","Pedmi","Pigdamber","Pipalda","Piwdai","RadioColony","RajendraNagar","Rajoda","Rangwasa","Rao","Rasalpura","Rolai","SadarBazar","Sagdod","Sanawadia","Sanwer","SanwerLinkroad","SemliaChau","Simrol","Sivani","Solsinda","SonwayBhensolayaudygikkshet","SudamaNagar","Sumtha","Tihi","Tillorbujurg","Tillorkhurd","Todi","Umaria","Vallabhnagar","VijayNagar","YashwantNagar"],
"Itarsi": [""],
"Jabalpur": [""],
"Lahar": [""],
"Maharajpur": [""],
"Mahidpur": [""],
"Maihar": [""],
"Malaj Khand": [""],
"Manasa": [""],
"Manawar": [""],
"Mandideep": [""],
"Mandla": [""],
"Mandsaur": [""],
"Mauganj": [""]
}
}

        window.onload=function(){
                var stateSel = document.getElementById("state");
                var citySel = document.getElementById("city");
                var areaSel = document.getElementById("area");
                 var pinSel = document.getElementById("pin");
                for (var x in stateObject1) {
                    stateSel.options[stateSel.options.length] = new Option(x, x);
                }
                stateSel.onchange = function () {
                        //empty Chapters- and Topics- dropdowns
                        areaSel.length = 1;
                        citySel.length = 1;
                        pinSel.length = 1;
                    //display correct values
                    for (var y in stateObject1[this.value]) {
                        citySel.options[citySel.options.length] = new Option(y, y);
                    }
                }
                 
                citySel.onchange = function () {
                        //empty Chapters dropdown
                        areaSel.length = 1;
                        pinSel.length = 1;
                    //display correct values
                    var z = stateObject1[stateSel.value][this.value];
                    for (var i = 0; i < z.length; i++) {
                        areaSel.options[areaSel.options.length] = new Option(z[i], z[i]);
                    }
                    var z1 = stateObject2[stateSel.value][this.value];
                    for (var i = 0; i < z1.length; i++) {
                        pinSel.options[pinSel.options.length] = new Option(z1[i], z1[i]);
                    }
                }
        } 
        
        </script>
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
     </ul><br><br><br><br><br>
    </div>
    <div class="card">
    <h1 style="color:whitesmoke; text-align: center; line-height: 50px;"><u> <strong> Register as a Blood-Donor</strong></u></h1>
    <form action="RegisterDonor" method="post" name="form2" id="form2">
        <center>
            <table>
                <tbody>
                    <tr>
                        <th>First Name:</th>
                        <td><input type="text" name="fname" id="fname" required></td>
                    </tr>
                    <tr>
                        <th> Last Name:</th>
                        <td><input type="text" name="lname" id="lname" required></td>
                    </tr>
                    <tr>
                        <th>Blood Group</th>
                        <td id="bloodbox"><select name="bloodgrp" id="bloodgrp" required>
                                <option value="--">------------Select------------</option>
                                <option value="O+">O+</option>
                                <option value="O-">O-</option>
                                <option value="A+">A+</option>
                                <option value="A-">A-</option>
                                <option value="B+">B+</option>
                                <option value="B-">B-</option>
                                <option value="AB+">AB+</option>
                                <option value="AB-">AB-</option>
                            </select></td>
                    </tr>
                    <tr>
                        <th>Age:</th>
                        <td><input type="number" name="age" id="age" required>
                    </tr>
                    <tr>
                        <th>Gender:</th>
                        <td><select name="gender" id="gender" required>
                                <option value="--">------------Select------------</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option> 
                                <option value="Other">Other</option>
                            </select></td>
                    </tr>
                    <tr>
                        <th>Mobile No:</th>
<!--                        <td><input type="tel" name="contact" id="contact" pattern="^\+91(7\d|8\d|9\d)\d{9}$" required>-->
<td><input type="tel" name="contact" id="contact"  required>
                    </tr>
                    <tr>
                        <th>Email:</th>
                        <td><input type="email" name="email" id="email" required>
                    </tr>
                    <tr>
                        <th>Last date of donation:</th>
                        <td><input type="date" name="donationDate" id="donationDate" required>
                    </tr>
                    <tr>
                        <th>User Id:</th>
                        <td><input type="text" name="userid" id="userid" required></td>
                    </tr>
                    <tr>
                        <th> Password:</th>
                        <td><input type="password" name="pass" id="pass" required></td>
                    </tr>
                    <tr>
                        <th>Re-type Password:</th>
                        <td><input type="password" name="repass" id="repass" required></td>
                    </tr>
                    <tr>
                        <th>State:</th>
                        <td><select name="state" id="state" required>
                                <option value="" selected="selected">------------Select------------</option>
                            </select></td>
                    </tr>
                    <tr>
                        <th>City:</th>
                        <td><select name="city" id="city" required>
                                <option value="" selected="selected">------------Select------------</option>
                            </select></td>
                    <tr>
                        <th>Area:</th>
                        <td><select name="area" id="area" required >
                                <option value="" selected="selected">------------Select------------</option>
                            </select></td>
                    </tr>
                    <tr>
                        <th>Pincode:</th>
                        <td><select name="pin" id="pin" required >
                                <option value="" selected="selected">------------Select------------</option>
<!--                                <option value="452002">452002</option>
                                <option value="452001">452009</option>
                                <option value="452009">452001</option>-->
                            </select></td>
                    </tr>
                    <tr>
                        <th>Please confirm your availability to donate blood</th>
                        <td><select name="avail" id="avail" required>
                                <option value="--">------------Select------------</option>
                                <option value="Y">available</option>
                                <option value="N">unavailable</option>
                            </select></td>
                    </tr>
                </tbody>
            </table>
        </center>
        <br>
        <input type="checkbox" required>I authorise this website to display my name and telephone number, so that the
        needy could contact me, as and when there is an emergency. 
        <center> <input type="submit" value="Submit" onclick="return validateDetails();">
            <input type="reset" value="Reset">
        </center>
        <br><br>
    </form>
    </div>
</body>
</html>