<%-- 
    Document   : contactus
    Created on : 15 Sep, 2021, 5:28:37 PM
    Author     : himan
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CONTACT US</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

  </head>
  <style>
          *{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}

body{
  min-height: 100vh;
  background: url(https://media.istockphoto.com/photos/hand-of-businessman-holding-mobile-smartphone-with-icon-customer-picture-id1169198385?k=20&m=1169198385&s=612x612&w=0&h=B2xMRZLja-WQaDvjQyBkEKAG31ekec5HVp3EmATNvrk=) no-repeat;
  background-size: cover;
  display: flex;
  justify-content: center;
  align-items: center;
}

.contact-section{
  width: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
}

.contact-info{
  color: #fff;
  max-width: 500px;
  line-height: 65px;
  padding-left: 50px;
  font-size: 18px;
}

.contact-info i{
  margin-right: 20px;
  font-size: 25px;
}

.contact-form{
  max-width: 700px;
  margin-right: 50px;
}

.contact-info, .contact-form{
  flex: 1;
}

.contact-form h2{
  color: black;
  text-align: center;
  font-size: 35px;
  text-transform: uppercase;
  margin-bottom: 30px;
}

.contact-form .text-box{
  background: whitesmoke;
  color: #fff;
  border: none;
  width: calc(50% - 10px);
  height: 50px;
  padding: 12px;
  font-size: 15px;
  border-radius: 5px;
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
  margin-bottom: 20px;
  opacity: 0.9;
}

.contact-form .text-box:first-child{
  margin-right: 15px;
}

.contact-form textarea{
  background: whitesmoke;
  color: #fff;
  border: none;
  width: 100%;
  padding: 12px;
  font-size: 15px;
  min-height: 200px;
  max-height: 400px;
  resize: vertical;
  border-radius: 5px;
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
  margin-bottom: 20px;
  opacity: 0.9;
}

.contact-form .send-btn{
  float: right;
  background: #2E94E3;
  color: #fff;
  border: none;
  width: 120px;
  height: 40px;
  font-size: 15px;
  font-weight: 600;
  text-transform: uppercase;
  letter-spacing: 2px;
  border-radius: 5px;
  cursor: pointer;
  transition: 0.3s;
  transition-property: background;
}

.contact-form .send-btn:hover{
  background: #0582E3;
}

@media screen and (max-width: 950px){
  .contact-section{
    flex-direction: column;
  }

  .contact-info, .contact-form{
    margin: 30px 50px;
  }

  .contact-form h2{
    font-size: 30px;
  }

  .contact-form .text-box{
    width: 100%;
  }
}

/*css for alert messages*/

.alert-success{
  z-index: 1;
  background: #D4EDDA;
  font-size: 18px;
  padding: 20px 40px;
  min-width: 420px;
  position: fixed;
  right: 0;
  top: 10px;
  border-left: 8px solid #3AD66E;
  border-radius: 4px;
}

.alert-error{
  z-index: 1;
  background: #FFF3CD;
  font-size: 18px;
  padding: 20px 40px;
  min-width: 420px;
  position: fixed;
  right: 0;
  top: 10px;
  border-left: 8px solid #FFA502;
  border-radius: 4px;
}
      
      </style>
  <body>
      
      <!--<div class="wrapper">
<!--NAVIGATION
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">CSDP</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent" >
      <ul class="navbar-nav me-auto mb-2 mb-lg-0" >
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="fnotice.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="aboutus.jsp">About Us</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link active dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Sign In
          </a>
          <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
            <li><a class="dropdown-item" href="logstd.jsp">Student Login</a></li>
            <li><a class="dropdown-item" href="logfac.jsp">Faculty Login</a></li>
            <li><a class="dropdown-item" href="logadmin.jsp">Admin Login</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link active dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Courses
          </a>
          <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
            <li><a class="dropdown-item" href="logstd.jsp">Html/Css</a></li>
            <li><a class="dropdown-item" href="logfac.jsp">Java</a></li>
            <li><a class="dropdown-item" href="logadmin.jsp">C/C++</a></li>
            <li><a class="dropdown-item" href="logadmin.jsp">Python</a></li>
            <li><a class="dropdown-item" href="logadmin.jsp">Database Administration</a></li>
            <li><a class="dropdown-item" href="logadmin.jsp">Operating System</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="contactus.jsp">Contact Us </a>
        </li>
      </ul>
        </font>
    </div>
  </div>
</nav>
 </div>-->
    <!--alert messages start
    <div class="alert-success">
      <span>Message Sent! Thank you for contacting us.</span>
    </div>
    <div class="alert-error">
      <span>Something went wrong! Please try again.</span>
    </div>
    alert messages end--!>

    <!--contact section start-->
    <div class="contact-section">
      <div class="contact-info">
          <div><font color="black"><i class="fas fa-map-marker-alt"></i>Bidhanagar, Durgapur</font></div>
          <div><font color="black"><i class="fas fa-envelope"></i>bcet@email.com</font></div>
          <div><font color="black"><i class="fas fa-phone"></i>+91 123456789</font></div>
          <div><font color="black"><i class="fas fa-clock"></i>Mon - Fri 8:00 AM to 5:00 PM</font></div>
      </div>
      <div class="contact-form">
        <h2>Contact Us</h2>
        <form class="contact" action="" method="post">
          <input type="text" name="t1" class="text-box" placeholder="Your Name" required>
          <input type="email" name="t2" class="text-box" placeholder="Your Email" required>
          <textarea type="textarea" name="t3" rows="5" placeholder="Your Message" required></textarea>
          <input type="submit" name="submit" class="send-btn" value="Send">
        </form>
      </div>
    </div>
    <!--contact section end-->
 <%
     try
            {
                String n=request.getParameter("t1");
                String cn=request.getParameter("t2");
                String c=request.getParameter("t3");
                //String e=request.getParameter("t4");
                //int m=Integer.parseInt(request.getParameter("t5"));
                Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/csdp","root","root");
            if(n!=null && cn!=null && c!=null  ){
                String sql="insert into contact values('"+n+"','"+cn+"','"+c+"' )";
                PreparedStatement pst=con.prepareStatement(sql);
                int i=pst.executeUpdate();
                if(i>0)
                {
                    out.println("You Will Receive An Email From Our Institute");
                }
            }
            }
            catch(Exception e)
            {
               // out.println(e);
            }

%>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>

  </body>
</html>
      