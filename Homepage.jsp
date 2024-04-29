<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <%
            String path=request.getContextPath();
            String basePath=request.getScheme()+"://" +request.getServerName()+":"+request.getServerPort()+path+"/";
            %>
            
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
        <style>
            body{
              font-family: sans-serif;
              font-size: 15px;
              font-weight: bold;
            }
            ul{
                background-color: limegreen;
                width: 20%;
                border:2px solid black;
                height: 700px;
                margin-top: 20px;
            }
            .nav{
                list-style: none;
                color:white;
                font-weight: bold;
                font-family:sans-serif;
                float: left;
                padding-bottom: 15px;
                padding-left: 20px;
                width: 100%;
                margin-top: -11%;
            }
            .nav-left{
              float: right;
              width: 80%;
              margin-top: -2%;
             
              
            }
            .nav-left ul li{
                font-weight: bold;
                font-family:sans-serif;
                float: left;
                list-style: none;
                color: white;
                vertical-align: middle;
            }
            .nav ul li{
                list-style: none;
                padding-top: 20px;
            }
            .content{
                opacity: .9;
                background-color: lightsteelblue;
                color:blue;
                border:2px solid blue;
                width: 50%;
                margin-left: 30%;
               float:left;
               height: 70px;
               font-size: 15px;
               padding-left: 10%;
               margin-top:-30%;
               padding-top: 20px;
             alignment-adjust:center;
             text-align: center;
            }
            input{
                border-radius: 5px;
                font-family: sans-serif;
            }
            textArea{
                border-radius: 5px;
                 border-radius: 5px;
                font-family: sans-serif;
                background: transparent;
                text-align: center;
                vertical-align: central;
            }
            table{
                padding-left: 20px;
                border: 2px solid black;
            }
            .nav ul li a{
                color:white;
                text-decoration: none;
            }
        </style>
        <link rel="stylesheet" type="text/css" href='<c:url value="/resources/bootstrap.min.css"/>'>
         <link rel="stylesheet" type="text/css" href='<c:url value="/resources/font-awesome.css"/>'>
    <link rel="stylesheet" type="text/css" href='<c:url value="/resources/font-awesome.min.css"/>'>
    </head>

    <body>
         <div class="nav-left">
        <ul style="float:left;width: 100%;height: 100px;margin-top: 30px">
            <li align="middle"><i class="fa fa-list-ul" align="" style="color:white; font-size: 30px"></i>&nbsp;&nbsp;Home page</li>
            <li style="padding-left:80%"><i class="fa fa-users" align="middle" style="color:black; font-size: 30px;alignment-baseline: central" ></i>welcome user</li>
        </ul></div>
        <div class="nav">
            <ul>
            <br>
            <br>
            <li><i class="fa fa-home" style="color:black;font-size: 30px"></i> &nbsp; &nbsp;<a href='<c:url value="/resources/Homepage.jsp"/>'>Home</a></li>
            <li><i class="fa fa-clipboard"  align="middle" style="color:black;font-size: 30px"></i> &nbsp;  &nbsp;<a href='<c:url value="/resources/issues.jsp"/>'>Issues</a></li>
            <li><i class="fa fa-clipboard"  align="middle" style="color:black;font-size: 30px"></i>&nbsp; &nbsp;<a href='<c:url value="/resources/Equipment.jsp"/>'>Equipments</a></li>
            <li><i class="fa fa-user" style="color:black;font-size: 30px"></i>&nbsp; &nbsp;<a href='<c:url value="/resources/About.jsp"/>'>About us</a></li>
            <li><i class="fa fa-user" style="color:black;font-size: 30px"></i>&nbsp; &nbsp;<a href='<c:url value="/resources/index.jsp"/>'>Logout</a></li>
        </ul>
        </div>
            <center><img src="<c:url value="/resources/kplclogo.png"/>" height='70' style="margin-top:-50%"/></center>
        <div class='content'>
            
            <p style="opacity: 1.0;">Welcome to the Kenya Power and lighting Company Limited Issue Tracking <br>WebApp</p>
        </div>
    </body>
</html>
