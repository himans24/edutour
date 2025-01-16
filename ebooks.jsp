<%-- 
    Document   : ebooks
    Created on : 24 Sep, 2021, 8:17:31 PM
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
     background: linear-gradient(135deg, #71b7e6, #9b59b6);
     background-size: cover;
     height: 109vh;
 }
 h1{
     width: 300px;
     font-family: sans-serif;
     text-align: center;
     color: white;
     font-size: 26px;
     background-color: transparent;
     border-radius: 10px;
     margin: 2px;
     padding: 8px;
 }
 .from{
     width: 200px;
     height: 250px;
     background: white;
     position: absolute;
     top: 190px;
     left: 90px;
     border-radius: 10px;
     padding: 25px;
 }
 .img{
    height: 50px;
    width:40px;
    background: transparent;
    
}
 .from label{
     width: 190px;
     font-family: sans-serif;
     text-align: center;
     color: orange;
     font-size: 25px;
     background-color: white;
     border-radius: 10px;
     margin: 2px;
     padding: 8px;
 }
 .from h4{
     width: 170px;
     font-family: sans-serif;
     text-align: center;
     color: orange;
     font-size: 15px;
     background-color: white;
     border-radius: 10px;
     margin: 2px;
     padding: 8px;
 }
 
 .btn{
     width: 190px;
     height: 40px;
     background: orange;
     border: none;
     margin-top: 30px;
     font-size: 18px;
     border-radius: 10px;
     cursor: pointer;
     color: white;
     transition: 0.5s ease;
 }
 .btn:hover{
     background: white;
     color: orange;
 }
 .btn a{
     text-decoration: none;
     color: black;
     font-weight: bold;
 }

 .from2{
     width: 200px;
     height: 250px;
     background: white;
     position: absolute;
     top: 190px;
     left: 552px;
     border-radius: 10px;
     padding: 25px;
 }
 
 .from2 h2{
     width: 190px;
     font-family: sans-serif;
     text-align: center;
     color: orange;
     font-size: 15px;
     background-color: white;
     border-radius: 10px;
     margin: 2px;
     padding: 8px;
 }
 .from2 h4{
     width: 170px;
     font-family: sans-serif;
     text-align: center;
     color: orange;
     font-size: 15px;
     background-color: white;
     border-radius: 10px;
     margin: 2px;
     padding: 8px;
 }
 
 .from3{
     width: 200px;
     height: 250px;
     background: white;
     position: absolute;
     top: 190px;
     left: 1020px;
     border-radius: 10px;
     padding: 25px;
 }
 
 .from3 h2{
     width: 190px;
     font-family: sans-serif;
     text-align: center;
     color: orange;
     font-size: 15px;
     background-color: white;
     border-radius: 10px;
     margin: 2px;
     padding: 8px;
 }
 .from3 h4{
     width: 170px;
     font-family: sans-serif;
     text-align: center;
     color: orange;
     font-size: 15px;
     background-color: white;
     border-radius: 10px;
     margin: 2px;
     padding: 8px;
 }

    </style>
    <body>
        <div class="main">
            <center>
                
                <br>
            <h1>e-Book</h1></center>
         <!--<div class="from">
             <form action="" method="post">
             <div class="img">
                  <img src='learn_java.jpg'></div>
             <br><br><br>
             <label name="t3">Java Programing</label>
            <h4>Writter</h4>
            
           
                <a href=""><button class="btn">Open</button></form></a>
        </div>
         <div class="from2">
             <div class="img">
                  <img src='learn_java.jpg'></div>
             <br><br><br>
            <h2>C Programing</h2>
            <h4>Writter</h4>
            
           <from action="" method="post">
                <a href=""><button class="btn">Open</button></from></a>
        </div>
         br><br>
            <h2>Html</h2>
            <h4>Writter</h4>
            
                <a hr<div class="from3">
             <div class="img">
                  <img src='learn_java.jpg'></div>
             <br><ef=""><button class="btn">Open</button></a>
        </div>-->
            
       
    
       
    <%
        try{  
            //String e=request.getParameter("t1");
            //String p=request.getParameter("t3");
            String s="bca";
                  String h=(String)session.getAttribute("x");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/csdp","root","root");
            
                String sql="select * from ebooks where topic='"+h+"'";
                PreparedStatement pst=con.prepareStatement(sql);
                ResultSet rs=pst.executeQuery();
                while(rs.next()){
              
               
               %>
                <div class="from2">
                               <form action="" method="post">

             <div class="img">
                  <img src='learn_java.jpg'></div>
             <br><br><br>
            <h2><%out.println(rs.getString(1));%></h2>
            <h4>Writter</h4>
            
           
            <button class="btn"><a style="text-decoration: none" href="<%out.println(rs.getString(2));%>">Open</a></button>
                               </form>
        </div>
             
            
            
           
          
    <%
                  }
                
                
   

            
        }
        catch(Exception e)
        {
            //out.println(e);
        }
        %>
         
    </body>
</html>
