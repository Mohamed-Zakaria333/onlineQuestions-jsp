<%-- 
    Document   : Home
    Created on : Apr 25, 2019, 4:53:32 PM
    Author     : mz333
--%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
Random rand = new Random();   
ArrayList<String>question=new ArrayList();
ArrayList<Integer> coorect_Answer = new ArrayList();
int num_of_ques=3;
int range=10;
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
        <title>Questions</title>
        <link href="styles/Home.css" rel="stylesheet" type="text/css">
        <link href="styles/Normal.css" rel="stylesheet" type="text/css">
        <link href="styles/With_time.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="styles/animate.css">
        <script src="styles/sweet1.js"></script>
        <script src="styles/sweet2.js"></script> 
<!--//=========================================        -->

<!-- //=========================================      -->
    </head>
    <body>
        <div class="head">

        </div>
<div id="page-container">
       <div class="head">
           <div style="float: left" > <p class="title">Test Math <span>1+2+3⏱</span></p></div>
           
            <button class="button1" onclick="location.href = 'Home.jsp';">cancel</button>       
            <div class="counter" id="count" >60</div>      
        </div>
   <div id="content-wrap">
            <FORM  action="Results.jsp" method = "POST" name="queForm">
            <% for(int i = 0; i < num_of_ques; i++) { %>
            <div class="question" >
                <h1 style="text-align: center;">
<%
int num1 = rand.nextInt(range);
int num2 = rand.nextInt(range);
int num3 = rand.nextInt(range);
int Result=num1+num2+num3;
question.add(num1+" + "+num2+" + "+num3+" ??");
coorect_Answer.add(Result);
%>
<span style="color:#0988ae"><%=num1%></span>
 +
<span style="color:#0988ae"><%=num2%></span>
  +
<span style="color:#0988ae"><%=num3%></span>
   ??
                </h1>

   <div class="chosses" style="width: 25%">  <INPUT TYPE="number" name="usr_answer<%=i%>"  placeholder="answer" required></div>
                </div>
            
        
        <% } %>
        <INPUT TYPE="submit" VALUE="Submit" class="alert-vel" onclick="stopTimer()" >
            </form>
 
      all other page content 
   </div>
  <%
  session.setAttribute("qeustion", question);  
  session.setAttribute("sys_ans",coorect_Answer ); 
  %>     
  <footer id="footer">
      <p class="copyRights">&#169 this jsp app made by Mohamed Zakaria</p> 
      
  </footer>
 </div>
<!--            //==============================================================-->
         <script>
            var counter=60; 
            var myVar = setInterval(myTimer, 1000);
            function myTimer() {
             document.getElementById("count").innerHTML = --counter;   
                if (counter < 10&&counter >0)
            {   document.getElementById("count").innerHTML= '0'+counter;
                document.getElementById("count").style.color = "red";  
            }
                         else if (counter == 0)
                       {     
                             
                           document.getElementById("count").innerHTML= '0'+counter;
                           clearInterval(myVar);
                           setTimeout(function() {
                                             
 Swal.fire({
  title: 'time out 😭😭😭😭😭😭',
  animation: false,
  customClass: {
    popup: 'animated tada'
  },
  allowOutsideClick: false,
  confirmButtonText: 'try again'
}).then((result) => {
  if (result.value) {
    location.href = 'With_time.jsp';
  }
})
  
                       
}, 1000);
                       }
            }

    function stopTimer()
{
clearInterval(myVar);
}        
         </script>
<%System.out.println(question);
System.out.println(coorect_Answer);




%>


<!--            //==============================================================-->

    </body>
</html>


