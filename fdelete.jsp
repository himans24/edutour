<%-- 
    Document   : fdelete
    Created on : 24 Sep, 2021, 8:01:29 PM
    Author     : himan
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta name="viewport" content="with-device-width" ,initial-scal="1.0">
       <title>computer science department</title>
       <link rel="stylesheet" href="style.css">
       
    </head>
    <style type="text/css">
        .main{
     width: 100%;
     background :linear-gradient(135deg, #71b7e6, #9b59b6);
     background-position: center;
     background-size: auto;
     height: 109vh;
 }
 .from{
     width: 270px;
     height: 320px;
     background: linear-gradient(to top,rgba(4,9,30,0.7),rgba(4,9,30,0.7));
     position: absolute;
     top: 120px;
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
     color: blanchedalmond;
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
            <h2>Faculty</h2>
            <br>
            <input type="email" name="t1" placeholder="Enter User Id Here">
           <!-- <input type="text" name="n" placeholder="Enter Name Here">-->
            <br><br><br>
            <from action="" method="post">
                
                <a href=""><button class="btn">Delete</button></from></a>
        </div>
            
        </div>
    

  <%
             try
            {
                String u=request.getParameter("t1");
                Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/csdp","root","root");
            if(u!=null  ){
                String sql="delete from facultypersonalmaster where userid='"+u+"'";
                PreparedStatement pst=con.prepareStatement(sql);
                int j=pst.executeUpdate();
                String sql1="delete from facultytmaster where userid='"+u+"'";
                PreparedStatement pst1=con.prepareStatement(sql1);
                int i=pst1.executeUpdate();
                if(j>0 && i>0)
                {
                    out.println("SUCCESSFULLY DELETED YOUR RECORD");
                }
                else{
                    out.println("PLEASE TRY AGAIN");
                }
            }
            }
            catch(Exception e)
            {
                //out.println(e);
            }
            %>
    </body>
</html>
