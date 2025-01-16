<%-- 
    Document   : scupdate
    Created on : 24 Sep, 2021, 5:46:50 PM
    Author     : himan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
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
     background-size: cover;
     height: 109vh;
 }
 .from{
     width: 270px;
     height: 520px;
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
     height: 20px;
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
 .afrom{
     width: 270px;
     height: 520px;
     background: linear-gradient(to top,rgba(4,9,30,0.7),rgba(4,9,30,0.7));
     position: absolute;
     top: 60px;
     left: 552px;
     border-radius: 10px;
     padding: 25px;
 }
 .afrom h2{
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
 .afrom input{
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
 .afrom input:focus{
     outline: none;
 }
 .cfrom{
     width: 270px;
     height: 520px;
     background: linear-gradient(to top,rgba(4,9,30,0.7),rgba(4,9,30,0.7));
     position: absolute;
     top: 60px;
     left: 552px;
     border-radius: 10px;
     padding: 25px;
 }
 .cfrom h2{
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
 .cfrom input{
     width: 250px;
     height: 20px;
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
 .cfrom input:focus{
     outline: none;
 }

    </style>
    <body>
    
        <div class="main">
         <!--<div class="from">
            <br>
            <h2>Personal Details</h2>
            <br>
            <input type="email" name="t1" placeholder="Enter User Id Here">
            <input type="text" name="t2" placeholder="Enter Name Here">
            <input type="date" name="t3" placeholder="Enter DOB Here">
            <input type="text" name="t4" placeholder="Enter Gender Here">
            <input type="text" name="t5" placeholder="Enter Address Here">
            <input type="number" name="t6" placeholder="Enter Phone No Here">
            <br><br>
            <from action="sreg.jsp" method="post">
                
                <a href="sreg.jsp"><button class="btn">Update</button></from></a>
        </div>
   
           <!--<div class="afrom">

            <h2>Academic Details</h2>
           
            <input type="email" name="id" placeholder="Enter User Id Here">
            <input type="text" name="a" placeholder="Enter Acad_achivement Here">
            <input type="text" name="s" placeholder="Enter Sports Here">
            <input type="text" name="c" placeholder="Enter Cultural Here">
            <input type="text" name="o" placeholder="Enter Other Here">
            <input type="number" name="g" placeholder="Enter Graduation Here">
            <input type="number" name="i" placeholder="Enter Inter Here">
            <input type="number" name="h" placeholder="Enter High School Here">
         
            <from action="sreg.jsp" method="post">
                
                <a href="sreg.jsp"><button class="btn">Update</button></from></a>
        </div>-->
            <div class="cfrom">
            <br>
            <h2>Course Details</h2>
            <br>
            <form action="" method="post">
            <!--<input type="email" name="t1" placeholder="Enter User Id Here">-->
            <input type="number" name="t2" placeholder="Enter Roll No Here">
            <input type="number" name="t3" placeholder="Enter Batch Here">
            <input type="text" name="t4" placeholder="Enter Branch Here">
            <input type="text" name="t5" placeholder="Enter Degree Here">
            <input type="number" name="t6" placeholder="Enter Joining Year Here">
            <br>
            <br>
                
            <button class="btn">Update</button>
            </form>
        </div>
        </div>
        
             <%
            try
            {
                String h=(String)session.getAttribute("x");
                //String u=request.getParameter("t1");
                int r=Integer.parseInt(request.getParameter("t2"));
                int bat=Integer.parseInt(request.getParameter("t3"));
                
                String bran=request.getParameter("t4");
                String d=request.getParameter("t5");
                int j=Integer.parseInt(request.getParameter("t6"));
                Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/csdp","root","root");
            if(h!=null && r!=0 && bat!=0 && bran!=null && d!=null && j!=0 ){
                String sql="update studentmaster set rollno='"+r+"', batch='"+bat+"', branch='"+bran+"', degree='"+d+"', joiningyear='"+j+"' where userid='"+h+"' ";
                PreparedStatement pst=con.prepareStatement(sql);
                int i=pst.executeUpdate();
                if(i>0)
                {
                    out.println("SUCCESSFULLY UPDATED YOUR COURSE DETAILS");
                    
                }
                else{
                    out.println("PLEASE TRY AGAIN");
                }
            }
            }
            catch(Exception e)
            {
               out.println(e);
            }
            %>
    </body>
</html>

