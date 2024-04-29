<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>signup page</title>
    <%
            String path=request.getContextPath();
            String basePath=request.getScheme()+"://" +request.getServerName()+":"+request.getServerPort()+path+"/";
            %>
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
background-color:blue;
height:500px;
width:60%;
border:6px solid black;
border-radius:100px;
}
.input{
border-top:3px blueviolet;
border-bottom:2px solid black;
border-left:3px blueviolet;
border-right:3px solid limegreen;
background-color:blue;
width:350px;
font-weight:bolder;
font-size:15px;
}
.btn-submit{
background-color:white;
height:30px;
width:70px;
border-radius:30px;
}
.btn-cancel{
background-color:white;
height:30px;
width:70px;
border-radius:30px;
}
hr{
width:600px;
height:10px;
background-color:blue;
border:3px solid black;
}
#circle1{
width:650px;
height:100px;
background-color:blue;
border:3px solid black;
font-weight:bolder;
border-radius:30px;
}

</style>
</head>
<body>
<center><img src="<c:url value="/resources/kplclogo.png"/>" height='150'/></center>
<br><br><br><center>

<div id="login"><center><br> Signup Page<br>
<form action="<c:url value="/resources/signupConn.jsp"/>" method="POST">
            Fullnames: <input type="text" class="input" name="fullnames"><br><br>
            Username: <input type="text" class="input" name="username"><br><br>
            Password: <input type="password" class="input" name="password"><br><br>
<input class="btn-submit" type="submit" value="Signup">
<button class="btn-cancel">cancel</button></center>
    </form>
Login here <a href="<c:url value='index.jsp'/>">Login</a> if you have account<br>
<input type="checkbox">Forgot password
</div>
<div id="circle1">
 Copyright&copy Kenya Power and Lightening Company Limited Issue Tracking WebApp 
               <div>
        <font color="red"><c:if test="${not empty param.errMsg}">
            <c:out value="${param.errMsg}" />
            <a href="index.jsp">Go Back</a>
        </c:if>
        </font>
        <font color="green"><c:if test="${not empty param.susMsg}">
            <c:out value="${param.susMsg}" />
            </c:if>
        </div>
        </div>
</div>
</center>

</body>
</html>