<%-- 
    Document   : frelog
    Created on : 12 Sep, 2021, 5:52:28 PM
    Author     : himan
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FACULTY LOGIN REGISTRATION</title>
        <style>
            body{

                background-image: url(f1.jpg);
                background-size: cover;
                background-attachment: fixed;
            }
        </style>
        <script>
            function valid()
            {
                var n = document.f1.t1.value;
                var p = document.f1.t2.value;
                var p1 = document.f1.t3.value;
                if (n == null || n == "")
                {
                    alert("USERID(EMAIL) CANNOT BE EMPTY");
                    return false;
                } else if (p == null || p == "")
                {
                    alert("PASSWORD CANNOT BE EMPTY");
                    return false;
                } 
                else if (p1==null || p1=="")
                {
                    alert("CONFIRM PASSWORD CANNOT BE EMPTY");
                    return false;
                }else if (p.equals(p1))
                {
                    alert("PASSWORD DOES NOT MATCH");
                    return false;
                }
            }
        </script>
    </head>
    <body>
    <center>
        <pre>
        <form action="" method="post" name="f1" onsubmit="return valid()">
    <h2>FACULTY LOGIN REGISTRATION</h2> 
  
    USER_ID(Email)      : <input type="email" name="t1">
    PASSWORD            : <input type="password" name="t2">
    CONFIRM PASSWORD    : <input type="password" name="t3">
          
                    <input type="SUBMIT" value="Register Login">
    
</form>
        </pre>
        <%
                try {
                    String u = request.getParameter("t1");
                    String p = request.getParameter("t2");
                    String pc = request.getParameter("t3");
                    String f = "faclt";
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/csdp", "root", "root");
                   if(p.equals(pc)){
                        String sql = "insert into loginmaster values('" + u + "','" + p + "','" + f + "' )";
                        PreparedStatement pst = con.prepareStatement(sql);
                        int j = pst.executeUpdate();
                        if (j > 0) {
                            out.println("FACULTY SUCCESSFULLY LOGIN REGISTERED");
                            //response.sendRedirect("coursedetails.jsp");
                        }else{
                            out.println("PLEASE TRY AGAIN");
                            response.sendRedirect("frelog.jsp");
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
