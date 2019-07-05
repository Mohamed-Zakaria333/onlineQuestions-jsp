<%-- 
    Document   : Home
    Created on : Apr 25, 2019, 4:53:32 PM
    Author     : mz333
--%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
Random rand = new Random();   
ArrayList<String>Normal_question=new ArrayList();
ArrayList<Integer> Normal_coorect_Answer = new ArrayList();
int num_of_ques=3;
int range=10;
%>
<%
session.setAttribute("qeustion", null);  
session.setAttribute("sys_ans",null ); 
%>   

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    <script src="styles/index.js"></script>
        <title>Questions</title>
        <link href="styles/Home.css" rel="stylesheet" type="text/css">
        <link href="styles/Normal.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="styles/animate.css">
        <script src="styles/sweet1.js"></script>
        <script src="styles/sweet2.js"></script>    
    </head>
    <body>
<div id="page-container">
          <div class="head">
           <div style="float: left" >  <p class="title">Test Math <span>1+2+3⏱</span></p></div>
            <button class="button1" onclick="location.href = 'Home.jsp';">cancel</button>             
        </div>
   <div id="content-wrap">
            <FORM action="Results.jsp" method = "POST">
            <% for(int i = 0; i < num_of_ques; i++) { %>
            <div class="question" >
                <h1 style="text-align: center;">
<%
int num1 = rand.nextInt(range);
int num2 = rand.nextInt(range);
int num3 = rand.nextInt(range);
int result=num1+num2+num3;
Normal_question.add(num1+" + "+num2+" + "+num3+" ??");
Normal_coorect_Answer.add(result);


%>
<span style="color:#0988ae"><%=num1%></span>
 +
<span style="color:#0988ae"><%=num2%></span>
  +
<span style="color:#0988ae"><%=num3%></span>
   ??
                </h1>

     <div class="chosses" style="width: 25%">  <INPUT TYPE="number" name="usr_answer<%=i%>"  required placeholder="answer" ></div>
                </div>
            
        
        <% } %>
        <INPUT TYPE="submit" VALUE="Submit">
            </form>

     <!-- all other page content -->
   </div>
<%
  session.setAttribute("qeustion",Normal_question);  
  session.setAttribute("sys_ans",Normal_coorect_Answer ); 
%>          
  <footer id="footer" >
            <p class="copyRights">&#169 this jsp app made by Mohamed Zakaria</p>        
        </footer>
 </div>
    </body>
</html>
