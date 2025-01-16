<%-- 
    Document   : fpupdate
    Created on : 25 Sep, 2021, 11:24:33 AM
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
     height: 480px;
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
            <h2>Personal Details</h2>
            <br>
            <form action="" method="post">
            <!--<input type="email" name="t1" placeholder="Enter User Id Here">-->
            <input type="text" name="t2" placeholder="Enter Name Here">
            <input type="date" name="t3" placeholder="Enter DOB Here">
            <input type="text" name="t4" placeholder="Enter Gender Here">
            <input type="number" name="t5" placeholder="Enter Phone No Here">
            <br><br>
            <from action="" method="post">
                
                <a href=""><button class="btn">Update</button></a>
            </form>
        </div>
            
        </div>
         <%
            try
            {
                String j=(String)session.getAttribute("x");
               // String u=request.getParameter("t1");
                String n=request.getParameter("t2");
                int d=Integer.parseInt(request.getParameter("t3"));
                String g=request.getParameter("t4");
                //String a=request.getParameter("t5");
                int m=Integer.parseInt(request.getParameter("t5"));
                Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/csdp","root","root");
           
                String sql="UPDATE facultypmaster set name='"+n+"', dob='"+d+"', gender='"+g+"', mob='"+m+"' where userid='"+j+"'";
                PreparedStatement pst=con.prepareStatement(sql);
                int i=pst.executeUpdate();
                if(i>0)
                {
                    out.println("SUCCESSFULLY UPDATED YOUR PERSONAL DETAILS");
                    //response.sendRedirect("facmenu.jsp");
                }
                else 
                {
                    out.println("PLEASE TRY AGIAN");
                    response.sendRedirect("fpupdate.jsp");
                }
            }
            
            catch(Exception e)
            {
                //out.println(e);
            }
            %>
    </body>
</html>

