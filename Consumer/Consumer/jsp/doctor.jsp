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
  
  
  <title>Result</title>
  <link rel="stylesheet" href="../assets/tether/tether.min.css">
  <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="../assets/dropdown/css/style.css">
  <link rel="stylesheet" href="../assets/socicon/css/styles.css">
  <link rel="stylesheet" href="../assets/theme/css/style.css">
  <link rel="preload" as="style" href="../assets/mobirise/css/mbr-additional.css">
  <link rel="stylesheet" href="../assets/mobirise/css/mbr-additional.css" type="text/css">
  <link rel="stylesheet" href="../assets/table/style.css">
  <script src="../assets/sortable-tables.min.js" type="text/javascript"></script>
  
  
  
</head>
<style>
  p{
    font-size: 1.5em;
  }
  table {
    border: 1px solid #ccc;
    border-collapse: collapse;
    margin: 5;
    padding: 0;
    width: 120%;
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
  table thead tr th:first-child+th{
      width: 200px;
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
  
  <section class="menu menu1 cid-sfbRLEeP1r" once="menu" id="menu1-1y">
    

    <nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg">
        <div class="container-fluid">
            <div class="navbar-brand">
                <span class="navbar-logo">
                    <a href="../index.html">
                        <img src="../assets/images/logo1-3-200x200.png"  style="height: 5.1rem;">
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
                            Home</a></li><li class="nav-item"><a class="nav-link link text-black text-primary display-4" href="../hospital.html">
                            Hospitals</a></li><li class="nav-item"><a class="nav-link link text-black text-primary display-4" href="../locality.html">
                            Locality</a></li>
                    <li class="nav-item"><a class="nav-link link text-black text-primary display-4" href="../doctor.html">
                            Doctors</a></li></ul>
                
                
            </div>
        </div>
    </nav>
</section>

<section class="content5 cid-siC3xXzaM5" id="content5-20">
    
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12 col-lg-12">
              <br>
                <h3 class="mbr-section-title mbr-fonts-style mb-4 display-2"><strong>Automated hospital search</strong></h3>
                
                <p class="mbr-text mbr-fonts-style display-7"></p>
            </div>
            <div>
                <%   
		String hossearch = request.getParameter("hossearch");
        try{		
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        Connection con= DriverManager.getConnection("jdbc:sqlserver://localhost;database=mini_project_sem_3;IntegratedSecurity=true");           
            try{ 
			
			PreparedStatement ps=con.prepareStatement("SELECT doc_name AS Name,doc_specialization AS Specialization,doc_telephone AS Telephone,doc_years AS 'Years Of Experience',doc_clinic_name AS 'Clinic name',doc_clinic_address AS 'Clinic address' FROM doctor WHERE doc_name LIKE '%"+hossearch+"%'");    
			
			ResultSet rs1=ps.executeQuery();  
				
			if(!rs1.next()){
			%> <p>No doctor found containing <% out.print(hossearch); %></p> <%
			}
			else{
			%>        <p>Search results are:</p>
                <table  class="sortable-table">
                    <%	ResultSetMetaData rsmd=rs1.getMetaData();%>  
                    <thead><tr>
                        <th ><% out.print(rsmd.getColumnName(1)); %></th>
                        <th ><% out.print(rsmd.getColumnName(2)); %></th>
                        <th ><% out.print(rsmd.getColumnName(3)); %></th>
                        <th ><% out.print(rsmd.getColumnName(4)); %></th>
                        <th ><% out.print(rsmd.getColumnName(5)); %></th>
                        <th ><% out.print(rsmd.getColumnName(6)); %></th>
                    
                        </tr></thead><tbody>
                            <%	do{ %>
                            <tr><td><% out.print(rs1.getString("Name")); %></td>
                                <td><% out.print(rs1.getString("Specialization")); %></td>
                                <td><% out.print(rs1.getString("Telephone")); %></td>
                                <td><% out.print(rs1.getString("Years Of Experience")); %></td>
                                <td><% out.print(rs1.getString("Clinic name")); %></td>
                                <td><% out.print(rs1.getString("Clinic address")); %></td></tr>
                            <%		
                            }while(rs1.next());  
                    }
                        %>
                                
                            </tbody></table>
                            <%
		}catch(Exception e){
			out.println("<p>No result found</p>");
		} 
		finally{  
			con.close();}

}catch(Exception e){
	out.println("<p>Connection with the database failed</p>");
}
%>
            </div>
        </div>
    </div>
</section>

<section class="footer7 cid-sfbR64JH4c" once="footers" id="footer7-1z">
    <div class="container">
        <div class="media-container-row align-center mbr-white">
            <div class="col-12">
                <p class="mbr-text mb-0 mbr-fonts-style display-7">Developed by Taksha Sharvil Vedang</p>
            </div>
        </div>
    </div>  
  
</body>
</html>