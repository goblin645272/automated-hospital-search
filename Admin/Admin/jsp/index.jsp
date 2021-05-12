<%@page import = "java.sql.*" import="java.*" %> 
<!DOCTYPE html>
<html  >
<head>
  
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v5.2.0, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="../assets/images/logo1-3-200x200.png" type="image/x-icon">
  <meta name="description" content="">
  
  
  <title>Automated hospital search</title>
  <link rel="stylesheet" href="../assets/tether/tether.min.css">
  <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="../assets/formstyler/jquery.formstyler.css">
  <link rel="stylesheet" href="../assets/formstyler/jquery.formstyler.theme.css">
  <link rel="stylesheet" href="../assets/datepicker/jquery.datetimepicker.min.css">
  <link rel="stylesheet" href="../assets/dropdown/css/style.css">
  <link rel="stylesheet" href="../assets/socicon/css/styles.css">
  <link rel="stylesheet" href="../assets/theme/css/style.css">
  <link rel="preload" as="style" href="../assets/mobirise/css/mbr-additional.css"><link rel="stylesheet" href="../assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
  
</head>
<style>
    button:hover {
  opacity: 0.8;
}


.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: steelblue;
}



.ontainer {
  padding: 16px;
}

span.hospital_npassword,span.hospital_opassword {
  float: right;
  padding-top: 16px;
}


.modal {
  display: none; 
  position: fixed; 
  z-index: 1; 
  left: 0;
  top: 0;
  width: 100%; 
  height: auto; 
  overflow: auto; 
  background-color: rgb(0,0,0); 
  background-color: rgba(0,0,0,0.4); 
  padding-top: 60px;
}


.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; 
  border: 1px solid white;
  width: 50%; 
}


.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: steelblue;
  cursor: pointer;
}
input[type=text], input[type=password],input[type=url] {
    width: 100%;
    padding: 12px 20px;
    margin: 0px 0;
    display: inline-block;
    border: 1px solid transparent;
    box-sizing: border-box;
  }

.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

button {
    background-color: steelblue;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
  }
@media screen and (max-width: 300px) {
  span.hospital_npassword {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}

p{
    font-size: 1em;
  }
  p{
    font-size: 1.5em;
  }
  table {
    border: 1px solid #ccc;
    border-collapse: collapse;
    margin-left: 30px;
    margin: 5;
    padding: 0;
    width: 98%;
    table-layout: fixed;
    margin-bottom: 20px;
  }
  
  table caption {
    font-size: 1.5em;
    margin: .5em 0 .75em;
  }
  
  table tr {
    background-color: #f8f8f8;
    border: 1px solid #ddd;
    padding: .35em;
  }
  table thead tr th:first-child{
      width: 30px;
  }
  table thead tr th:first-child+th+th{
      width: 164px;
  }
  table th,
  table td {
    padding: .625em;
    text-align: center;
  }
  
  table th {
    font-size: .9em;
    letter-spacing: .1em;
    text-transform: uppercase;
  }
  
  @media screen and (max-width: 600px) {
    table {
      border: 0;
    }
  
    table caption {
      font-size: 1.3em;
    }
    
    table thead {
      border: none;
      clip: rect(0 0 0 0);
      height: 1px;
      margin: -1px;
      overflow: hidden;
      padding: 0;
      position: absolute;
      width: 1px;
    }
    
    table tr {
      border-bottom: 3px solid #ddd;
      display: block;
      margin-bottom: .625em;
    }
    
    table td {
      border-bottom: 1px solid #ddd;
      display: block;
      font-size: .8em;
      text-align: right;
    }
    
    table td::before {
      content: attr(data-label);
      float: left;
      font-weight: bold;
      text-transform: uppercase;
    }
    
    table td:last-child {
      border-bottom: 0;
    }
  }
</style>
<body>
  
  <section class="menu menu1 cid-siCmWf51EL" once="menu" id="menu1-w">
    

    <nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg">
        <div class="container-fluid">
            <div class="navbar-brand">
                <span class="navbar-logo">
                    <a href="../index.html">
                        <img src="../assets/images/logo1-3-200x200.png" alt="Mobirise" style="height: 5.1rem;">
                    </a>
                </span>
                
            </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <div class="hamburger">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav nav-dropdown nav-right" data-app-modern-menu="true"><li class="nav-item"><a class="nav-link link text-black text-primary display-4" href="../index.html">
                            Home</a></li><li class="nav-item"><a class="nav-link link text-black text-primary display-4" href="../AboutUs.html">About us</a></li></ul>
                
                
            </div>
        </div>
    </nav>
</section>

<section class="content5 cid-siCMUNNi5w" id="content5-x">
    
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-12 col-lg-10">
                <h3 class="mbr-section-title mbr-fonts-style mb-4 display-2">
                  <br>
                    <strong>Automated hospital search</strong></h3>
                
                <p class="mbr-text mbr-fonts-style display-7"></p>
            </div>
        </div>
    </div>
</section>
<div>
    <%   
        String hospital_username = request.getParameter("hospital_username");
		String hospital_password = request.getParameter("hospital_password");
		try{
			   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			   Connection con= DriverManager.getConnection("jdbc:sqlserver://localhost;database=mini_project_sem_3;IntegratedSecurity=true");
			   Statement st= con.createStatement();
			   
			   ResultSet rs=st.executeQuery("SELECT hospital_username,hospital_password FROM hospital WHERE hospital_username='"+hospital_username+"' AND hospital_password = '"+hospital_password+"'");
			   try{
                 rs.next();
		    	       if(rs.getString("hospital_username").equals(hospital_username) && rs.getString("hospital_password").equals(hospital_password)){
						           
							try{  										
								PreparedStatement ps=con.prepareStatement("SELECT hospital.hospital_id AS ID,hospital_username AS Username,hospital_name AS Name,hospital_specialization AS Specialization,hospital_contact AS Contact,hospital_website AS Website,bed_category AS Type,bed_price AS Tariff,bed_available AS Vacant,bed_count AS Total,hospital_pincode AS Pincode,hospital_address AS 'Address' FROM hospital"
                +" INNER JOIN bed ON  hospital.hospital_id = bed.hospital_id WHERE hospital.hospital_username = '"+hospital_username+"' ");    										
                PreparedStatement ps1 = con.prepareStatement("SELECT hospital_name,hospital_specialization,hospital_contact FROM hospital WHERE hospital_username = '"+hospital_username+"'");
                ResultSet rs2 = ps1.executeQuery();
                rs2.next();                
       %>
       <p> Hospital Name: <% out.print(rs2.getString("hospital_name")); %></p>
       <p>Hospital Specialization: <% out.print(rs2.getString("hospital_specialization")); %></p>
       <p>Hospital Contact: <% out.print(rs2.getString("hospital_contact")); %></p>
       <p>If there is no bed data the generated table will be empty. Create a bed first and then refresh the page.</p>
       <%  ResultSet rs1=ps.executeQuery(); 
       ResultSetMetaData rsmd = rs1.getMetaData(); %>
    <table>  
      

        <thead><tr>
            <th><% out.print(rsmd.getColumnName(1)); %></th>
            <th><% out.print(rsmd.getColumnName(2)); %></th>
            <th><% out.print(rsmd.getColumnName(3)); %></th>
            <th><% out.print(rsmd.getColumnName(4)); %></th>
            <th><% out.print(rsmd.getColumnName(5)); %></th>
            <th><% out.print(rsmd.getColumnName(6)); %></th>
            <th><% out.print(rsmd.getColumnName(7)); %></th>
            <th><% out.print(rsmd.getColumnName(8)); %></th>
            <th><% out.print(rsmd.getColumnName(10)); %></th>
            <th><% out.print(rsmd.getColumnName(9)); %></th>
            <th><% out.print(rsmd.getColumnName(11)); %></th>
            <th><% out.print(rsmd.getColumnName(12)); %></th>
        
            </tr></thead><tbody>
                
                <%
                while(rs1.next()){  
                %>	
                <td><% out.print(rs1.getString("Id")); %></td>
                <td><% out.print(rs1.getString("Username")); %></td>
                <td><% out.print(rs1.getString("Name")); %></td>
                <td><% out.print(rs1.getString("Specialization")); %></td>
                <td><% out.print(rs1.getString("Contact")); %></td>
                <td><% out.print(rs1.getString("Website")); %></td>
                <td><% out.print(rs1.getString("Type")); %></td>
                <td><% out.print(rs1.getString("Tariff")); %></td>
                <td><% out.print(rs1.getString("Total")); %></td>
                <td><% out.print(rs1.getString("Vacant")); %></td>
                <td><% out.print(rs1.getString("Pincode")); %></td>
                <td><% out.print(rs1.getString("Address")); %></td></tr>  
            <% } %>  
                </tbody></table>
                

</div>

<section class="form8 cid-siCNyBrxAD" id="form8-z">
    
    
    <div class="container">
        <div class="mbr-section-head">
            <h3 class="mbr-section-title mbr-fonts-style align-center mb-0 display-2"><strong>UPDATE DATA</strong></h3>
            
        </div>
        <div class="row justify-content-center mt-4">
            <div class="col-lg-8 mx-auto mbr-form" data-form-type="formoid">
                    <div class="dragArea row">
                        <div class="col-lg-4 col-md-12 col-sm-12 mbr-section-btn align-center">
                            <button onclick="document.getElementById('id01').style.display='block'" class="btn btn-primary display-4">Change password</button>
                        </div>
                        <div class="col-lg-4 col-md-12 col-sm-12 mbr-section-btn align-center">
                            <button onclick="document.getElementById('id02').style.display='block'" class="btn btn-primary display-4">Change specialization</button><br>
                        </div>
                        <div class="col-lg-4 col-md-12 col-sm-12 mbr-section-btn align-center">
                          <button onclick="document.getElementById('id06').style.display='block'" class="btn btn-primary display-4">Create a bed</button><br>
                      </div>
                        <div class="col-lg-4 col-md-12 col-sm-12 mbr-section-btn align-center">
                            <button onclick="document.getElementById('id03').style.display='block'" class="btn btn-primary display-4">Change bed availibility</button>
                        </div>
                        <div class="col-lg-4 col-md-12 col-sm-12 mbr-section-btn align-center">
                            <button onclick="document.getElementById('id04').style.display='block'" class="btn btn-primary display-4">Change total beds</button>
                        </div>
                        <div class="col-lg-4 col-md-12 col-sm-12 mbr-section-btn align-center">
                          <button onclick="document.getElementById('id05').style.display='block'" class="btn btn-primary display-4">Change price of beds</button>
                      </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<div id="id01" class="modal">
                  
    <form class="modal-content animate" action="changepass.jsp" method="post">
  
      <div class="ontainer">
        <label><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="hospital_username" required>  
        <label><b>Old Password</b></label>
        <input type="password" placeholder="Enter Old Password" name="hospital_opassword" required>
        <label><b>New Password</b></label>
        <input type="password" placeholder="Enter new Password" name="hospital_npassword"  pattern="(?=.*\d)(?=.*[a-z])(?=.*\W)(?=.*[A-Z]).{6,15}" title="Password must contain 6-15 characters with at least one number[0-9], one uppercase[A-Z], one lowercase[a-z] letter and one symbol" required>
          
        <button type="submit">Change Password</button>

      </div>
  
      <div class="container" style="background-color:#f1f1f1">
        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
        
      </div>
    </form>
  </div>
<div id="id02" class="modal">
    <form class="modal-content animate" action="specialization.jsp" method="post">
      <div class="container">
        <label><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="hospital_username" required>
        <label><b>Update specialization</b></label>
        <input type="text" placeholder="Enter specialization" name="hospital_specialization" required>
        <p>Note: This update will replace current information.</p>        
        <button type="submit">Change Specialization</button>
      </div>
      <div class="container" style="background-color:#f1f1f1">
        <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
      </div>
    </form>
</div>
<div id="id03" class="modal">
    <form class="modal-content animate" action="bedavailibility.jsp" method="post">
      <div class="container">
        <label><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="hospital_username" required>
        <label><b>Select type of bed</b></label>
        <select id="beds" name="bed_type" required>
          <option value="General">General</option>
          <option value="General with AC">General with AC</option>
          <option value="Private Room">Private room</option>
        </select><br>
        <label><b>Update bed avalibility</b></label>
        <input type="text" placeholder="Enter number of beds available" name="bed_available" onkeyup="this.value = this.value.replace(/[^0-9]/,'')" pattern="(?=.*\d).{,}" required>
        <p>Note: This update will replace current information.</p>        
        <button type="submit">Update data of beds</button>
      </div>
      <div class="container" style="background-color:#f1f1f1">
        <button type="button" onclick="document.getElementById('id03').style.display='none'" class="cancelbtn">Cancel</button>
      </div>
    </form>
</div>
<div id="id04" class="modal">
    <form class="modal-content animate" action="bedtotal.jsp" method="post">
      <div class="container">
        <label><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="hospital_username" required>
        <label><b>Select type of bed</b></label>
        <select id="beds" name="bed_type" required>
          <option value="General">General</option>
          <option value="General with AC">General with AC</option>
          <option value="Private Room">Private room</option>
        </select><br>
        <label><b>Update Total number of beds</b></label>
        <input type="text" placeholder="Enter updated total number of beds" name="hospital_total_beds" onkeyup="this.value = this.value.replace(/[^0-9]/,'')" pattern="(?=.*\d).{,}" required>
        <p>Note: This update will replace current information.</p>        
        <button type="submit">Update data of beds</button>
      </div>
      <div class="container" style="background-color:#f1f1f1">
        <button type="button" onclick="document.getElementById('id04').style.display='none'" class="cancelbtn">Cancel</button>
      </div>
    </form>
  </div>
  <div id="id05" class="modal">
    <form class="modal-content animate" action="bedprice.jsp" method="post">
      <div class="container">
        <label><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="hospital_username" required>
        <label><b>Select type of bed</b></label>
        <select id="beds" name="bed_type" required>
          <option value="General">General</option>
          <option value="General with AC">General with AC</option>
          <option value="Private Room">Private room</option>
        </select><br>
        <label><b>Update Total number of beds</b></label>
        <input type="text" placeholder="Enter updated price" name="bed_price" onkeyup="this.value = this.value.replace(/[^0-9]/,'')" pattern="(?=.*\d).{,}" required>
        <p>Note: This update will replace current information.</p>        
        <button type="submit">Update data of beds</button>
      </div>
      <div class="container" style="background-color:#f1f1f1">
        <button type="button" onclick="document.getElementById('id05').style.display='none'" class="cancelbtn">Cancel</button>
      </div>
    </form>
  </div>
  <div id="id06" class="modal">
    <form class="modal-content animate" action="newbed.jsp" method="post">
      <div class="container">
        <label><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="hospital_username" required>
        <label><b>Select type of bed</b></label>
        <select id="beds" name="bed_type" required>
          <option value="General">General</option>
          <option value="General with AC">General with AC</option>
          <option value="Private Room">Private room</option>
        </select><br>
        <label>Enter the price of bed</label>
        <input type="text" placeholder="Enter updated price" name="bed_price" onkeyup="this.value = this.value.replace(/[^0-9]/,'')" pattern="(?=.*\d).{,}" required>
        <label>Enter total number of beds</label>
        <input type="text" placeholder="Enter total beds" name="hospital_total_beds" onkeyup="this.value = this.value.replace(/[^0-9]/,'')" pattern="(?=.*\d).{,}" required>
        <label>Enter available number of beds</label>
        <input type="text" placeholder="Enter available beds" name="bed_available" onkeyup="this.value = this.value.replace(/[^0-9]/,'')" pattern="(?=.*\d).{,}" required>
        <p>Note: This update will replace current information.</p>        
        <button type="submit">Update data of beds</button>
      </div>
      <div class="container" style="background-color:#f1f1f1">
        <button type="button" onclick="document.getElementById('id06').style.display='none'" class="cancelbtn">Cancel</button>
      </div>
    </form>
  </div>
  <script>
  var modal = document.getElementById('id01');                           
  window.onclick = function(event) {
      if (event.target == modal) {
          modal.style.display = "none";
      }
  }
  var modal = document.getElementById('id02');                           
  window.onclick = function(event) {
      if (event.target == modal) {
          modal.style.display = "none";
      }
  }
  var modal = document.getElementById('id03');                           
  window.onclick = function(event) {
      if (event.target == modal) {
          modal.style.display = "none";
      }
  }
  var modal = document.getElementById('id04');                           
  window.onclick = function(event) {
      if (event.target == modal) {
          modal.style.display = "none";
      }
  }
  </script>
        <%	
                }catch (Exception e2) {out.println("Failed to recieve information");}  

                finally{out.close(); con.close();}
            }
            }catch(Exception e){
                    out.println("Login failed Please check your password");
            }
        }catch(Exception e){
            out.println("Connection with database failed");
        }
    %>


<section class="footer7 cid-siCn3FdQvr" once="footers" id="footer7-v">
    <div class="container">
        <div class="media-container-row align-center mbr-white">
            <div class="col-12">
                <p class="mbr-text mb-0 mbr-fonts-style display-7">Developed by Taksha Sharvil Vedang</p>
            </div>
        </div>
    </div>

  
</body>
</html>