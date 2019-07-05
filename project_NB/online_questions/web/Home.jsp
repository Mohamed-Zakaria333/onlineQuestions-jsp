<%-- 
    Document   : Home
    Created on : Apr 25, 2019, 4:53:32 PM
    Author     : mz333
--%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
	
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home page</title>
        <link href="styles/Home.css" rel="stylesheet" type="text/css">        
    </head>
    <body>
 <div id="page-container">
       <div class="head">
            <p class="title">Test Math <span>1+2+3⏱</span></p>
        </div>
   <div id="content-wrap">

        <div class="center-div">
                <button class="button" onclick="location.href = 'Normal.jsp';">Easy</button>
                <button class="button" onclick="location.href = 'With_time.jsp';" >Hard</button>
        </div>
       
     <!-- all other page content -->
   </div>
     <footer id="footer">
        <p class="copyRights">&#169 this jsp app made by Mohamed Zakaria</p> 
         
     </footer>
 </div>
        
        
        

    </body>
</html>
