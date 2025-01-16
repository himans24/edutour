<%-- 
    Document   : academicdetails
    Created on : 12 Sep, 2021, 3:31:02 PM
    Author     : himan
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>STUDENT ACADEMIC DETAILS</title>
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
                var n = document.f1.t1.value;
                var p = document.f1.t2.value;
                var p1 = document.f1.t3.value;
                var a=document.f1.t4.value;
                var b=document.f1.t5.value;
                var c=document.f1.t6.value;
                var d=document.f1.t7.value;
                var e=document.f1.t8.value;
                
                if (n == null || n == "")
                {
                    alert("USERID(EMAIL) CANNOT BE EMPTY");
                    return false;
                } else if (p == null || p == "")
                {
                    alert("PLEASE ENTER YOUR ACADEMIC ACHIVEMENT");
                    return false;
                } 
                else if (p1==null || p1=="")
                {
                    alert("PLEASE ENTER YOUR SPORTS");
                    return false;
                    
                }
                else if (a==null || a=="")
                {
                    alert("PLEASE ENTER YOUR CULTURE");
                    return false;
                }
                else if (b==null || b=="")
                {
                    alert("PLEASE ENTER YOUR OTHERS");
                    return false;
                }
                else if (c==null || c=="")
                {
                    alert("PLEASE ENTER YOUR GRADUATION YEAR");
                    return false;
                }
                else if (d==null || d=="")
                {
                    alert("PLEASE ENTER YOUR INTER YEAR");
                    return false;
                }
                else if (e==null || e=="")
                {
                    alert("PLEASE ENTER YOUR HIGH SCHOOL YEAR");
                    return false;
                }
                
            }
        </script>
    </head>
    <body>
           <div class="container">
    <div class="title">Student Academic Details Registration</div>
    <div class="content">
      <form action="#">
        <div class="user-details">
          <!--<div class="input-box">
            <span class="details">User Id</span>
            <input type="text" placeholder="Enter your Email" required name="t1">
          </div>-->
          <div class="input-box">
            <span class="details">Acd_Achvmt</span>
            <input type="text" placeholder="Enter your Academic Achivements" required name="t2">
          </div>
          <div class="input-box">
            <span class="details">Sports</span>
            <input type="text" placeholder="Enter your Sports" required name="t3">
          </div>
          <div class="input-box">
            <span class="details">Culture</span>
            <input type="text" placeholder="Enter your Culture " required name="t4">
          </div>
          <div class="input-box">
            <span class="details">Others</span>
            <input type="text" placeholder="Enter your Others" required name="t5">
          </div>
          <div class="input-box">
            <span class="details">Graduation</span>
            <input type="number" placeholder="Enter your Graduation Year" required name="t6">
          </div>
            <div class="input-box">
            <span class="details">Inter</span>
            <input type="number" placeholder="Enter your Inter" required name="t7">
          </div>
            <div class="input-box">
            <span class="details">High_School</span>
            <input type="number" placeholder="Enter your High_School_Year" required name="t8">
          </div>
        <!--</div>
        <div class="gender-details">
          <input type="radio" name="gender" id="dot-1" name="t4">
          <input type="radio" name="gender" id="dot-2" name="t4">
         <!-- <input type="radio" name="gender" id="dot-3">-->
          <!--<span class="gender-title">Gender</span>
          <div class="category">
            <label for="dot-1">
            <span class="dot one"></span>
            <span class="gender">Male</span>
          </label>
          <label for="dot-2">
            <span class="dot two"></span>
            <span class="gender">Female</span>
          </label>-->
          <!--<label for="dot-3">
            <span class="dot three"></span>
            <span class="gender">Prefer not to say</span>
            </label>
          </div>-->
        </div>
        <div class="button">
          <input type="submit" value="Register">
          
        </div>
      </form>
    </div>
           </div>
              <%
             try
            {
                String u=(String)session.getAttribute("x");
                String acd=request.getParameter("t2");
                String s=request.getParameter("t3");
                String c=request.getParameter("t4");
                String o=request.getParameter("t5");
                int g=Integer.parseInt(request.getParameter("t6"));
                int i=Integer.parseInt(request.getParameter("t7"));
                int h=Integer.parseInt(request.getParameter("t8"));
                Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/csdp","root","root");
            if(u!=null && acd!=null && s!=null && c!=null && o!=null && g!=0 && i!=0 && h!=0 ){
                String sql="insert into studentacademicmaster values('"+u+"','"+acd+"','"+s+"','"+c+"','"+o+"','"+g+"','"+i+"','"+h+"' )";
                PreparedStatement pst=con.prepareStatement(sql);
                int j=pst.executeUpdate();
                if(j>0)
                {
                    out.println("SUCCESSFULLY REGISTERED YOUR ACADEMIC DETAILS");
                }
                else 
                {
                    out.println("PLEASE TRY AGAIN");
                }
            }
            }
            catch(Exception e)
            {
                out.println(e);
            }
            %>
          </center>
       
    </body>
</html>
