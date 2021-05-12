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
  <link rel="preload" as="style" href="../assets/mobirise/css/mbr-additional.css">
  <link rel="stylesheet" href="../assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
  
</head>
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
<%	 
String hospital_username = request.getParameter("hospital_username");
String hospital_password = request.getParameter("hospital_password");
String hospital_name = request.getParameter("hospital_name");
String hospital_pincode = request.getParameter("hospital_pincode");
String hospital_address = request.getParameter("hospital_address");
String hospital_contact = request.getParameter("hospital_contact");
String hospital_website = request.getParameter("hospital_website");
try{ 
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    Connection con= DriverManager.getConnection("jdbc:sqlserver://localhost;database=mini_project_sem_3;IntegratedSecurity=true");
    try{PreparedStatement ps = con.prepareStatement("INSERT INTO hospital(hospital_username,hospital_password,hospital_name,hospital_pincode,hospital_address,hospital_contact,hospital_website) values(?,?,?,?,?,?,?);");
    ps.setString(1,hospital_username);
    ps.setString(2,hospital_password);
    ps.setString(3,hospital_name);
    ps.setString(4,hospital_pincode);
    ps.setString(5,hospital_address);
    ps.setString(6,hospital_contact);
    ps.setString(7,hospital_website);
    int x = ps.executeUpdate();
    
    if(x>0){
        out.println("<p>Registered, Please <a href=../index.html>login</a> to continue</p>");
    }else{
        out.println("failed");
    }
}catch(Exception e){
    out.println(hospital_username+" is already taken Create a unique user id");
}
finally{con.close();}
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