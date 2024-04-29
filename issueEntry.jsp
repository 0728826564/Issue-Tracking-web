
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page language="java" contentType="text/html,charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.io.*,java.util.*,java.sql.*" %>
<%@page import="javax.servlet.http.*,javax.servlet.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="dbcore" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="dbsql" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <%
            String path=request.getContextPath();
            String basePath=request.getScheme()+"://" +request.getServerName()+":"+request.getServerPort()+path+"/";
            %>
            
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
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
               
                color:black;
                
                width: 50%;
                margin-left: 30%;
               float:left;
               height: 70px;
               font-size: 15px;
               padding-left: 10%;
               margin-top:-45%;
               padding-top: 20px;
             //alignment-adjust:center;
             //text-align: center;
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
            .equip{
                width: 40%;
                height: 40px;
            }
        </style>
        <link rel="stylesheet" type="text/css" href='<c:url value="/resources/bootstrap.min.css"/>'>
         <link rel="stylesheet" type="text/css" href='<c:url value="/resources/font-awesome.css"/>'>
    <link rel="stylesheet" type="text/css" href='<c:url value="/resources/font-awesome.min.css"/>'>
    </head>

    <body>
         <div class="nav-left">
        <ul style="float:left;width: 100%;height: 100px;margin-top: 30px">
            <li align="middle"><i class="fa fa-list-ul" align="" style="color:white; font-size: 30px"></i>&nbsp;&nbsp;Issue tracking page</li>
            <li style="padding-left:80%"><i class="fa fa-users" align="middle" style="color:black; font-size: 30px;alignment-baseline: central" ></i>welcome waiter</li>
        </ul></div>
        <div class="nav">
            <ul>
            <br>
            <br>
            <li><i class="fa fa-user" style="color:black;font-size: 30px"></i>&nbsp; &nbsp;<a href='<c:url value="/resources/logout.jsp"/>'>Logout</a></li>
        </ul>
        </div>
        <div class='content'>
            <center><h2>Add Issue</h2></center>
            <form action="<c:url value='sendData.jsp'/>" method="POST">
                   <label>Id:</label><input name="Number" type="text" placeholder="Enter serrial number"><br><br>
            Problems:&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <select class="equip" name="name">
                <option value="lights">Lights</option>
                <option value="Transformer">Transformer</option>
            </select><br><br>
            Description: <textarea name="desc" cols="10" rows="4" align="middle"> 
            </textarea><br><br>
            <label>Location:</label><input name="loc" type="text" placeholder="Enter location"><br><br>
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn-primary" style="width:20%" type="submit">Save</button> <button class="btn-warning" style="width:20%">Cancel</button>
            <h3>Available equipments</h3></form>
            <dbsql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/issuetrack"
                             user="root" password=""/>   
        <dbsql:query dataSource="${db}" var="dbvar">
            SELECT * from issue;
        </dbsql:query>
        
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

    </body>
</html>
