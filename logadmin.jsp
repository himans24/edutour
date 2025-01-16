<%-- 
    Document   : user
    Created on : 16 Sep, 2021, 2:18:20 PM
    Author     : himan
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="mycss.css">
    <title>ADMIN LOGIN</title>
    <script>
    function show()
            {
                var x=document.getElementById("psw");
                if(x.type === "password" )
                {
                    x.type="text";
                }
                else{
                    x.type="password";
                }
            }
               function valid()
            {
                var n=document.f1.t1.value;
                var p=document.f1.t2.value;
                if(n==null || n=="")
                {
                    alert("USERID(EMAIL) CANNOT BE EMPTY");
                    return false;
                }
                else if(p==null || p=="")
                {
                    alert("PASSWORD CANNOT BE EMPTY");
                    return false;
                }
            }
            </script>

  </head>
  <style type="text/css">
      *{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
html,body{
  display: grid;
  height: 100%;
  width: 100%;
  place-items: center;
 background: url(slog.jpg);
  background-size: cover;
background-repeat: no-repeat;
/* background: linear-gradient(-135deg, #c850c0, #4158d0); */
}
::selection{
  background: #4158d0;
  color: #fff;
}
.wrapper{
  width: 380px;
  background: #fff;
  border-radius: 15px;
  box-shadow: 0px 15px 20px rgba(0,0,0,0.1);
}
.wrapper .title{
  font-size: 35px;
  font-weight: 600;
  text-align: center;
  line-height: 100px;
  color: #fff;
  user-select: none;
  border-radius: 15px 15px 0 0;
  background: linear-gradient(-135deg, #c850c0, #4158d0);
}
.wrapper form{
  padding: 10px 30px 50px 30px;
}
.wrapper form .field{
  height: 50px;
  width: 100%;
  margin-top: 20px;
  position: relative;
}
.wrapper form .field input{
  height: 100%;
  width: 100%;
  outline: none;
  font-size: 17px;
  padding-left: 20px;
  border: 1px solid lightgrey;
  border-radius: 25px;
  transition: all 0.3s ease;
}
.wrapper form .field input:focus,
form .field input:valid{
  border-color: #4158d0;
}
.wrapper form .field label{
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
  width: 100%;
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
form .field input[type="submit"]{
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
form .field input[type="submit"]:active{
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
  </style>
  <body>
  <center>
    <div class="wrapper">
      <div class="title">Admin Login</div>
      <form action="#" method="post" onsubmit="return valid()">
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
    </div>
       <%
    try{
            String e=request.getParameter("t1");
            String p=request.getParameter("t2");
            String s="admn";
                    
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/csdp","root","root");
            if(e!=null && p!=null){
                String sql="select * from loginmaster where userid='"+e+"' and password='"+p+"' and  status='"+s+"'";
                PreparedStatement pst=con.prepareStatement(sql);
                ResultSet rs=pst.executeQuery();
                if(rs.next()){
                   
                   session.setAttribute("x",e);
                   out.println("SUCCESSFULLY LOGIN");
                   response.sendRedirect("adminmenu.jsp");
                }
                else
                {
                    out.println("INVALID USERID OR PASSWORD");
                    response.sendRedirect("logadmin.jsp");
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