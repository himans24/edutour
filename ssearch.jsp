<%-- 
    Document   : ssearch
    Created on : 24 Sep, 2021, 9:43:27 PM
    Author     : himan
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Faculty Search</title>
    </head>
   <style>
  

  body{
  height: 100vh;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
   background-size: cover;
    background-position: center;
 
}
  h1{
     color: white;
 }
 .form{
     width: 300px;
     height: 160px;
   
     position: absolute;
     top: 30px;
     left: 552px;
     border-radius: 10px;
     padding: 25px;
 }
 .form input{
     width: 200px;
     height: 15px;
     background: transparent;
     border-bottom: 1px solid blueviolet;
     border-top: none;
     border-right: none;
     border-left: none;
     color: white;
     font-size: 13px;
     letter-spacing: 1px;
     margin-top: 30px;
     font-family: sans-serif;
 }
 .form input:focus{
     outline: none;
 }
 :placeholder{
     color: white;
     font-family: Arial;
 }
 .btn{
     width: 90px;
     height: 35px;
     background: blueviolet;
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
     color: blueviolet;
 }
 .btn a{
     text-decoration: none;
     color: black;
     font-weight: bold;
 } 
 
 .main h2{
     color: white;
 }
#details {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 40%;
}

#details td, #details th {
  border: 1px solid #ddd;
  padding: 8px;
}

#details tr:nth-child(even){background-color: #f2f2f2;}

#details tr:hover {background-color: #ddd;}

#details th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: blueviolet;
  color: white;
}
#details td{
    width: 60px
}
</style>
    <body>
       <div class="main">
            <center>
         <h1>Faculty</h1>
         </center>
         <div class="form">
             <form action="" method="post">
             <input type="text" name="t1" placeholder="Enter Department Here"> 
             <button class="btn">Search</button>
</form>
         <br>
         </div>
            <br><br>
         <center>
             <h2>Result</h2>
         </center>    
        
             
<center>
<table id="details">
  <tr>
    <th>Name</th>
    <th>Department</th>
  </tr>
    <%
        try{  
            String d=request.getParameter("t1");
            //String f=("t4");
                   String s="bca";
                   
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/csdp","root","root");
            
                String  sql="select * from facultymaster where department='"+d+"'";
                PreparedStatement pst=con.prepareStatement(sql);
                ResultSet rs=pst.executeQuery();
                while(rs.next()){
                    rs.getString(1);
                             
                String  sql1="select * from facultypersonalmaster where userid='"+rs.getString(1)+"'";
                PreparedStatement pst1=con.prepareStatement(sql1);
                ResultSet rss=pst1.executeQuery();
                while(rss.next()){
                    %>
                     <tr>
                           <td><%out.println(rss.getString(2));%></td>
                           <td><% out.println(d); %></td>
                     </tr>
                 <%   
                }
                }
}
        catch(Exception e)
        {
            out.println(e);
        }
        %>
</table>
        </div>
    </body>
</html>
