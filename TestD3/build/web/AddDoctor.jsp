
<%@page import="model.Doctor" %>
<%@page import="dao.DocDAO" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script language="javascript">
       window.history().forward();
</script>
<% 
   //if(session.isNew())
    // response.sendRedirect("AdminLogin.jsp");
%>
<%! 
int doc_id;
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Doctor</title>
         <link rel="stylesheet" type="text/css" href="nav.css">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
        <style>
    form#form3 {
        line-height: 43px;
        width: 65%;
        margin: auto;
        color: white;
        background-color: lightgray;
        padding: 15px 15px;
       
    }
    body{ 
/*        color: blueviolet;*/
        font-size: 18px;
        background-color: lightgray;
        margin: 0;
	padding: 0;
	font-family: sans-serif;
    }
    .links-container {
        color: white; 
        display: inline-block;
        margin-top: 10px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items:right;
        gap: 20px;
      }
      .links-container a{
        color:white;
        width: 50px;
    padding: 3px 2px;
    border:2px solid black; 
    border-radius: 5px;
    background-color: black;
    text-decoration: white;
    font-size: 15px;
    color: white;
      }
      .links-container a:hover{
     opacity:0.8;
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
	 background: black;
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
	 background:lightgray ;
             /*#f6b352;*/
	 color: white;
	 padding: 15px 20px;
	 margin: 20px 0;
	 border-radius: 5px;
	 box-shadow: rgba(0, 0, 0, 0.9);
	 transition: all 200ms ease-in-out;
	 text-decoration: none;
         height: 30 px;
         width: 30 px;
         align-content: left;
         box-sizing: padding box;
        
}
.user{
    height: 200px;
    width:200px;
    
    
}
 .card .btn:hover {
	 background: gray;
             /*#f68657;*/
}
 
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script language="javascript">
         function validateDetails()
         { 
            var fname1,lname1,mob;
            
            fname1=document.getElementById("fname").value;
            lname1=document.getElementById("lname").value;
            mob=document.getElementById("contact").value;
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
                     {
	"Andaman and Nicobar Islands": {
		"Port Blair": [""]
	},
	"Haryana": {
		"Faridabad": [""],
		"Gurgaon": [""],
		"Hisar": [""],
		"Rohtak": [""],
		"Panipat": [""],
		"Karnal": [""],
		"Sonipat": [""],
		"Yamunanagar": [""],
		"Panchkula": [""],
		"Bhiwani": [""],
		"Bahadurgarh": [""],
		"Jind": [""],
		"Sirsa": [""],
		"Thanesar": [""],
		"Kaithal": [""],
		"Palwal": [""],
		"Rewari": [""],
		"Hansi": [""],
		"Narnaul": [""],
		"Fatehabad": [""],
		"Gohana": [""],
		"Tohana": [""],
		"Narwana": [""],
		"Mandi Dabwali": [""],
		"Charkhi Dadri": [""],
		"Shahbad": [""],
		"Pehowa": [""],
		"Samalkha": [""],
		"Pinjore": [""],
		"Ladwa": [""],
		"Sohna": [""],
		"Safidon": [""],
		"Taraori": [""],
		"Mahendragarh": [""],
		"Ratia": [""],
		"Rania": [""],
		"Sarsod": [""]
	},
	"Tamil Nadu": {
		"Chennai": [""],
		"Coimbatore": [""],
		"Madurai": [""],
		"Tiruchirappalli": [""],
		"Salem": [""],
		"Tirunelveli": [""],
		"Tiruppur": [""],
		"Ranipet": [""],
		"Nagercoil": [""],
		"Thanjavur": [""],
		"Vellore": [""],
		"Kancheepuram": [""],
		"Erode": [""],
		"Tiruvannamalai": [""],
		"Pollachi": [""],
		"Rajapalayam": [""],
		"Sivakasi": [""],
		"Pudukkottai": [""],
		"Neyveli (TS)": [""],
		"Nagapattinam": [""],
		"Viluppuram": [""],
		"Tiruchengode": [""],
		"Vaniyambadi": [""],
		"Theni Allinagaram": [""],
		"Udhagamandalam": [""],
		"Aruppukkottai": [""],
		"Paramakudi": [""],
		"Arakkonam": [""],
		"Virudhachalam": [""],
		"Srivilliputhur": [""],
		"Tindivanam": [""],
		"Virudhunagar": [""],
		"Karur": [""],
		"Valparai": [""],
		"Sankarankovil": [""],
		"Tenkasi": [""],
		"Palani": [""],
		"Pattukkottai": [""],
		"Tirupathur": [""],
		"Ramanathapuram": [""],
		"Udumalaipettai": [""],
		"Gobichettipalayam": [""],
		"Thiruvarur": [""],
		"Thiruvallur": [""],
		"Panruti": [""],
		"Namakkal": [""],
		"Thirumangalam": [""],
		"Vikramasingapuram": [""],
		"Nellikuppam": [""],
		"Rasipuram": [""],
		"Tiruttani": [""],
		"Nandivaram-Guduvancheri": [""],
		"Periyakulam": [""],
		"Pernampattu": [""],
		"Vellakoil": [""],
		"Sivaganga": [""],
		"Vadalur": [""],
		"Rameshwaram": [""],
		"Tiruvethipuram": [""],
		"Perambalur": [""],
		"Usilampatti": [""],
		"Vedaranyam": [""],
		"Sathyamangalam": [""],
		"Puliyankudi": [""],
		"Nanjikottai": [""],
		"Thuraiyur": [""],
		"Sirkali": [""],
		"Tiruchendur": [""],
		"Periyasemur": [""],
		"Sattur": [""],
		"Vandavasi": [""],
		"Tharamangalam": [""],
		"Tirukkoyilur": [""],
		"Oddanchatram": [""],
		"Palladam": [""],
		"Vadakkuvalliyur": [""],
		"Tirukalukundram": [""],
		"Uthamapalayam": [""],
		"Surandai": [""],
		"Sankari": [""],
		"Shenkottai": [""],
		"Vadipatti": [""],
		"Sholingur": [""],
		"Manachanallur": [""],
		"Viswanatham": [""],
		"Polur": [""],
		"Panagudi": [""],
		"Uthiramerur": [""],
		"Thiruthuraipoondi": [""],
		"Pallapatti": [""],
		"Ponneri": [""],
		"Lalgudi": [""],
		"Natham": [""],
		"Unnamalaikadai": [""],
		"P.N.Patti": [""],
		"Tharangambadi": [""],
		"Tittakudi": [""],
		"Pacode": [""],
		"O' Valley": [""],
		"Suriyampalayam": [""],
		"Sholavandan": [""],
		"Thammampatti": [""],
		"Namagiripettai": [""],
		"Peravurani": [""],
		"Parangipettai": [""],
		"Pudupattinam": [""],
		"Pallikonda": [""],
		"Sivagiri": [""],
		"Punjaipugalur": [""],
		"Padmanabhapuram": [""],
		"Thirupuvanam": [""]
	},
	"Madhya Pradesh": {
		"Alirajpur": [""],
		"Ashok Nagar": [""],
		"Balaghat": [""],
		"Bhopal": [""],
		"Ganjbasoda": [""],
		"Gwalior": [""],
		"Indore": ["Cloth Market", "Agra", "Ajnod", "Alwasa", "Ambachandan", "ArmyHeadquarter", "Attahada", "Atwada", "Aurangpura", "Bachhoda", "Badgonda", "BadodiaKhan", "Bai", "BalodaTkun", "Banadia", "Baoliakhurd", "BarlaiJagir", "Betma", "Bhagana", "Bhagora", "Bhanwrasala", "Bhatkhedi", "Bhilbadoli", "BicholiMardana", "BijasanRoad", "Binawda", "Burankhedi", "Chadoda", "Chambal", "Chittoda", "Choral", "Chordia", "Dakachia", "Datoda", "Depalpur", "Dhannad", "Dharnaka", "Dudhia", "Farkodha", "FcGanj", "Gandhinagar", "Gautampura", "Gawlipalasia", "Girota", "Gokulpur", "Gujarkheda", "Guran", "GurunanakChauk", "Harsola", "Hasalpur", "Hatod", "Cgocomplex", "Cat", "City-2", "Clothmarket", "Collectorate", "Courts", "Ddunagar", "Govt.college", "Industrialarea", "Javeribagh", "Kanadiaroad", "Kumarkhadi", "Malwamill", "Manoramaganj", "Nagar", "Pardesipura", "R.s.s.nagar", "Rajmohalla", "Rambagh", "Siyaganj", "Tillaknagar", "Tukoganj", "Uchchanyayalay", "IndustrialEstate", "Jalodiyagyan", "JamburdiSarwar", "Jamburdihapsi", "Jamli", "Jhalaria", "Jindakheda", "Joshiguradia", "Juni", "Kachalia", "KadwaliBujurg", "Kalaria", "Kallibillod", "Kalmer", "Kamadpur", "Kampel", "Kanadia", "KanadiaRoad", "Kankariapal", "Kanwasa", "Karadia", "Kasturbagram", "Kelod", "Kelodkartal", "KhatiwalaTank", "KhediSihod", "Khudel", "Khurdi", "Kishanganj", "Kodria", "Kudana", "Lasudia", "Limbiodapar", "LokmanyaNagar", "Machal", "Machla", "Maithwada", "Manglia", "Manpur", "Men", "Mendakwasa", "Mhow", "MhowBarracks", "MhowCantt", "MhowCollegeofcombat", "MhowGaon", "MhowInfantryschool", "MhowRailwaystattion", "Murkheda", "NandaNagar", "Neori", "Pagnispaga", "Palakhedi", "Palda", "Paliya", "Panod", "Paphund", "Pedmi", "Pigdamber", "Pipalda", "Piwdai", "RadioColony", "RajendraNagar", "Rajoda", "Rangwasa", "Rao", "Rasalpura", "Rolai", "SadarBazar", "Sagdod", "Sanawadia", "Sanwer", "SanwerLinkroad", "SemliaChau", "Simrol", "Sivani", "Solsinda", "SonwayBhensolayaudygikkshet", "SudamaNagar", "Sumtha", "Tihi", "Tillorbujurg", "Tillorkhurd", "Todi", "Umaria", "Vallabhnagar", "VijayNagar", "YashwantNagar"],
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
	},
	"Jharkhand": {
		"Dhanbad": [""],
		"Ranchi": [""],
		"Jamshedpur": [""],
		"Bokaro Steel City": [""],
		"Deoghar": [""],
		"Phusro": [""],
		"Adityapur": [""],
		"Hazaribag": [""],
		"Giridih": [""],
		"Ramgarh": [""],
		"Jhumri Tilaiya": [""],
		"Saunda": [""],
		"Sahibganj": [""],
		"Medininagar (Daltonganj)": [""],
		"Chaibasa": [""],
		"Chatra": [""],
		"Gumia": [""],
		"Dumka": [""],
		"Madhupur": [""],
		"Chirkunda": [""],
		"Pakaur": [""],
		"Simdega": [""],
		"Musabani": [""],
		"Mihijam": [""],
		"Patratu": [""],
		"Lohardaga": [""],
		"Tenu dam-cum-Kathhara": [""]
	},
	"Mizoram": {
		"Aizawl": [""],
		"Lunglei": [""],
		"Saiha": [""]
	},
	"Nagaland": {
		"Dimapur": [""],
		"Kohima": [""],
		"Zunheboto": [""],
		"Tuensang": [""],
		"Wokha": [""],
		"Mokokchung": [""]
	},
	"Himachal Pradesh": {
		"Shimla": [""],
		"Mandi": [""],
		"Solan": [""],
		"Nahan": [""],
		"Sundarnagar": [""],
		"Palampur": [""],
		"Kullu": [""]
	},
	"Tripura": {
		"Agartala": [""],
		"Udaipur": [""],
		"Dharmanagar": [""],
		"Pratapgarh": [""],
		"Kailasahar": [""],
		"Belonia": [""],
		"Khowai": [""]
	},
	"Andhra Pradesh": {
		"Visakhapatnam": [""],
		"Vijayawada": [""],
		"Guntur": [""],
		"Nellore": [""],
		"Kurnool": [""],
		"Rajahmundry": [""],
		"Kakinada": [""],
		"Tirupati": [""],
		"Anantapur": [""],
		"Kadapa": [""],
		"Vizianagaram": [""],
		"Eluru": [""],
		"Ongole": [""],
		"Nandyal": [""],
		"Machilipatnam": [""],
		"Adoni": [""],
		"Tenali": [""],
		"Chittoor": [""],
		"Hindupur": [""],
		"Proddatur": [""],
		"Bhimavaram": [""],
		"Madanapalle": [""],
		"Guntakal": [""],
		"Dharmavaram": [""],
		"Gudivada": [""],
		"Srikakulam": [""],
		"Narasaraopet": [""],
		"Rajampet": [""],
		"Tadpatri": [""],
		"Tadepalligudem": [""],
		"Chilakaluripet": [""],
		"Yemmiganur": [""],
		"Kadiri": [""],
		"Chirala": [""],
		"Anakapalle": [""],
		"Kavali": [""],
		"Palacole": [""],
		"Sullurpeta": [""],
		"Tanuku": [""],
		"Rayachoti": [""],
		"Srikalahasti": [""],
		"Bapatla": [""],
		"Naidupet": [""],
		"Nagari": [""],
		"Gudur": [""],
		"Vinukonda": [""],
		"Narasapuram": [""],
		"Nuzvid": [""],
		"Markapur": [""],
		"Ponnur": [""],
		"Kandukur": [""],
		"Bobbili": [""],
		"Rayadurg": [""],
		"Samalkot": [""],
		"Jaggaiahpet": [""],
		"Tuni": [""],
		"Amalapuram": [""],
		"Bheemunipatnam": [""],
		"Venkatagiri": [""],
		"Sattenapalle": [""],
		"Pithapuram": [""],
		"Palasa Kasibugga": [""],
		"Parvathipuram": [""],
		"Macherla": [""],
		"Gooty": [""],
		"Salur": [""],
		"Mandapeta": [""],
		"Jammalamadugu": [""],
		"Peddapuram": [""],
		"Punganur": [""],
		"Nidadavole": [""],
		"Repalle": [""],
		"Ramachandrapuram": [""],
		"Kovvur": [""],
		"Tiruvuru": [""],
		"Uravakonda": [""],
		"Narsipatnam": [""],
		"Yerraguntla": [""],
		"Pedana": [""],
		"Puttur": [""],
		"Renigunta": [""],
		"Rajam": [""],
		"Srisailam Project (Right Flank Colony) Township": [""]
	},
	"Punjab": {
		"Ludhiana": [""],
		"Patiala": [""],
		"Amritsar": [""],
		"Jalandhar": [""],
		"Bathinda": [""],
		"Pathankot": [""],
		"Hoshiarpur": [""],
		"Batala": [""],
		"Moga": [""],
		"Malerkotla": [""],
		"Khanna": [""],
		"Mohali": [""],
		"Barnala": [""],
		"Firozpur": [""],
		"Phagwara": [""],
		"Kapurthala": [""],
		"Zirakpur": [""],
		"Kot Kapura": [""],
		"Faridkot": [""],
		"Muktsar": [""],
		"Rajpura": [""],
		"Sangrur": [""],
		"Fazilka": [""],
		"Gurdaspur": [""],
		"Kharar": [""],
		"Gobindgarh": [""],
		"Mansa": [""],
		"Malout": [""],
		"Nabha": [""],
		"Tarn Taran": [""],
		"Jagraon": [""],
		"Sunam": [""],
		"Dhuri": [""],
		"Firozpur Cantt.": [""],
		"Sirhind Fatehgarh Sahib": [""],
		"Rupnagar": [""],
		"Jalandhar Cantt.": [""],
		"Samana": [""],
		"Nawanshahr": [""],
		"Rampura Phul": [""],
		"Nangal": [""],
		"Nakodar": [""],
		"Zira": [""],
		"Patti": [""],
		"Raikot": [""],
		"Longowal": [""],
		"Urmar Tanda": [""],
		"Morinda, India": [""],
		"Phillaur": [""],
		"Pattran": [""],
		"Qadian": [""],
		"Sujanpur": [""],
		"Mukerian": [""],
		"Talwara": [""]
	},
	"Chandigarh": {
		"Chandigarh": [""]
	},
	"Rajasthan": {
		"Jaipur": [""],
		"Jodhpur": [""],
		"Bikaner": [""],
		"Udaipur": [""],
		"Ajmer": [""],
		"Bhilwara": [""],
		"Alwar": [""],
		"Bharatpur": [""],
		"Pali": [""],
		"Barmer": [""],
		"Sikar": [""],
		"Tonk": [""],
		"Sadulpur": [""],
		"Sawai Madhopur": [""],
		"Nagaur": [""],
		"Makrana": [""],
		"Sujangarh": [""],
		"Sardarshahar": [""],
		"Ladnu": [""],
		"Ratangarh": [""],
		"Nokha": [""],
		"Nimbahera": [""],
		"Suratgarh": [""],
		"Rajsamand": [""],
		"Lachhmangarh": [""],
		"Rajgarh (Churu)": [""],
		"Nasirabad": [""],
		"Nohar": [""],
		"Phalodi": [""],
		"Nathdwara": [""],
		"Pilani": [""],
		"Merta City": [""],
		"Sojat": [""],
		"Neem-Ka-Thana": [""],
		"Sirohi": [""],
		"Pratapgarh": [""],
		"Rawatbhata": [""],
		"Sangaria": [""],
		"Lalsot": [""],
		"Pilibanga": [""],
		"Pipar City": [""],
		"Taranagar": [""],
		"Vijainagar, Ajmer": [""],
		"Sumerpur": [""],
		"Sagwara": [""],
		"Ramganj Mandi": [""],
		"Lakheri": [""],
		"Udaipurwati": [""],
		"Losal": [""],
		"Sri Madhopur": [""],
		"Ramngarh": [""],
		"Rawatsar": [""],
		"Rajakhera": [""],
		"Shahpura": [""],
		"Raisinghnagar": [""],
		"Malpura": [""],
		"Nadbai": [""],
		"Sanchore": [""],
		"Nagar": [""],
		"Rajgarh (Alwar)": [""],
		"Sheoganj": [""],
		"Sadri": [""],
		"Todaraisingh": [""],
		"Todabhim": [""],
		"Reengus": [""],
		"Rajaldesar": [""],
		"Sadulshahar": [""],
		"Sambhar": [""],
		"Prantij": [""],
		"Mount Abu": [""],
		"Mangrol": [""],
		"Phulera": [""],
		"Mandawa": [""],
		"Pindwara": [""],
		"Mandalgarh": [""],
		"Takhatgarh": [""]
	},
	"Assam": {
		"Guwahati": [""],
		"Silchar": [""],
		"Dibrugarh": [""],
		"Nagaon": [""],
		"Tinsukia": [""],
		"Jorhat": [""],
		"Bongaigaon City": [""],
		"Dhubri": [""],
		"Diphu": [""],
		"North Lakhimpur": [""],
		"Tezpur": [""],
		"Karimganj": [""],
		"Sibsagar": [""],
		"Goalpara": [""],
		"Barpeta": [""],
		"Lanka": [""],
		"Lumding": [""],
		"Mankachar": [""],
		"Nalbari": [""],
		"Rangia": [""],
		"Margherita": [""],
		"Mangaldoi": [""],
		"Silapathar": [""],
		"Mariani": [""],
		"Marigaon": [""]
	},
	"Odisha": {
		"Bhubaneswar": [""],
		"Cuttack": [""],
		"Raurkela": [""],
		"Brahmapur": [""],
		"Sambalpur": [""],
		"Puri": [""],
		"Baleshwar Town": [""],
		"Baripada Town": [""],
		"Bhadrak": [""],
		"Balangir": [""],
		"Jharsuguda": [""],
		"Bargarh": [""],
		"Paradip": [""],
		"Bhawanipatna": [""],
		"Dhenkanal": [""],
		"Barbil": [""],
		"Kendujhar": [""],
		"Sunabeda": [""],
		"Rayagada": [""],
		"Jatani": [""],
		"Byasanagar": [""],
		"Kendrapara": [""],
		"Rajagangapur": [""],
		"Parlakhemundi": [""],
		"Talcher": [""],
		"Sundargarh": [""],
		"Phulabani": [""],
		"Pattamundai": [""],
		"Titlagarh": [""],
		"Nabarangapur": [""],
		"Soro": [""],
		"Malkangiri": [""],
		"Rairangpur": [""],
		"Tarbha": [""]
	},
	"Chhattisgarh": {
		"Raipur": [""],
		"Bhilai Nagar": [""],
		"Korba": [""],
		"Bilaspur": [""],
		"Durg": [""],
		"Rajnandgaon": [""],
		"Jagdalpur": [""],
		"Raigarh": [""],
		"Ambikapur": [""],
		"Mahasamund": [""],
		"Dhamtari": [""],
		"Chirmiri": [""],
		"Bhatapara": [""],
		"Dalli-Rajhara": [""],
		"Naila Janjgir": [""],
		"Tilda Newra": [""],
		"Mungeli": [""],
		"Manendragarh": [""],
		"Sakti": [""]
	},
	"Jammu and Kashmir": {
		"Srinagar": [""],
		"Jammu": [""],
		"Baramula": [""],
		"Anantnag": [""],
		"Sopore": [""],
		"KathUrban Agglomeration": [""],
		"Rajauri": [""],
		"Punch": [""],
		"Udhampur": [""]
	},
	"Karnataka": {
		"Bengaluru": [""],
		"Hubli-Dharwad": [""],
		"Belagavi": [""],
		"Mangaluru": [""],
		"Davanagere": [""],
		"Ballari": [""],
		"Mysore": [""],
		"Tumkur": [""],
		"Shivamogga": [""],
		"Raayachuru": [""],
		"Robertson Pet": [""],
		"Kolar": [""],
		"Mandya": [""],
		"Udupi": [""],
		"Chikkamagaluru": [""],
		"Karwar": [""],
		"Ranebennuru": [""],
		"Ranibennur": [""],
		"Ramanagaram": [""],
		"Gokak": [""],
		"Yadgir": [""],
		"Rabkavi Banhatti": [""],
		"Shahabad": [""],
		"Sirsi": [""],
		"Sindhnur": [""],
		"Tiptur": [""],
		"Arsikere": [""],
		"Nanjangud": [""],
		"Sagara": [""],
		"Sira": [""],
		"Puttur": [""],
		"Athni": [""],
		"Mulbagal": [""],
		"Surapura": [""],
		"Siruguppa": [""],
		"Mudhol": [""],
		"Sidlaghatta": [""],
		"Shahpur": [""],
		"Saundatti-Yellamma": [""],
		"Wadi": [""],
		"Manvi": [""],
		"Nelamangala": [""],
		"Lakshmeshwar": [""],
		"Ramdurg": [""],
		"Nargund": [""],
		"Tarikere": [""],
		"Malavalli": [""],
		"Savanur": [""],
		"Lingsugur": [""],
		"Vijayapura": [""],
		"Sankeshwara": [""],
		"Madikeri": [""],
		"Talikota": [""],
		"Sedam": [""],
		"Shikaripur": [""],
		"Mahalingapura": [""],
		"Mudalagi": [""],
		"Muddebihal": [""],
		"Pavagada": [""],
		"Malur": [""],
		"Sindhagi": [""],
		"Sanduru": [""],
		"Afzalpur": [""],
		"Maddur": [""],
		"Madhugiri": [""],
		"Tekkalakote": [""],
		"Terdal": [""],
		"Mudabidri": [""],
		"Magadi": [""],
		"Navalgund": [""],
		"Shiggaon": [""],
		"Shrirangapattana": [""],
		"Sindagi": [""],
		"Sakaleshapura": [""],
		"Srinivaspur": [""],
		"Ron": [""],
		"Mundargi": [""],
		"Sadalagi": [""],
		"Piriyapatna": [""],
		"Adyar": [""]
	},
	"Manipur": {
		"Imphal": [""],
		"Thoubal": [""],
		"Lilong": [""],
		"Mayang Imphal": [""]
	},
	"Kerala": {
		"Thiruvananthapuram": [""],
		"Kochi": [""],
		"Kozhikode": [""],
		"Kollam": [""],
		"Thrissur": [""],
		"Palakkad": [""],
		"Alappuzha": [""],
		"Malappuram": [""],
		"Ponnani": [""],
		"Vatakara": [""],
		"Kanhangad": [""],
		"Taliparamba": [""],
		"Koyilandy": [""],
		"Neyyattinkara": [""],
		"Kayamkulam": [""],
		"Nedumangad": [""],
		"Kannur": [""],
		"Tirur": [""],
		"Kottayam": [""],
		"Kasaragod": [""],
		"Kunnamkulam": [""],
		"Ottappalam": [""],
		"Thiruvalla": [""],
		"Thodupuzha": [""],
		"Chalakudy": [""],
		"Changanassery": [""],
		"Punalur": [""],
		"Nilambur": [""],
		"Cherthala": [""],
		"Perinthalmanna": [""],
		"Mattannur": [""],
		"Shoranur": [""],
		"Varkala": [""],
		"Paravoor": [""],
		"Pathanamthitta": [""],
		"Peringathur": [""],
		"Attingal": [""],
		"Kodungallur": [""],
		"Pappinisseri": [""],
		"Chittur-Thathamangalam": [""],
		"Muvattupuzha": [""],
		"Adoor": [""],
		"Mavelikkara": [""],
		"Mavoor": [""],
		"Perumbavoor": [""],
		"Vaikom": [""],
		"Palai": [""],
		"Panniyannur": [""],
		"Guruvayoor": [""],
		"Puthuppally": [""],
		"Panamattom": [""]
	},
	"Delhi": {
		"Delhi": [""],
		"New Delhi": [""]
	},
	"Dadra and Nagar Haveli": {
		"Silvassa": [""]
	},
	"Puducherry": {
		"Pondicherry": [""],
		"Karaikal": [""],
		"Yanam": [""],
		"Mahe": [""]
	},
	"Uttarakhand": {
		"Dehradun": [""],
		"Hardwar": [""],
		"Haldwani-cum-Kathgodam": [""],
		"Srinagar": [""],
		"Kashipur": [""],
		"Roorkee": [""],
		"Rudrapur": [""],
		"Rishikesh": [""],
		"Ramnagar": [""],
		"Pithoragarh": [""],
		"Manglaur": [""],
		"Nainital": [""],
		"Mussoorie": [""],
		"Tehri": [""],
		"Pauri": [""],
		"Nagla": [""],
		"Sitarganj": [""],
		"Bageshwar": [""]
	},
	"Uttar Pradesh": {
		"Lucknow": [""],
		"Kanpur": [""],
		"Firozabad": [""],
		"Agra": [""],
		"Meerut": [""],
		"Varanasi": [""],
		"Allahabad": [""],
		"Amroha": [""],
		"Moradabad": [""],
		"Aligarh": [""],
		"Saharanpur": [""],
		"Noida": [""],
		"Loni": [""],
		"Jhansi": [""],
		"Shahjahanpur": [""],
		"Rampur": [""],
		"Modinagar": [""],
		"Hapur": [""],
		"Etawah": [""],
		"Sambhal": [""],
		"Orai": [""],
		"Bahraich": [""],
		"Unnao": [""],
		"Rae Bareli": [""],
		"Lakhimpur": [""],
		"Sitapur": [""],
		"Lalitpur": [""],
		"Pilibhit": [""],
		"Chandausi": [""],
		"Hardoi ": [""],
		"Azamgarh": [""],
		"Khair": [""],
		"Sultanpur": [""],
		"Tanda": [""],
		"Nagina": [""],
		"Shamli": [""],
		"Najibabad": [""],
		"Shikohabad": [""],
		"Sikandrabad": [""],
		"Shahabad, Hardoi": [""],
		"Pilkhuwa": [""],
		"Renukoot": [""],
		"Vrindavan": [""],
		"Ujhani": [""],
		"Laharpur": [""],
		"Tilhar": [""],
		"Sahaswan": [""],
		"Rath": [""],
		"Sherkot": [""],
		"Kalpi": [""],
		"Tundla": [""],
		"Sandila": [""],
		"Nanpara": [""],
		"Sardhana": [""],
		"Nehtaur": [""],
		"Seohara": [""],
		"Padrauna": [""],
		"Mathura": [""],
		"Thakurdwara": [""],
		"Nawabganj": [""],
		"Siana": [""],
		"Noorpur": [""],
		"Sikandra Rao": [""],
		"Puranpur": [""],
		"Rudauli": [""],
		"Thana Bhawan": [""],
		"Palia Kalan": [""],
		"Zaidpur": [""],
		"Nautanwa": [""],
		"Zamania": [""],
		"Shikarpur, Bulandshahr": [""],
		"Naugawan Sadat": [""],
		"Fatehpur Sikri": [""],
		"Shahabad, Rampur": [""],
		"Robertsganj": [""],
		"Utraula": [""],
		"Sadabad": [""],
		"Rasra": [""],
		"Lar": [""],
		"Lal Gopalganj Nindaura": [""],
		"Sirsaganj": [""],
		"Pihani": [""],
		"Shamsabad, Agra": [""],
		"Rudrapur": [""],
		"Soron": [""],
		"SUrban Agglomerationr": [""],
		"Samdhan": [""],
		"Sahjanwa": [""],
		"Rampur Maniharan": [""],
		"Sumerpur": [""],
		"Shahganj": [""],
		"Tulsipur": [""],
		"Tirwaganj": [""],
		"PurqUrban Agglomerationzi": [""],
		"Shamsabad, Farrukhabad": [""],
		"Warhapur": [""],
		"Powayan": [""],
		"Sandi": [""],
		"Achhnera": [""],
		"Naraura": [""],
		"Nakur": [""],
		"Sahaspur": [""],
		"Safipur": [""],
		"Reoti": [""],
		"Sikanderpur": [""],
		"Saidpur": [""],
		"Sirsi": [""],
		"Purwa": [""],
		"Parasi": [""],
		"Lalganj": [""],
		"Phulpur": [""],
		"Shishgarh": [""],
		"Sahawar": [""],
		"Samthar": [""],
		"Pukhrayan": [""],
		"Obra": [""],
		"Niwai": [""],
		"Mirzapur": [""]
	},
	"Bihar": {
		"Patna": [""],
		"Gaya": [""],
		"Bhagalpur": [""],
		"Muzaffarpur": [""],
		"Darbhanga": [""],
		"Arrah": [""],
		"Begusarai": [""],
		"Chhapra": [""],
		"Katihar": [""],
		"Munger": [""],
		"Purnia": [""],
		"Saharsa": [""],
		"Sasaram": [""],
		"Hajipur": [""],
		"Dehri-on-Sone": [""],
		"Bettiah": [""],
		"Motihari": [""],
		"Bagaha": [""],
		"Siwan": [""],
		"Kishanganj": [""],
		"Jamalpur": [""],
		"Buxar": [""],
		"Jehanabad": [""],
		"Aurangabad": [""],
		"Lakhisarai": [""],
		"Nawada": [""],
		"Jamui": [""],
		"Sitamarhi": [""],
		"Araria": [""],
		"Gopalganj": [""],
		"Madhubani": [""],
		"Masaurhi": [""],
		"Samastipur": [""],
		"Mokameh": [""],
		"Supaul": [""],
		"Dumraon": [""],
		"Arwal": [""],
		"Forbesganj": [""],
		"BhabUrban Agglomeration": [""],
		"Narkatiaganj": [""],
		"Naugachhia": [""],
		"Madhepura": [""],
		"Sheikhpura": [""],
		"Sultanganj": [""],
		"Raxaul Bazar": [""],
		"Ramnagar": [""],
		"Mahnar Bazar": [""],
		"Warisaliganj": [""],
		"Revelganj": [""],
		"Rajgir": [""],
		"Sonepur": [""],
		"Sherghati": [""],
		"Sugauli": [""],
		"Makhdumpur": [""],
		"Maner": [""],
		"Rosera": [""],
		"Nokha": [""],
		"Piro": [""],
		"Rafiganj": [""],
		"Marhaura": [""],
		"Mirganj": [""],
		"Lalganj": [""],
		"Murliganj": [""],
		"Motipur": [""],
		"Manihari": [""],
		"Sheohar": [""],
		"Maharajganj": [""],
		"Silao": [""],
		"Barh": [""],
		"Asarganj": [""]
	},
	"Gujarat": {
		"Ahmedabad": [""],
		"Surat": [""],
		"Vadodara": [""],
		"Rajkot": [""],
		"Bhavnagar": [""],
		"Jamnagar": [""],
		"Nadiad": [""],
		"Porbandar": [""],
		"Anand": [""],
		"Morvi": [""],
		"Mahesana": [""],
		"Bharuch": [""],
		"Vapi": [""],
		"Navsari": [""],
		"Veraval": [""],
		"Bhuj": [""],
		"Godhra": [""],
		"Palanpur": [""],
		"Valsad": [""],
		"Patan": [""],
		"Deesa": [""],
		"Amreli": [""],
		"Anjar": [""],
		"Dhoraji": [""],
		"Khambhat": [""],
		"Mahuva": [""],
		"Keshod": [""],
		"Wadhwan": [""],
		"Ankleshwar": [""],
		"Savarkundla": [""],
		"Kadi": [""],
		"Visnagar": [""],
		"Upleta": [""],
		"Una": [""],
		"Sidhpur": [""],
		"Unjha": [""],
		"Mangrol": [""],
		"Viramgam": [""],
		"Modasa": [""],
		"Palitana": [""],
		"Petlad": [""],
		"Kapadvanj": [""],
		"Sihor": [""],
		"Wankaner": [""],
		"Limbdi": [""],
		"Mandvi": [""],
		"Thangadh": [""],
		"Vyara": [""],
		"Padra": [""],
		"Lunawada": [""],
		"Rajpipla": [""],
		"Umreth": [""],
		"Sanand": [""],
		"Rajula": [""],
		"Radhanpur": [""],
		"Mahemdabad": [""],
		"Ranavav": [""],
		"Tharad": [""],
		"Mansa": [""],
		"Umbergaon": [""],
		"Talaja": [""],
		"Vadnagar": [""],
		"Manavadar": [""],
		"Salaya": [""],
		"Vijapur": [""],
		"Pardi": [""],
		"Rapar": [""],
		"Songadh": [""],
		"Lathi": [""],
		"Adalaj": [""],
		"Chhapra": [""],
		"Gandhinagar": [""]
	},
	"Telangana": {
		"Hyderabad": [""],
		"Warangal": [""],
		"Nizamabad": [""],
		"Karimnagar": [""],
		"Ramagundam": [""],
		"Khammam": [""],
		"Mahbubnagar": [""],
		"Mancherial": [""],
		"Adilabad": [""],
		"Suryapet": [""],
		"Jagtial": [""],
		"Miryalaguda": [""],
		"Nirmal": [""],
		"Kamareddy": [""],
		"Kothagudem": [""],
		"Bodhan": [""],
		"Palwancha": [""],
		"Mandamarri": [""],
		"Koratla": [""],
		"Sircilla": [""],
		"Tandur": [""],
		"Siddipet": [""],
		"Wanaparthy": [""],
		"Kagaznagar": [""],
		"Gadwal": [""],
		"Sangareddy": [""],
		"Bellampalle": [""],
		"Bhongir": [""],
		"Vikarabad": [""],
		"Jangaon": [""],
		"Bhadrachalam": [""],
		"Bhainsa": [""],
		"Farooqnagar": [""],
		"Medak": [""],
		"Narayanpet": [""],
		"Sadasivpet": [""],
		"Yellandu": [""],
		"Manuguru": [""],
		"Kyathampalle": [""],
		"Nagarkurnool": [""]
	},
	"Meghalaya": {
		"Shillong": [""],
		"Tura": [""],
		"Nongstoin": [""]
	},
	"Himachal Praddesh": {
		"Manali": [""]
	},
	"Arunachal Pradesh": {
		"Naharlagun": [""],
		"Pasighat": [""]
	},
	"Maharashtra": {
		"Mumbai": [""],
		"Pune": [""],
		"Nagpur": [""],
		"Thane": [""],
		"Nashik": [""],
		"Kalyan-Dombivali": [""],
		"Vasai-Virar": [""],
		"Solapur": [""],
		"Mira-Bhayandar": [""],
		"Bhiwandi": [""],
		"Amravati": [""],
		"Nanded-Waghala": [""],
		"Sangli": [""],
		"Malegaon": [""],
		"Akola": [""],
		"Latur": [""],
		"Dhule": [""],
		"Ahmednagar": [""],
		"Ichalkaranji": [""],
		"Parbhani": [""],
		"Panvel": [""],
		"Yavatmal": [""],
		"Achalpur": [""],
		"Osmanabad": [""],
		"Nandurbar": [""],
		"Satara": [""],
		"Wardha": [""],
		"Udgir": [""],
		"Aurangabad": [""],
		"Amalner": [""],
		"Akot": [""],
		"Pandharpur": [""],
		"Shrirampur": [""],
		"Parli": [""],
		"Washim": [""],
		"Ambejogai": [""],
		"Manmad": [""],
		"Ratnagiri": [""],
		"Uran Islampur": [""],
		"Pusad": [""],
		"Sangamner": [""],
		"Shirpur-Warwade": [""],
		"Malkapur": [""],
		"Wani": [""],
		"Lonavla": [""],
		"Talegaon Dabhade": [""],
		"Anjangaon": [""],
		"Umred": [""],
		"Palghar": [""],
		"Shegaon": [""],
		"Ozar": [""],
		"Phaltan": [""],
		"Yevla": [""],
		"Shahade": [""],
		"Vita": [""],
		"Umarkhed": [""],
		"Warora": [""],
		"Pachora": [""],
		"Tumsar": [""],
		"Manjlegaon": [""],
		"Sillod": [""],
		"Arvi": [""],
		"Nandura": [""],
		"Vaijapur": [""],
		"Wadgaon Road": [""],
		"Sailu": [""],
		"Murtijapur": [""],
		"Tasgaon": [""],
		"Mehkar": [""],
		"Yawal": [""],
		"Pulgaon": [""],
		"Nilanga": [""],
		"Wai": [""],
		"Umarga": [""],
		"Paithan": [""],
		"Rahuri": [""],
		"Nawapur": [""],
		"Tuljapur": [""],
		"Morshi": [""],
		"Purna": [""],
		"Satana": [""],
		"Pathri": [""],
		"Sinnar": [""],
		"Uchgaon": [""],
		"Uran": [""],
		"Pen": [""],
		"Karjat": [""],
		"Manwath": [""],
		"Partur": [""],
		"Sangole": [""],
		"Mangrulpir": [""],
		"Risod": [""],
		"Shirur": [""],
		"Savner": [""],
		"Sasvad": [""],
		"Pandharkaoda": [""],
		"Talode": [""],
		"Shrigonda": [""],
		"Shirdi": [""],
		"Raver": [""],
		"Mukhed": [""],
		"Rajura": [""],
		"Vadgaon Kasba": [""],
		"Tirora": [""],
		"Mahad": [""],
		"Lonar": [""],
		"Sawantwadi": [""],
		"Pathardi": [""],
		"Pauni": [""],
		"Ramtek": [""],
		"Mul": [""],
		"Soyagaon": [""],
		"Mangalvedhe": [""],
		"Narkhed": [""],
		"Shendurjana": [""],
		"Patur": [""],
		"Mhaswad": [""],
		"Loha": [""],
		"Nandgaon": [""],
		"Warud": [""]
	},
	"Goa": {
		"Marmagao": [""],
		"Panaji": [""],
		"Margao": [""],
		"Mapusa": [""]
	},
	"West Bengal": {
		"Kolkata": [""],
		"Siliguri": [""],
		"Asansol": [""],
		"Raghunathganj": [""],
		"Kharagpur": [""],
		"Naihati": [""],
		"English Bazar": [""],
		"Baharampur": [""],
		"Hugli-Chinsurah": [""],
		"Raiganj": [""],
		"Jalpaiguri": [""],
		"Santipur": [""],
		"Balurghat": [""],
		"Medinipur": [""],
		"Habra": [""],
		"Ranaghat": [""],
		"Bankura": [""],
		"Nabadwip": [""],
		"Darjiling": [""],
		"Purulia": [""],
		"Arambagh": [""],
		"Tamluk": [""],
		"AlipurdUrban Agglomerationr": [""],
		"Suri": [""],
		"Jhargram": [""],
		"Gangarampur": [""],
		"Rampurhat": [""],
		"Kalimpong": [""],
		"Sainthia": [""],
		"Taki": [""],
		"Murshidabad": [""],
		"Memari": [""],
		"Paschim Punropara": [""],
		"Tarakeswar": [""],
		"Sonamukhi": [""],
		"PandUrban Agglomeration": [""],
		"Mainaguri": [""],
		"Malda": [""],
		"Panchla": [""],
		"Raghunathpur": [""],
		"Mathabhanga": [""],
		"Monoharpur": [""],
		"Srirampore": [""],
		"Adra": [""]
	}
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
    <div class="card">
        <%
            DocDAO d1=new DocDAO();
            doc_id=d1.autoIncrement();
            %>
            <div class="links-container"><row align="left">
<!--                    <div class="card btn">  <a  href="Logout.jsp">Logout</a></row> </div>-->
        <h1 style="color:whitesmoke; text-align: center; line-height: 50px;"><u> <strong> Add Doctor Details</strong></u></h1>
        
        <form action="AddDoctor" method="post" name="form3" id="form3">
        <center>
            <table>
                <tbody>
                    <tr>
                        <th> Doctor Id:</th>
                        <td><%=doc_id%></td>
                    </tr>
                    <tr>
                        <th>First Name:</th>
                        <td><input type="text" name="fname" id="fname" required></td>
                    </tr>
                    <tr>
                        <th> Last Name:</th>
                        <td><input type="text" name="lname" id="lname" required></td>
                    </tr>
                    <tr>
                        <th> Experience:</th>
                        <td><input type="number" name="exp" id="exp" required></td>
                    </tr>
                    <tr>
                        <th> Mobile No:</th>
                        <td><input type="tel" name="contact" id="contact"  required></td>
                    </tr>
                    <tr>
                        <th>Speciality:</th>
                        <td><select name="speciality" id="speciality" required>
                                <option value="">------------Select------------</option> 
                                <option value="OPHTHALMOLOGISTS">OPHTHALMOLOGISTS</option> 
                                <option value="ORTHOPAEDICIANS">ORTHOPAEDICIANS</option>
                                
                                <option value="OTHER">OTHER</option>
                            </select></td>
                    </tr>
                    <tr>
                        <th>Degree:</th>
                        <td><select name="degree" id="degree" required>
                                <option value="">------------Select------------</option>
                                <option value="MBBS">MBBS</option>
                                <option value="BNYS">BNYS</option> 
                                <option value="BDS">BDS</option>
                            </select></td>
                    </tr>
                    <tr>
                        <th>Hospital:</th>
                        <td><select name="hosp" id="hosp" required>
                                <option value="">------------Select------------</option>
                                <option value="NOBLE HOSPITAL">NOBLE HOSPITAL</option>
                                <option value="RAJAS EYE & RETINA RESEARCH CENTRE">RAJAS EYE & RETINA RESEARCH CENTRE</option> 
                                <option value="OTHER">Other</option>
                            </select></td>
                    </tr>
<!--                    <tr>
                        <th>Clinic(if any):</th>
                        <td><input type="text" name="clinic" id="clinic" required></td>
                    </tr>-->
                     <tr>
                        <th>Gender:</th>
                        <td><select name="gender" id="gender" required>
                                <option value="">------------Select------------</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option> 
                                <option value="Other">Other</option>
                            </select></td>
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
                </tbody>
            </table>
                    <div class="card btn">
                    <input type="submit" value="Submit" onclick="return validateDetails();"></div>
                    <div class="card btn" > <input type="reset" value="Reset"></div>
        </center>
         
        </form>
    </div>
    </body>
</html>
