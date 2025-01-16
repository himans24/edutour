<%-- 
    Document   : notice
    Created on : 25 Sep, 2021, 5:58:42 PM
    Author     : himan
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Computer Science Department portal</title>
        <style>
          
            body{
                background: linear-gradient(135deg, #71b7e6, #9b59b6);
                background-size: cover;
                background-attachment: fixed;
            }  
            
            
 .from{
     width: 400px;
     height: 560px;
     background: gainsboro;
     position: absolute;
     top: 20px;
     left: 500px;
     border-radius: 10px;
     padding: 25px;
 }
 .from h2{
     width: 380px;
     font-family: sans-serif;
     text-align: center;
     color: white;
     font-size: 27px;
     background-color: orange;
     border-radius: 10px;
     margin: 2px;
     padding: 8px;
 }
  
            
        </style>
      
        </head>
  
           <body bgcolor: white>
         <div class="from">
            <br>
            <h2>Notice</h2>
            <from action="" method="post">
                
                
        <table >

            <%
        try{  
            String d=request.getParameter("t1");
                   String s="bca";
                   
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/csdp","root","root");
            
                String  sql="select * from notice ";
                PreparedStatement pst=con.prepareStatement(sql);
                ResultSet rs=pst.executeQuery();
                while(rs.next()){
                    
                             
                //String  sql1="select * from facultypmaster where userid='"+rs.getString(1)+"'";
                //PreparedStatement pst1=con.prepareStatement(sql1);
                //ResultSet rss=pst1.executeQuery();
                //while(rss.next()){
                    %>
                     <tr>
                         <td><a style="text-decoration:none" href="<%out.println(rs.getString(2));%>"><%out.println(rs.getString(1));%></a></td>
                           
                     </tr>
                 <%   
                
                }
        }
        catch(Exception e)
        {
            out.println(e);
        }
        %>
         </div>
     </body>
</html>


