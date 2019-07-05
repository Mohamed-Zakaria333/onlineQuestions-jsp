<%-- 
    Document   : Home
    Created on : Apr 25, 2019, 4:53:32 PM
    Author     : mz333
--%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@include file='Normal.jsp'%>--%>


<%

 ArrayList<String>que=(ArrayList<String>)session.getAttribute("qeustion");
 ArrayList<Integer>coo=(ArrayList<Integer>)session.getAttribute("sys_ans");

 int counter=0;
%>
  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home page</title>
        <!--//=================================================================================-->
        <link href="styles/Home.css" rel="stylesheet" type="text/css">
        <link href="styles/Normal.css" rel="stylesheet" type="text/css">
        <link href="styles/Answers.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="styles/animate.css">
        <script src="styles/sweet1.js"></script>
        <script src="styles/sweet2.js"></script>            
        <!--//=================================================================================-->
    </head>
    <body >
 <div id="page-container">
       <div class="head">
           
       <div style="float: left" >  <p class="title">Test Math <span>1+2+3⏱</span></p></div>
       <button class="button1" style="background-color: #060b10" id="showing" onclick="location.href = 'Home.jsp';"></button>  
        </div>
   <div id="content-wrap">

        <div class="center-div" id="mmm">
        <table id="customers"  cellspacing="10"  >
  <tr>
    <th>Question</th>
    <th>Correct Answer</th>
    <th>Your Answer</th>
  </tr>
  <%for(int q = 0;q<que.size();q++){ %>
  <tr>
    <td style="width:60%;color:#0888ae;"><%=que.get(q)%></td>
    <td style=" background: rgba(76, 175, 80, 0.7);"><%=coo.get(q)%></td>
    
    <%
        String correct= new String(coo.get(q).toString().trim());
        String user= new String(request.getParameter("usr_answer"+q).trim());
        
if(correct.equals(user)){%>
    <%=counter++%>
    <td style=" background: rgba(76, 175, 80, 0.7);" ><%=request.getParameter("usr_answer"+q)%> (true)</td>
    
    <%}
    else {%>
    <td style=" background: rgba(220, 78, 65, 0.7);" ><%=request.getParameter("usr_answer"+q)%> (false)</td>
    <%}%>
  </tr>
<% } %>
</table>
   </div>
   </div>
<footer id="footer">
    <p class="copyRights">&#169 this jsp app made by Mohamed Zakaria</p> 
</footer>
 </div>  
<!--//=================================================================================-->
<script>
 document.getElementById("customers").style.opacity = "0";      
setTimeout(function() {
                                         
Swal.fire({
  title: ' <span>Your degree is  <%=counter%>/<%=que.size()%></span>',
  text: "",
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  confirmButtonText: 'show answers',
  allowOutsideClick: false,
}).then((result) => {
  if (result.value) {
    document.getElementById("customers").style.opacity = "1";  
    Swal.DismissReason.cancel;
    document.getElementById("showing").style.backgroundColor="#0988ae";
    document.getElementById("showing").innerHTML="cancel";
  }
  else
  {
   location.href = 'Home.jsp';     
  }
})
  
                       
}, 100);
</script>
<!--//=================================================================================-->
    </body>
</html>
