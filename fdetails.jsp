<%-- 
    Document   : fdetails
    Created on : 12 Sep, 2021, 8:15:44 PM
    Author     : himan
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FACULTY DETAILS</title>
        <style>
                  *{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}
body{
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 10px;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}
.container{
  max-width: 700px;
  width: 100%;
  background-color: #fff;
  padding: 25px 30px;
  border-radius: 5px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.15);
}
.container .title{
  font-size: 25px;
  font-weight: 500;
  position: relative;
}
.container .title::before{
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 30px;
  border-radius: 5px;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}
.content form .user-details{
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin: 20px 0 12px 0;
}
form .user-details .input-box{
  margin-bottom: 15px;
  width: calc(100% / 2 - 20px);
}
form .input-box span.details{
  display: block;
  font-weight: 500;
  margin-bottom: 5px;
}
.user-details .input-box input{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}
.user-details .input-box input:focus,
.user-details .input-box input:valid{
  border-color: #9b59b6;
}
 form .gender-details .gender-title{
  font-size: 20px;
  font-weight: 500;
 }
 form .category{
   display: flex;
   width: 80%;
   margin: 14px 0 ;
   justify-content: space-between;
 }
 form .category label{
   display: flex;
   align-items: center;
   cursor: pointer;
 }
 form .category label .dot{
  height: 18px;
  width: 18px;
  border-radius: 50%;
  margin-right: 10px;
  background: #d9d9d9;
  border: 5px solid transparent;
  transition: all 0.3s ease;
}
 #dot-1:checked ~ .category label .one,
 #dot-2:checked ~ .category label .two,
 #dot-3:checked ~ .category label .three{
   background: #9b59b6;
   border-color: #d9d9d9;
 }
 form input[type="radio"]{
   display: none;
 }
 form .button{
   height: 45px;
   margin: 35px 0
 }
 form .button input{
   height: 100%;
   width: 100%;
   border-radius: 5px;
   border: none;
   color: #fff;
   font-size: 18px;
   font-weight: 500;
   letter-spacing: 1px;
   cursor: pointer;
   transition: all 0.3s ease;
   background: linear-gradient(135deg, #71b7e6, #9b59b6);
 }
 form .button input:hover{
  /* transform: scale(0.99); */
  background: linear-gradient(-135deg, #71b7e6, #9b59b6);
  }
 @media(max-width: 584px){
 .container{
  max-width: 100%;
}
form .user-details .input-box{
    margin-bottom: 15px;
    width: 100%;
  }
  form .category{
    width: 100%;
  }
  .content form .user-details{
    max-height: 300px;
    overflow-y: scroll;
  }
  .user-details::-webkit-scrollbar{
    width: 5px;
  }
  }
  @media(max-width: 459px){
  .container .content .category{
    flex-direction: column;
  }
}
            </style>
            <script>
            function valid()
            {
                var u = document.f1.t1.value;
                var d = document.f1.t2.value;
                var de = document.f1.t3.value;
                var j=document.f1.t4.value;
               
                if (u == null || u == "")
                {
                    alert("USERID(EMAIL) CANNOT BE EMPTY");
                    return false;
                } else if (d == null || d == "")
                {
                    alert("PLEASE ENTER UR DEPARTMENT");
                    return false;
                } else if (de==null || de=="")
                {
                    alert("PLEASE ENTER YOUR DEGREE");
                    return false;
                }
                else if (j==null || j=="")
                {
                    alert("PLEASE ENTER YOUR YEAR OF JOINING");
                    return false;
                }
                else if (m==null || m=="")
                {
                    alert("PLEASE ENTER YOUR MOBILE NUMBER");
                    return false;
                }
            }
        </script>
        
    </head>
    <body>
             <div class="container">
    <div class="title">Faculty Registration</div>
    <div class="content">
      <form action="#">
        <div class="user-details">
          <!--<div class="input-box">
            <span class="details">Full Name</span>
            <input type="text" placeholder="Enter your name" required>
          </div>-->
          <!--<div class="input-box">
            <span class="details">Username</span>
            <input type="text" placeholder="Enter your username" required>
          </div>-->
          <!--<div class="input-box">
            <span class="details">User Id</span>
            <input type="text" placeholder="Enter your email" required name="t1">
          </div>-->
          <div class="input-box">
            <span class="details">Department</span>
            <input type="text" placeholder="Enter your Department " required name="t2">
          </div>
          <div class="input-box">
            <span class="details">Degree</span>
            <input type="text" placeholder="Enter your Degree" required name="t3">
          </div>
          <div class="input-box">
            <span class="details">Joining Year</span>
            <input type="text" placeholder="Enter your Joining Year" required name="t4">
          </div>
        </div>
        <!--<div class="gender-details">
          <input type="radio" name="gender" id="dot-1">
          <input type="radio" name="gender" id="dot-2">
          <input type="radio" name="gender" id="dot-3">
          <span class="gender-title">Gender</span>
          <div class="category">
            <label for="dot-1">
            <span class="dot one"></span>
            <span class="gender">Male</span>
          </label>
          <label for="dot-2">
            <span class="dot two"></span>
            <span class="gender">Female</span>
          </label>
          <label for="dot-3">
            <span class="dot three"></span>
            <span class="gender">Prefer not to say</span>
            </label>
          </div>
        </div>-->
        <div class="button">
          <input type="submit" value="Register">
        </div>
      </form>
    </div>
  </div>
                   <%
                        try
            {
                String h=(String)session.getAttribute("x");
                //String u=request.getParameter("t1");
                String d=request.getParameter("t2");
                String de=request.getParameter("t3");
                int j=Integer.parseInt(request.getParameter("t4"));
                Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/csdp","root","root");
            
            
                 String sql="insert into facultymaster values('"+h+"','"+d+"','"+de+"','"+j+"' )";
                 PreparedStatement pst=con.prepareStatement(sql);
                int i=pst.executeUpdate();
                if(i>0)
                {
                    out.println("FACULTY DETAILS SUCCESSFULLY REGISTERED");
                    //response.sendRedirect("coursedetails.jsp");
                }
                else{
                    out.println("PLEASE TRY AGAIN");
                    response.sendRedirect("fdetails.jsp");
            }
                
            }
            
            
            catch(Exception e)
            {
                //out.println(e);
            }
                   %>
               </center>
    </body>    
</html>
