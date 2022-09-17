<%-- 
    Document   : UpdateDonorInfo
    Created on : 25 Jun, 2022, 12:31:30 PM
    Author     : nehaj
--%>
<%@include file="navigationBar1.jsp" %>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Donor" %>
<%@page import="dao.DonorDAO" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script language="javascript">
    window.history().forward();
</script>
<%
    if (session.isNew()) {
        response.sendRedirect("DonorLogin.jsp");
    }
%>
<%!
    String fname, lname, bloodgroup, avail, gender, last_donation, email, state, city, area, avail1;
    int donorid, age, pincode;
    long contact;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Info</title>
        <style>
            form#form3 {
                line-height: 35px;
                width: 50%;
                margin: auto;
            }
            table{
                line-height: 35px; font-size: 20px;
            }
            input{
                padding: 4px 19px;
                border: 1px solid black;
            }
            input#btn:hover{
                opacity: 0.5;
            }
        </style>
    </head>
    <script>
        function dialog(){
            if(alert("Are you sure you want to update the details ?"))
            return true;
        }
        function validate() {
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
                    }
                }


        var stateObject2 =
                {
                    "Madhya Pradesh": {
                        "Alirajpur": [""],
                        "Ashok Nagar": [""],
                        "Balaghat": [""],
                        "Bhopal": [""],
                        "Ganjbasoda": [""],
                        "Gwalior": [""],
                        "Indore": ["452002", "Agra", "Ajnod", "Alwasa", "Ambachandan", "ArmyHeadquarter", "Attahada", "Atwada", "Aurangpura", "Bachhoda", "Badgonda", "BadodiaKhan", "Bai", "BalodaTkun", "Banadia", "Baoliakhurd", "BarlaiJagir", "Betma", "Bhagana", "Bhagora", "Bhanwrasala", "Bhatkhedi", "Bhilbadoli", "BicholiMardana", "BijasanRoad", "Binawda", "Burankhedi", "Chadoda", "Chambal", "Chittoda", "Choral", "Chordia", "Dakachia", "Datoda", "Depalpur", "Dhannad", "Dharnaka", "Dudhia", "Farkodha", "FcGanj", "Gandhinagar", "Gautampura", "Gawlipalasia", "Girota", "Gokulpur", "Gujarkheda", "Guran", "GurunanakChauk", "Harsola", "Hasalpur", "Hatod", "Cgocomplex", "Cat", "City-2", "Clothmarket", "Collectorate", "Courts", "Ddunagar", "Govt.college", "Industrialarea", "Javeribagh", "Kanadiaroad", "Kumarkhadi", "Malwamill", "Manoramaganj", "Nagar", "Pardesipura", "R.s.s.nagar", "Rajmohalla", "Rambagh", "Siyaganj", "Tillaknagar", "Tukoganj", "Uchchanyayalay", "IndustrialEstate", "Jalodiyagyan", "JamburdiSarwar", "Jamburdihapsi", "Jamli", "Jhalaria", "Jindakheda", "Joshiguradia", "Juni", "Kachalia", "KadwaliBujurg", "Kalaria", "Kallibillod", "Kalmer", "Kamadpur", "Kampel", "Kanadia", "KanadiaRoad", "Kankariapal", "Kanwasa", "Karadia", "Kasturbagram", "Kelod", "Kelodkartal", "KhatiwalaTank", "KhediSihod", "Khudel", "Khurdi", "Kishanganj", "Kodria", "Kudana", "Lasudia", "Limbiodapar", "LokmanyaNagar", "Machal", "Machla", "Maithwada", "Manglia", "Manpur", "Men", "Mendakwasa", "Mhow", "MhowBarracks", "MhowCantt", "MhowCollegeofcombat", "MhowGaon", "MhowInfantryschool", "MhowRailwaystattion", "Murkheda", "NandaNagar", "Neori", "Pagnispaga", "Palakhedi", "Palda", "Paliya", "Panod", "Paphund", "Pedmi", "Pigdamber", "Pipalda", "Piwdai", "RadioColony", "RajendraNagar", "Rajoda", "Rangwasa", "Rao", "Rasalpura", "Rolai", "SadarBazar", "Sagdod", "Sanawadia", "Sanwer", "SanwerLinkroad", "SemliaChau", "Simrol", "Sivani", "Solsinda", "SonwayBhensolayaudygikkshet", "SudamaNagar", "Sumtha", "Tihi", "Tillorbujurg", "Tillorkhurd", "Todi", "Umaria", "Vallabhnagar", "VijayNagar", "YashwantNagar"],
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

        window.onload = function () {
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
    <body> <br>
        <h2 style="text-align: center; color: whitesmoke; line-height:50px; ">Update Personal Details</h2>
                <%
                    String user1, pass1;
                    session = request.getSession();
                    user1 = session.getAttribute("username").toString();
                    pass1 = session.getAttribute("password").toString();
        //          out.println("User Name: " + user1);
        //         out.println("Password: " + pass1);

                    Donor d1 = new Donor();
                    DonorDAO dd1 = new DonorDAO();
                    List<Donor> mylist = new ArrayList<Donor>();
                    mylist = dd1.displayDetails(user1, pass1);
                    if (mylist != null) {
                        for (Donor d2 : mylist) {
                            donorid = d2.getDonor_id();
                            fname = d2.getFname();
                            lname = d2.getLname();
                            age = d2.getAge();
                            bloodgroup = d2.getBloodgrp();
                            gender = d2.getGender();
                            contact = d2.getContact();
                            email = d2.getEmail();
                            avail = d2.getAvailablity();
                            last_donation = d2.getLast_donation();
                            state = d2.getState();
                            city = d2.getCity();
                            area = d2.getArea();
                            pincode = d2.getPin();
        //     out.print(avail); out.println(fname); out.println(last_donation);
                            if (avail.equals("Y")) {
                                avail1 = "available";
                            } else {
                                avail1 = "unavailable";
                            }
                        }
                        session.setAttribute("donor_id", donorid);
                        out.println("<form method=post action=UpdateDonorInfo>");
                    }
                %>
        <form action="UpdateDonorInfo" method="post" name="form3" id="form3">
            <center> <br>
                <table>
                    <tbody style="color:whitesmoke">
                        <tr>
                            <th>Donor ID:</th>
                            <td><%=donorid%></td>
                        </tr> 
                        <tr>
                            <th>First Name:</th>
                            <td><%=fname%></td>
                        </tr> 
                    <tr>
                        <th> Last Name:</th>
                        <td><%=lname%></td>
                    </tr> 
                    <tr>
                        <th>Blood Group</th>
                        <td><%=bloodgroup%></td>
                    </tr>
                    <tr>
                        <th>Age:</th>
                        <td><input type="number" name="age" id="age" value="<%=age%>" required>
                    </tr>
                    <tr>
                        <th>Gender:</th>
                        <td><%=gender%></td>
                    </tr>
                    <tr>
                        <th>Mobile No:</th>
                        <!--                        <td><input type="tel" name="contact" id="contact" pattern="^\+91(7\d|8\d|9\d)\d{9}$" required>-->
                        <td><input type="tel" name="contact" id="contact" value="<%=contact%>" required>
                    </tr>
                    <tr>
                        <th>Email:</th>
                        <td><input type="email" name="email" id="email" value="<%=email%>" required>
                    </tr>
                    <tr>
                        <th>Last date of donation:</th>
                        <td><input type="date" name="donationDate" id="donationDate"  required value=<%=last_donation%>>
                    </tr>
                    <!--                    <tr>
                                            <th> Password:</th>
                                            <td><input type="password" name="pass" id="pass" required></td>
                                        </tr>
                                        <tr>
                                            <th>Re-type Password:</th>
                                            <td><input type="password" name="repass" id="repass" required></td>
                                        </tr>-->
                    <tr>
                        <th>State:</th>
                        <td><select name="state" id="state" required>
                                <option value="<%=state%>" selected="selected"><%=state%></option>
                            </select></td>
                    </tr>
                    <tr>
                        <th>City:</th>
                        <td><select name="city" id="city" required>
                                <option value="<%=city%>" selected="selected"><%=city%></option>
                            </select></td>
                    <tr>
                        <th>Area:</th>
                        <td><select name="area" id="area" required >
                                <option value="<%=area%>" selected="selected"><%=area%></option>
                            </select></td>
                    </tr>
                    <tr>
                        <th>Pincode:</th>
                        <td><select name="pin" id="pin" required >
                                <option value="<%=pincode%>" selected="selected"><%=pincode%></option>
                                <!--                                <option value="452002">452002</option>
                                                                <option value="452001">452009</option>
                                                                <option value="452009">452001</option>-->
                            </select></td>
                    </tr>
                    <!--                    <tr>
                                            <th>Please confirm your availability to donate blood</th>
                                            <td><select name="avail" id="avail" required>
                                                    <option value="--">------------Select------------</option>
                                                    <option value="Y">available</option>
                                                    <option value="N">unavailable</option>
                                                </select></td>
                                        </tr>--> 
                    </tbody>
                </table>
            </center>
            <br>

            <center> <input type="submit" id=btn value="Update" onclick="return dialog();">
                <!--            <input type="reset" value="Reset">-->
            </center>
            <br><br>
        </form>      

    </body>
</html>
