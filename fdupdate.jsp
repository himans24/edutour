<%-- 
    Document   : fdupdate
    Created on : 25 Sep, 2021, 11:32:05 AM
    Author     : himan
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="with-device-width" ,initial-scal="1.0">
       <title>computer science department</title>
       <link rel="stylesheet" href="style.css">
       
    </head>
    <style type="text/css">
        .main{
     width: 100%;
     background:linear-gradient(135deg, #71b7e6, #9b59b6);
     background-position: center;
     background-size: auto;
     height: 109vh;
 }
 .from{
     width: 270px;
     height: 450px;
     background: linear-gradient(to top,rgba(4,9,30,0.7),rgba(4,9,30,0.7));
     position: absolute;
     top: 60px;
     left: 552px;
     border-radius: 10px;
     padding: 25px;
 }
 .from h2{
     width: 250px;
     font-family: sans-serif;
     text-align: center;
     color: blueviolet;
     font-size: 22px;
     background-color: white;
     border-radius: 10px;
     margin: 2px;
     padding: 8px;
 }
 .from input{
     width: 250px;
     height: 18px;
     background: transparent;
     border-bottom: 1px solid blueviolet;
     border-top: none;
     border-right: none;
     border-left: none;
     color: white;
     font-size: 15px;
     letter-spacing: 1px;
     margin-top: 30px;
     font-family: sans-serif;
 }
 .from input:focus{
     outline: none;
 }
 :placeholder{
     color: white;
     font-family: Arial;
 }
 .btn{
     width: 250px;
     height: 40px;
     background: blueviolet;
     border: none;
     margin-top: 30px;
     font-size: 22px;
     border-radius: 10px;
     cursor: pointer;
     color: white;
     transition: 0.5s ease;
 }
 .btn:hover{
     background: white;
     color: blueviolet;
 }
 .btn a{
     text-decoration: none;
     color: black;
     font-weight: bold;
 }

    </style>
    <body>
        <div class="main">
         <div class="from">
             <br>
            <h2>Faculty Master </h2>
            <br>
             <form action="" method="post">
            <!--<input type="email" name="t1" placeholder="Enter User Id Here">-->
            <input type="text" name="t2" placeholder="Enter department Here">
            <input type="text" name="t3" placeholder="Enter degree Here">
            <input type="number" name="t4" placeholder="Enter Joining Year Here">
            <br><br>
            <from action="" method="post">
                
                <a href=""><button class="btn">Update</button></a>
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
            
            
                 String sql="update facultymaster set department='"+d+"', degree='"+de+"', joining_year='"+j+"' where userid='"+h+"'";
                 PreparedStatement pst=con.prepareStatement(sql);
                int i=pst.executeUpdate();
                if(i>0)
                {
                    out.println("FACULTY DETAILS UPDATEDS UCCESSFULLY ");
                    //response.sendRedirect("coursedetails.jsp");
                }
                else{
                    out.println("PLEASE TRY AGAIN");
                    response.sendRedirect("fdupdate.jsp");
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

