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
        String bed_count= request.getParameter("hospital_total_beds");
        String bed_type = request.getParameter("bed_type");
		try{
			   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
               Connection con= DriverManager.getConnection("jdbc:sqlserver://localhost;database=mini_project_sem_3;IntegratedSecurity=true");
               try{  

                    PreparedStatement ps=con.prepareStatement("UPDATE bed SET bed_count = '"+bed_count+"' FROM bed INNER JOIN hospital ON hospital.hospital_id = bed.hospital_id WHERE hospital_username = '"+hospital_username+"'  AND bed_category = '"+bed_type+"';");    
                    out.println("<p font-size: 2em;>"+bed_type+"Total number of beds updated</p>");

                    ps.executeQuery();			
                    
                    }catch (Exception e2) {e2.printStackTrace();}  
                            
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