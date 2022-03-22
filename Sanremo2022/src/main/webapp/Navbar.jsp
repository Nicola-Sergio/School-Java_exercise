<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <meta charset="utf-8">
  <%@ page import= "java.util.ArrayList,O_mallius.Cantanti,java.util.*"%>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/css?family=Raleway:400,500,500i,700,800i" rel="stylesheet">
  <link  href="<%=request.getContextPath() %>/styles/navbar_style.css"  rel="stylesheet">
</head>
<body>
 <nav class="navbar navbar-expand-sm   navbar-light bg-secondary">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item">
              <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">About</a>
            </li>
            <li class="nav-item dropdown dmenu">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
              Our Service
            </a>
            <div class="dropdown-menu sm-menu">
              <a class="dropdown-item" href="#">service2</a>
              <a class="dropdown-item" href="#">service 2</a>
              <a class="dropdown-item" href="#">service 3</a>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Contact Us</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Call</a>
          </li>
          
          </ul>
          
          <% 
          	 String language_nav = (String)(session.getAttribute("language"));
			 String country_nav = (String)(session.getAttribute("country"));
			 
			 if(country_nav.equals("IT")){
				 
		 %>
		 	<div class="flag">
		 	
		 	<img src="<%=request.getContextPath() %>/images/italy.png" width="32px" height="32px" alt="italy_flag">
		 	
		 	</div>
		 <% 	
				} else if(country_nav.equals("US")){
					
		%>
			<div class="flag">
		 	
		 	<img src="<%=request.getContextPath() %>/images/usa.png" width="32px" height="32px" alt="usa_flag">
		 	
		 	</div>
		
		<%
					
				}
		  %>
          
          <div class="social-part">
            <i class="fa fa-facebook" aria-hidden="true"></i>
            <i class="fa fa-twitter" aria-hidden="true"></i>
            <i class="fa fa-instagram" aria-hidden="true"></i>
          </div>
        </div>
      </nav>
</body>
</html>