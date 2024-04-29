
<style>
body{
background:url('dianibeach2449148891ec6eac0478dd9d621813ed (1).jpg');
background-repeat:no-repeat;
background-size:cover;
border: 3px solid black;
font-weight:bold;
font-size:20px;
font-family:arial;
}
#login{
background-color:limegreen;
height:500px;
width:50%;
border:6px solid black;
border-radius:550px;
}
.input{
border-top:3px solid limegreen;
border-bottom:2px solid black;
border-left:3px solid limegreen;
border-right:3px solid limegreen;
background-color:limegreen;
width:350px;
font-weight:bolder;
font-size:15px;
}
.btn-submit{
background-color:green;
height:30px;
width:70px;
border-radius:30px;
}
.btn-cancel{
background-color:red;
height:30px;
width:70px;
border-radius:30px;
}
hr{
width:600px;
height:10px;
background-color:green;
border:3px solid black;
}
#circle1{
width:600px;
height:100px;
background-color:limegreen;
border:3px solid black;
font-weight:bolder;
border-radius:30px;
}
#circle2{
width:100px;
height:600px;
background-color:limegreen;
border:3px solid black;
font-weight:bolder;
float:right;
border-radius:30px;
}
#circle3{
width:100px;
height:600px;
background-color:limegreen;
border:3px solid black;
font-weight:bolder;
float:left;
border-radius:30px;
}
</style>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center><img src="<c:url value="/resources/logo.JPG"/>" height='150'/></center>
    <center><div id="login"><center><br> Registration Page<br><marquee direction="right"><hr/></marquee>
<br><marquee direction="left"><hr/></marquee>
            <center><form action="<c:url value='/resources/regdbInsert.jsp'/>" method="POST">
            Username: <input type="text" class="input" name="username"><br><br>
            Password: <input type="password" class="input" name="password"><br><br>
<input class="btn-submit" type="submit" value="Signup">
<button class="btn-cancel">cancel</button></center>
</form>
            </center>
        </div>
    </center>
    </body>
</html>
