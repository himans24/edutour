<%-- 
    Document   : scrapspace
    Created on : 26 Sep, 2021, 6:28:15 PM
    Author     : himan
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Query</title>
          <link rel="stylesheet" href="style.css">
    </head>
    <style type="text/css">
   body{
  height: 100%;

  background: linear-gradient(135deg, #71b7e6, #9b59b6);
   background-size: cover;
    background-position: center;
 
  
}
    #details {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 80%;
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
  text-align: left;
  background-color: transparent;
  color: white;
}
</style>
<script>
        function valid()
        var p=document.f1.t1.value;
                if(n==null || n=="")
                {
                    alert("USERID(EMAIL) CANNOT BE EMPTY");
                    return false;
                }
        </script>
    <body>
          <div class="body">
    <center>
        <pre>
<h1>Message</h1>
            <table id="details">
            <tr>
    <th>Message</th>
    <th>Type</th>
    <th>Email</th>
  </tr>
    
        <%
            
        try{  
            String d=request.getParameter("t1");
                   String s="stdn";
                   String e=(String)session.getAttribute("x");
                   //out.println(e);
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/csdp","root","root");
            if(d!=null ){
                String  sql="select * from contact";
                PreparedStatement pst=con.prepareStatement(sql);
                ResultSet rs=pst.executeQuery();
                while(rs.next()){
                    %>
                     <tr>
                           <td><%out.println(rs.getString(3));%></td>
                           <td><% out.println(rs.getString(1)); %></td>
                           <td><% out.println(rs.getString(2)); %></td>
                     </tr>
                 <%   
                     }
                String  sql1=" insert into contact values ('"+s+"','"+e+"','"+d+"')";
                PreparedStatement pst1=con.prepareStatement(sql1);
                int i=pst1.executeUpdate();
                if(i>0){
                    out.println("Msg Sent");
                             
                
                
}
                }
        }
        catch(Exception e)
        {
            out.println(e);
        }
        %>
        </table>
        <form action="" method="post" name="f1">
        Msg <input type="text" name="t1">
        <input type="submit" value="send">
        </pre>
    </center>
    </form>
</div>
    </body>
</html>
