<%-- 
    Document   : newland
    Created on : 17 Sep, 2021, 1:35:53 PM
    Author     : himan
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EduTour</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

    
</head>
<style type="text/css">
    body{
    font-family: sans-serif;
    margin: 0;
    padding: 0;
}

.wrapper{
    background: url(https://assets.kpmg/is/image/kpmg/Graduation:cq5dam.web.1200.630);
    background-size: cover;
background-repeat: no-repeat;
    min-height: 30rem;
}


nav{
  position: absolute;
  top: 0;
  left: 0;
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.2);
  z-index: 99;
  background-color:  transparent;
}
nav .navbar{
  height: 55px;
  width: 1250px;
  margin: auto;
  display: flex;
  align-items: center;
  justify-content: space-between;
  background-color: transparent;
}
.navbar .logo a{
  font-size: 30px;
  color: #fff;
  text-decoration: none;
  font-weight: 600;
}
nav .navbar .nav-links{
  line-height: 70px;
  height: 100%;
}
nav .navbar .links{
  display: flex;
}
nav .navbar .links li{
  position: relative;
  display: flex;
  align-items: center;
  justify-content: space-between;
  list-style: none;
  padding: 0 14px;
}
nav .navbar .links li a{
  height: 100%;
  text-decoration: none;
  white-space: nowrap;
  color: blueviolet;
  font-size: 15px;
  font-weight: 500;
}
.links li:hover .htmlcss-arrow,
.links li:hover .js-arrow{
  transform: rotate(180deg);
  }

nav .navbar .links li .arrow{
  /* background: red; */
  height: 100%;
  width: 22px;
  line-height: 70px;
  text-align: center;
  display: inline-block;
  color: #fff;
  transition: all 0.3s ease;
}
nav .navbar .links li .sub-menu{
  position: absolute;
  top: 70px;
  left: 0;
  line-height: 40px;
  background: #3E8DA8;
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.2);
  border-radius: 0 0 4px 4px;
  display: none;
  z-index: 2;
}
nav .navbar .links li:hover .htmlCss-sub-menu,
nav .navbar .links li:hover .js-sub-menu{
  display: block;
}
.navbar .links li .sub-menu li{
  padding: 0 22px;
  border-bottom: 1px solid rgba(255,255,255,0.1);
}
.navbar .links li .sub-menu a{
  color: #fff;
  font-size: 15px;
  font-weight: 500;
}
.navbar .links li .sub-menu .more-arrow{
  line-height: 40px;
}
.navbar .links li .htmlCss-more-sub-menu{
  /* line-height: 40px; */
}
.navbar .links li .sub-menu .more-sub-menu{
  position: absolute;
  top: 0;
  left: 100%;
  border-radius: 0 4px 4px 4px;
  z-index: 1;
  display: none;
}
.links li .sub-menu .more:hover .more-sub-menu{
  display: block;
}
.navbar .search-box{
  position: relative;
   height: 40px;
  width: 40px;
}
.navbar .search-box i{
  position: absolute;
  height: 100%;
  width: 100%;
  line-height: 40px;
  text-align: center;
  font-size: 22px;
  color: #fff;
  font-weight: 600;
  cursor: pointer;
  transition: all 0.3s ease;
}
.navbar .search-box .input-box{
  position: absolute;
  right: calc(100% - 40px);
  top: 80px;
  height: 60px;
  width: 300px;
  background: #3E8DA8;
  border-radius: 6px;
  opacity: 0;
  pointer-events: none;
  transition: all 0.4s ease;
}
.navbar.showInput .search-box .input-box{
  top: 65px;
  opacity: 1;
  pointer-events: auto;
  background: #3E8DA8;
}
.search-box .input-box::before{
  content: '';
  position: absolute;
  height: 20px;
  width: 20px;
  background: #3E8DA8;
  right: 10px;
  top: -6px;
  transform: rotate(45deg);
}
.search-box .input-box input{
  position: absolute;
  top: 50%;
  left: 50%;
  border-radius: 4px;
  transform: translate(-50%, -50%);
  height: 35px;
  width: 280px;
  outline: none;
  padding: 0 15px;
  font-size: 16px;
  border: none;
}
.navbar .nav-links .sidebar-logo{
  display: none;
}
.navbar .bx-menu{
  display: none;
}
@media (max-width:920px) {
  nav .navbar{
    max-width: 100%;
    padding: 0 25px;
  }

  nav .navbar .logo a{
    font-size: 27px;
  }
  nav .navbar .links li{
    padding: 0 10px;
    white-space: nowrap;
  }
  nav .navbar .links li a{
    font-size: 15px;
  }
}
@media (max-width:800px){
  nav{
    /* position: relative; */
  }
  .navbar .bx-menu{
    display: block;
  }
  nav .navbar .nav-links{
    position: fixed;
    top: 0;
    left: -100%;
    display: block;
    max-width: 270px;
    width: 100%;
    background:  #3E8DA8;
    line-height: 40px;
    padding: 20px;
    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
    transition: all 0.5s ease;
    z-index: 1000;
  }
  .navbar .nav-links .sidebar-logo{
    display: flex;
    align-items: center;
    justify-content: space-between;
  }
  .sidebar-logo .logo-name{
    font-size: 25px;
    color: #fff;
  }
    .sidebar-logo  i,
    .navbar .bx-menu{
      font-size: 25px;
      color: #fff;
    }
  nav .navbar .links{
    display: block;
    margin-top: 20px;
  }
  nav .navbar .links li .arrow{
    line-height: 40px;
  }
nav .navbar .links li{
    display: block;
  }
nav .navbar .links li .sub-menu{
  position: relative;
  top: 0;
  box-shadow: none;
  display: none;
}
nav .navbar .links li .sub-menu li{
  border-bottom: none;

}
.navbar .links li .sub-menu .more-sub-menu{
  display: none;
  position: relative;
  left: 0;
}
.navbar .links li .sub-menu .more-sub-menu li{
  display: flex;
  align-items: center;
  justify-content: space-between;
}
.links li:hover .htmlcss-arrow,
.links li:hover .js-arrow{
  transform: rotate(0deg);
  }
  .navbar .links li .sub-menu .more-sub-menu{
    display: none;
  }
  .navbar .links li .sub-menu .more span{
    /* background: red; */
    display: flex;
    align-items: center;
    /* justify-content: space-between; */
  }

  .links li .sub-menu .more:hover .more-sub-menu{
    display: none;
  }
  nav .navbar .links li:hover .htmlCss-sub-menu,
  nav .navbar .links li:hover .js-sub-menu{
    display: none;
  }
.navbar .nav-links.show1 .links .htmlCss-sub-menu,
  .navbar .nav-links.show3 .links .js-sub-menu,
  .navbar .nav-links.show2 .links .more .more-sub-menu{
      display: block;
    }
    .navbar .nav-links.show1 .links .htmlcss-arrow,
    .navbar .nav-links.show3 .links .js-arrow{
        transform: rotate(180deg);
}
    .navbar .nav-links.show2 .links .more-arrow{
      transform: rotate(90deg);
    }
}
@media (max-width:370px){
  nav .navbar .nav-links{
  max-width: 100%;
} 
}
ion-icon
{
color: #383838;
font-size: 50px;
align-content: left-corner;

}

.section{
    width: 80%;
    margin: auto;
    overflow: hidden;
    margin-top: 4%;
}

.section h1{
    color: #fff;
    line-height: 50px;
}

.section p{
    color: gray;
}

.btn-1{
    background-color: orangered;
    padding: 0.7rem 1rem;
    color: #fff;
    border: none;
    border-radius: 10px;
}

.features{
    margin-top: 4%;
    margin-bottom: 2%;
}

.features button{
    padding: 0.7rem 2rem;
    margin-right: 2rem;
    font-size: 1.2rem;
    opacity: 0.7;
}

showcase h1{
    margin-top: 5%;
    margin-bottom: 5%;
    text-align: center;
}

#courses{
    display: flex;
    justify-content: space-around;
    text-align: center;
}

#courses img{
    width: 200px;
    border-radius: 10px;
    border: 2px solid #000;
    margin: auto;
}

.apply{
    margin-top: 4%;
    background-color: orangered;
    padding: 0.7rem 1rem;
    color: #fff;
    border: none;
    border-radius: 10px;
}

footer{
    background-color: #333;
    color: #fff;
    text-align: center;
    padding: 1.2rem;
    margin-top: 4%;
}
.navbar-nav{
    margin-left: auto;
}
.wrapperr{
     display: none;
  width: 380px;
  background: #fff;
  border-radius: 15px;
  box-shadow: 0px 15px 20px rgba(0,0,0,0.1);
}
.wrapperr .title{
  font-size: 35px;
  font-weight: 600;
  text-align: center;
  line-height: 100px;
  color: #fff;
  user-select: none;
  border-radius: 15px 15px 0 0;
  background: linear-gradient(-135deg, #c850c0, #4158d0);
}
.wrapperr form{
  padding: 10px 30px 50px 30px;
}
.wrapperr form .field{
    
  height: 50px;
  width: 100%;
  margin-top: 20px;
  position: relative;
}
.wrapperr form .field input{
  height: 100%;
  width: 100%;
  outline: none;
  font-size: 17px;
  padding-left: 20px;
  border: 1px solid lightgrey;
  border-radius: 25px;
  transition: all 0.3s ease;
}
.wrapperr form .field input:focus,
form .field input:valid{
  border-color: #4158d0;
}
.wrapperr form .field label{
  position: absolute;
  top: 50%;
  left: 20px;
  color: #999999;
  font-weight: 400;
  font-size: 17px;
  pointer-events: none;
  transform: translateY(-50%);
  transition: all 0.3s ease;
}
form .field input:focus ~ label,
form .field input:valid ~ label{
  top: 0%;
  font-size: 16px;
  color: #4158d0;
  background: #fff;
  transform: translateY(-50%);
}
form .content{
  display: flex;
  width: 50%;
  height: 50px;
  font-size: 16px;
  align-items: center;
  justify-content: space-around;
}
form .content .checkbox{
  display: flex;
  align-items: center;
  justify-content: center;
}
form .content input{
  width: 15px;
  height: 15px;
  background: red;
}
form .content label{
  color: #262626;
  user-select: none;
  padding-left: 5px;
}
form .content .pass-link{
  color: "";
}
form .field input[value="Login"]{
  color: #fff;
  border: none;
  padding-left: 0;
  margin-top: -10px;
  font-size: 20px;
  font-weight: 500;
  cursor: pointer;
  background: linear-gradient(-135deg, #c850c0, #4158d0);
  transition: all 0.3s ease;
}
form .field input[value="Login"]:active{
  transform: scale(0.95);
}
form .signup-link{
  color: #262626;
  margin-top: 20px;
  text-align: center;
}
form .pass-link a,
form .signup-link a{
  color: #4158d0;
  text-decoration: none;
}
form .pass-link a:hover,
form .signup-link a:hover{
  text-decoration: underline;
}
input[type=text], select, textarea {
  width: 100%; /* Full width */
  padding: 12px; /* Some padding */ 
  border: 1px solid #ccc; /* Gray border */
  border-radius: 4px; /* Rounded borders */
  box-sizing: 20rem; /* Make sure that padding and width stays in place */
  margin-top: 6px; /* Add a top margin */
  margin-bottom: 16px; /* Bottom margin */
  resize: vertical; /* Allow the user to vertically resize the textarea (not horizontally) */
}

/* Style the submit button with a specific background color etc */
input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

/* When moving the mouse over the submit button, add a darker green color */
input[type=submit]:hover {
  background-color: #45a049;
}

/* Add a background color and some padding around the form */
.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  position:relative;
  left:100px;
  margin-right: 50px; 
  margin-left: 200px;
}

</style>
<body>
   
   <div class="wrapper">
<!--NAVIGATION-->
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">EduTour</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent" >
      <ul class="navbar-nav me-auto mb-2 mb-lg-0" >
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="aboutus.jsp">About Us</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link active dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Sign In
          </a>
          <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
              <li><a class="dropdown-item" href="logstd.jsp">Student Sign In</a></li>
            <li><a class="dropdown-item" href="logfac.jsp">Faculty Sign In</a></li>
            <li><a class="dropdown-item" href="logadmin.jsp">Admin Sign In</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link active dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Courses
          </a>
          <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
            <li><a class="dropdown-item" href="">Html/Css</a></li>
            <li><a class="dropdown-item" href="">Java</a></li>
            <li><a class="dropdown-item" href="">C/C++</a></li>
            <li><a class="dropdown-item" href="">Python</a></li>
            <li><a class="dropdown-item" href="">Database Administration</a></li>
            <li><a class="dropdown-item" href="">Operating System</a></li>
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
      <div class="section">
          <h1><font color="red" size="14">Knowledge</font><font color="black" size="10"> is</font><br><font color="black" size="10"> Power</font></h1>
          <h1><font color="black" size="5" style="font-family:georgia,garamond,serif">WE ENSURE A BETTER EDUCATION <br> FOR A BETTER WORLD</font></h1>
          <a href="#"><button class="btn-1">GET STARTED</button></a>
<!--FEATURES-->
         <div class="features">
             <button>Learn Online Classes</button>
             <button>Practical Exposure</button>
         </div>

<!--END OF FEATURES-->
      </div>
<!--END OF SECTION-->
   </div>
<!--END OF WRAPPER-->
   <showcase>
       <div id="about">
       <h1><font style="font-family:georgia">POPULAR TEACHER'S WE OFFER </h1>
       <div id="courses">
           <div class="cs">
               <h3>Prashant Roy</h3>
               <img src="Java-Web-Development-services.jpg" width="50%" alt="cs"><br>
               <a href="" ><button class="apply">More Info</button></a>
               
           </div>
       

           <div class="business">
               <h3>Anoop Kumar</h3>
               <img src="da.jpg" alt="business"><br>
               <a href="" ><button class="apply">More Info</button></a>
           </div>
           <div class="journalism"><br>
               <h3>Manoj Kumar</h3>
               <img src="htmlcss.jpg" alt="media"><br>
               <a href="" ><button class="apply">More Info</button></a>
           </div>
           
          <!-- <div class="arts"><br>
               <h3>Python</h3>
               <br>
               <img src="python1.jpg" alt="arts">
               <a href="applypage.jsp" ><button class="apply" >Apply Here</button></a>
           </div>
           <div class="medical">
               <h3>Operating System</h3>
               <img src="os.jpg" alt="ms">
               <a href="applypage.jsp" ><button class="apply">Apply Here</button></a>
              
           </div>-->
           
       </div>
   </showcase>
<showcase>
    <h1><font style="font-family:georgia">SUCCESSFUL PLACEMENTS FROM OUR COURSES </h1>
       <div id="courses">
           <div class="cs">
               <h3>Rohit Sharma</h3>
               <img src="Java-Web-Development-services.jpg" width="50%" alt="cs"><br>
               <a href="" ><button class="apply">More Info </button></a>
           </div>
           <div class="business">
               <h3>Ritika Jain</h3>
               <img src="da.jpg" alt="business"><br>
               <a href="" ><button class="apply">More Info</button></a>
           </div>
           <div class="journalism"><br>
               <h3>Rahul Roy</h3>
               
               
               <img src="htmlcss.jpg" alt="media"><br>
               <a href="" ><button class="apply">More Info</button></a>
           </div>
           <!--<div class="arts"><br>
               <h3>Python</h3>
               <br>
               <img src="python1.jpg" alt="arts">
               <a href="applypage.jsp" ><button class="apply" >Apply Here</button></a>
           </div>
           <div class="medical">
               <h3>Operating System</h3>
               <img src="os.jpg" alt="ms">
               <a href="applypage.jsp" ><button class="apply">Apply Here</button></a>
              
           </div>-->
           
       </div>
   </showcase>

<!--SHOWCASE-->
   <showcase>
       <h1><font style="font-family:georgia">POPULAR COURSES WE OFFER</h1>
       <div id="courses">
           <div class="cs">
               <h3>Java</h3>
               <img src="Java-Web-Development-services.jpg" width="50%" alt="cs">
               <a href="applypage.jsp" ><button class="apply">Apply Here</button></a>
           </div>
           <div class="business">
               <h3>C/C++</h3>
               <img src="da.jpg" alt="business">
               <a href="applypage.jsp" ><button class="apply">Apply Here</button></a>
           </div>
           <div class="journalism">
               <h3>Html/Css</h3>
               <br>
               
               <img src="htmlcss.jpg" alt="media">
               <a href="applypage.jsp" ><button class="apply">Apply Here</button></a>
           </div>
           <div class="arts">
               <h3>Python</h3>
               <br>
               <img src="python1.jpg" alt="arts">
               <a href="applypage.jsp" ><button class="apply" >Apply Here</button></a>
           </div>
           <div class="medical">
               <h3>Others</h3>
               <img src="os.jpg" alt="ms">
               <a href="applypage.jsp" ><button class="apply">Apply Here</button></a>
              
           </div>
           
       </div>
   </showcase>
<!--END OF SHOWCASE-->
<center>
   
      <div class="wrapperr" id="std">
 
      <div class="title">Student Login</div>
      <form action="" method="post">
        <div class="field">
          <input type="text" name="t1" required >
          <label>Email Address</label>
        </div>
        <div class="field">
          <input type="password" name="t2" id="psw" required>
          <label>Password</label>
        </div>
         <div class="content">
          <div class="checkbox">
            <input type="checkbox" id="remember-me" onclick="show()">
            <label for="remember-me">Show Password</label>
          </div>
          <div class="pass-link"><a href="#">Forgot password?</a></div>
        </div>
        <div class="field">
          <input type="submit" value="Login">
        </div>
        <!--<div class="signup-link">Not a member? <a href="#">Signup now</a></div>-->
      </form>
      <script>
          function openstd() {
  document.getElementById("std").style.display = "block";
}
          </script>
    </div>
   <footer>
      <!-- <p>Contact Us</p><br>
       <p>Mob No- 1234567890,9874563210</p><br>
       <p>Email-mtaindia@gmail.com</p><br>-->
       <p>Copyright &copy; 2023, HOWN'SR</p>
   </footer>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
   <%
        try{  
            String e=request.getParameter("t1");
            String p=request.getParameter("t2");
            String s="studn";
                    
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/csdp","root","root");
            if(e!=null && p!=null){
                String sql="select * from loginmaster where userid='"+e+"' and password='"+p+"' and  status='"+s+"'";
                PreparedStatement pst=con.prepareStatement(sql);
                ResultSet rs=pst.executeQuery();
                if(rs.next()){
                    session.setAttribute("x", e);
                    response.sendRedirect("stdmenu.jsp");
                }
                
                       else{
                    out.println("INVALID PASSWORD OR USER ID");
                     response.sendRedirect("logstd.jsp");
                }
             
            }  
        }
        catch(Exception e)
        {
            out.println(e);
        }
        %>
</body>
</html>