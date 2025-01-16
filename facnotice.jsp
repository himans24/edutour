<%-- 
    Document   : facnotice
    Created on : 28 Sep, 2021, 7:52:34 PM
    Author     : himan
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>faculty notice</title>
        <style>
       
          body{
                background: linear-gradient(135deg, #71b7e6, #9b59b6);
                background-size: cover;
                background-attachment: fixed;
                 box-sizing: border-box;

            }  
            
            
 .him{
     width: 400px;
     height: 560px;
     background: gainsboro;
     position: absolute;
     top: 20px;
     left: 500px;
     border-radius: 10px;
     padding: 25px;
 }
 .him h2{
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
 .btn{
     text-align: center;
     left: 36px;
 }
   button{
     width: 140px;
     top: 360px;
     padding: 15px 0;
     text-align: center;
     margin: 20px 20px;
     border-radius: 25px;
     font-weight: bold;
     background: orange;
     border: 2px solid orange;
     color: white;
     cursor: pointer;
     position: relative;
 }
 span{
     background: orange;
     height: 100%;
     width: 0%;
     border-radius: 25px;
     position: absolute;
     left: 0;
     bottom: 0;
     z-index: -1;
     transition: 0.5s;
 }
 button:hover span{
     width: 100%;
 }
 button:hover{
     border: none;
     background: white;
     color: orange;
 }
     /* Button used to open the contact form - fixed at the bottom of the page */
.open-button {
  background-color: #555;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  bottom: 23px;
  right: 28px;
  width: 280px;
  height: auto;
}

/* The popup form - hidden by default */
.form-popup {
  display: none;
  position:fixed;
  bottom: 150px;
  align-content: center;
  left :552px;
  border: 3px solid #f1f1f1;
 
}
/* Add styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: white;
}

/* Full-width input fields */
.form-container input[type=text] {
  width: 90%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus {
  background-color: #ddd;
  outline: none;
}
/* Set a style for the submit/login button */
.form-container .btnn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}
.form-container .btnn:hover, .open-button:hover {
  opacity: 1;
}

        </style>
       
        </head>
  
           <body bgcolor: white>
         <div class="him">
            <br>
            <h2>Notice</h2>
            <center>
                <table>
                   <%
        try{  
            String d=request.getParameter("email");
            String f=request.getParameter("psw");
            String h=request.getParameter("g");
                   String s="bca";
                   
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/csdp","root","root");
            if(f!=null || h!=null){
                   if (request.getParameter("update")!=null){

String sql1="insert into notice(topic,link) values ('"+d+"','"+f+"')";
                PreparedStatement pst1=con.prepareStatement(sql1);
                int i=pst1.executeUpdate();
                if(i>0){
                    out.println("Notice Updated");
                }
}
            
 if(request.getParameter("delete")!=null){
String sql2=" delete from notice where topic='"+h+"' ";
                PreparedStatement pst2=con.prepareStatement(sql2);
                int j=pst2.executeUpdate();
                if(j>0){
                    out.println("Notice Deleted");
          }}
            }
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
                         <td><a style="text-decoration:none" href="<%out.println(rs.getString(3));%>"><%out.println(rs.getString(1));%></a></td>
                           
                     </tr>
                 <%   
                
                }
             
}
        
        catch(Exception e)
        {
            out.println(e);
        }
        %>
                </table>
            </center>
                <form action="" method="post">
                <div class="btn1">
                    <button type="button" onclick="openForm()" >Upload</button>
                <button type="button" name="delete" onclick="openForm2()">Delete</button>
                
                   </div>
                    </div>
                      <!-- <div class="form-popup" id="myForm">
  <form action="" method="" class="form-container">
    <h1>Login</h1>

    <label for="email"><b>Topic</b></label>
    <input type="text" placeholder="Enter Topic" name="email" required>

    <label for="psw"><b>Link</b></label>
    <input type="text" placeholder="Enter Link" name="psw" required>

    <button type="submit" class="btn">Login</button>
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
    </form>
            </div>
          <script>
            function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}
            </script>-->
                      

<div class="form-popup" id="myForm">
  
      <div class="form-container">
    <h1>Update</h1>

    <label for="email"><b>Topic</b></label>
    <input type="text" placeholder="Enter Topic" name="email" >

    <label for="psw"><b>Link</b></label>
    <input type="text" placeholder="Enter Link" name="psw" >

    <!--<button1 type="submit" class="btnn" name="update"  >Update</button1>-->
    
    <input Type="submit" value="update" class="btnn" name="update">
    <button1 type="button" class="btn cancel" onclick="closeForm()">Close</button1>
      </div>
</div>
    <div class="form-popup" id="myForm2">
  
      <div class="form-container">
    <h1>Delete</h1>

    <!--<label for="email"><b>Topic</b></label>
    <input type="text" placeholder="Enter Topic" name="email" >-->

    <label for="psw"><b>Topic</b></label>
    <input type="text" name="g" >

    <!--<button1 type="submit" class="btnn" name="update"  >Update</button1>-->
    
    <input Type="submit" value="delete" class="btnn" name="delete">
    <button1 type="button" class="btn cancel" onclick="closeForm2()">Close</button1>
      </div>
  
</div>
                 </form>
<script>
function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}
function openForm2() {
  document.getElementById("myForm2").style.display = "block";
}

function closeForm2() {
  document.getElementById("myForm2").style.display = "none";
}
</script>
     </body>
</html>


