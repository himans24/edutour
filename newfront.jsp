<%-- 
    Document   : land
    Created on : 15 Sep, 2021, 2:59:15 PM
    Author     : himan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>COMPUTER SCIENCE DEPARTMENT PORTAL</title>
</head>
<style type="text/css">
*
{
margin: 0;
padding: 0;
font-family: arial;
overflow: hidden;
}
.container-fluid
{
width: 100%;
height: 100vh;
background: url(https://assets.kpmg/is/image/kpmg/Graduation:cq5dam.web.1200.630);
background-size: cover;
background-repeat: no-repeat;
}
.container
{
width: 1200px;
height: 100px;
margin: auto;
display: flex;
justify-content: space-between;
align-items: center;
}
.container ul
{
display: flex;
justify-content: center;
align-items: center;
}
.container ul li
{
list-style: none;
margin-right: 50px;
font-weight: bold;
cursor: pointer;
font-size: 15px;
color: #383838;
transition: 0.5s;
}
.container ul li:hover
{
color: #f44445;
}
.container ion-icon
{
color: #383838;
font-size: 50px;
}
.content
{
width: 1200px;
height: 100vh;
margin: auto;
}
.content span
{
color: #f44445;
font-weight: 400;
}
.content h1
{
font-size: 70px;
color: #393939;
padding-top: 120px;
}
.content p
{
color: grey;
padding-top: 20px;
font-weight: bold;
letter-spacing: 1px;
}
.content .btn
{
width: 170px;
height: 45px;
background-color: #f44445;
color: #fff;
font-weight: bolder;
cursor: pointer;
border: 2px solid #f44445;
border-radius: 25px;
margin-top: 30px;
transition: 0.5s;
}
.content .btn:hover
{
background-color: transparent;
border: 2px solid #f44445;
color: #f44445;
}
</style>
<body>
    
<div class="container-fluid">
<div class="container">
<img src="https://api.freelogodesign.org/files/ddcd9d1b2ccb40c6ae75b564a4773562/thumb/logo_200x200.png?v=0">
<ul>
    <a href="newland.jsp"><li>Home</li></a>
<a href="adminreg.jsp"><li>About Us</li></a>
<a href="adminmenu.jsp"><li>Contact Us</li></a>
</ul>
<ion-icon name="book"></ion-icon>
</div>
<div class="content">
<h1><span>knowledge</span> is<br> Power</h1>
<p>Learning Becomes Fun With Us...</p>
<button class="btn">View Courses</button>
</div>
</div>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>
