

<%@page import="java.sql.*"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>welcome on MySlam</title>

<style>

    
    
    
    
    
    
    
    #front h1 {
        font-size: 3rem;
        color: #ccffff;
        text-shadow: -1px -1px 1px rgb(50,50,50);
        padding: 0 0 0 0rem;
        text-align: center;
      }
      
      p {
        padding: 1.1rem 0 0.5rem 3rem;
        line-height: 1rem;
        word-spacing: 2px;
        font-size: 0.7rem;
        font-family: SansationRegular, arial, sans-serif;
      }
      
      footer p {
        padding: 0.5rem 0 0.5rem 2rem;
      }
      
      li {
        padding: 0 0 0.5rem 0.5rem;
        line-height: 1rem;
        word-spacing: 2px;
        font-size: 0.9rem;
        font-family: SansationRegular, arial, sans-serif;
      }

      
      
      article {
        position: absolute;
        width: 16rem;
        height: 23rem;
        top: 0;
        left: 0;
        font-size: 1.2rem;
        padding: 2rem;
        border-radius: 20px;
        background-color: #fff; 
        
        background-image: -webkit-linear-gradient(0deg, transparent 50px, #abced4 50px, #abced4 51px, transparent 51px), -webkit-linear-gradient(#eee .05rem, transparent .05rem);
        
        background-size: 100% 1.1rem;
        
        box-shadow: 2px 2px 10px rgba(0,0,0,0.5);
      }
      
      #front, #back {
        background-size: 100px 100px;
        background: #000066;;
      }
      
      #wrapper {
          
          margin-left: 700px;
          margin-top: 150px;
        position: absolute;
        top: 6rem;
        left: 2rem;
        width: 30rem;
        height: 27rem;
        border-radius: 20px;
        
        -webkit-transform: perspective(1200px) rotateY(-9deg);
        -moz-transform: perspective(1200px) rotateY(-9deg);
        -ms-transform: perspective(1200px) rotateY(-9deg);
        -o-transform: perspective(1200px) rotateY(-9deg);
        transform: perspective(1200px) rotateY(-9deg);
        
        -webkit-transform-style: preserve-3d;
        -moz-transform-style: preserve-3d;
        -ms-transform-style: preserve-3d;
        -o-transform-style: preserve-3d;
        transform-style: preserve-3d;
        
        -webkit-transition: 1s all;
        -moz-transition: 1s all;
        -ms-transition: 1s all;
        -o-transition: 1s all;
        transition: 1s all;
      }
      
      #wrapper:hover {
        -webkit-transform: perspective(1200px) rotateY(-30deg);
        -moz-transform: perspective(1200px) rotateY(-30deg);
        -ms-transform: perspective(1200px) rotateY(-30deg);
        -o-transform: perspective(1200px) rotateY(-30deg);
        transform: perspective(1200px) rotateY(-30deg);
      }
      
      #front {
        -webkit-transform: translateZ(5rem);
        -moz-transform: translateZ(5rem);
        -ms-transform: translateZ(5rem);
        -o-transform: translateZ(5rem);
        transform: translateZ(5rem);
      }
      
      #p1, #p2 {
        -webkit-transition: 2s all;
        -moz-transition: 2s all;
        -ms-transition: 2s all;
        -o-transition: 2s all;
        transition: 2s all;
      }
      
      #p1:hover, #p2:hover {
        -webkit-transform: translateX(20rem) rotate(0deg) scale(1.1);
        -moz-transform: translateX(20rem) rotate(0deg) scale(1.1);
        -ms-transform: translateX(20rem) rotate(0deg) scale(1.1);
        -o-transform: translateX(20rem) rotate(0deg) scale(1.1);
        transform: translateX(20rem) rotate(0deg) scale(1.1);
      }
      
      #p1 {
        -webkit-transform: translateZ(0rem);
        -moz-transform: translateZ(0rem);
        -ms-transform: translateZ(0rem);
        -o-transform: translateZ(0rem);
        transform: translateZ(0rem);
      }
     
      #p2 {
        -webkit-transform: translateZ(-5rem);
        -moz-transform: translateZ(-5rem);
        -ms-transform: translateZ(-5rem);
        -o-transform: translateZ(-5rem);
        transform: translateZ(-5rem);
      }
      
      #back {
        -webkit-transform: translateZ(-10rem);
        -moz-transform: translateZ(-10rem);
        -ms-transform: translateZ(-10rem);
        -o-transform: translateZ(-10rem);
        transform: translateZ(-10rem);
      }
      
      
    
  
	
*{
margin: 0px;
box-sizing: border-box;
}

.headermenu{
height: 70px;
border-bottom: 2px;
width:1200px;
box-shadow: 2px 4px 5px white;
}

	
span.k1
{
font-size: 65px;
color: #000066;

margin-left: 1%;
font-weight: bold;

font-family:"arial rounded MT";
text-shadow: 2px 2px 2px silver;
}

span.k2
{
font-size: 50px;
color: #00cccc;
height: 800px;
font-weight: bold;
font-family:"arial rounded MT";
text-shadow: 2px 2px 2px silver;
}
span.k3
{
font-size: 65px;
color:#000066;
font-weight: bold;
font-family:"arial rounded MT";
text-shadow: 2px 2px 2px silver;
}
span.k4
{
font-size: 50px;
color:   #00cccc;
font-weight: bold;
font-family:"arial rounded MT";
text-shadow: 2px 2px 2px silver;
}
span.k5
{
font-size: 50px;
color: #00cccc;
font-weight: bold;
font-family:"arial rounded MT";
text-shadow: 2px 2px 2px silver;
}
span.k6
{
font-size: 50px;
color: #00cccc;
font-weight: bold;
font-family:"arial rounded MT";
text-shadow: 2px 2px 2px silver;
}




div.line{
border-top:none;
border-left:none;
border-right:none;
border:1px solid silver;
opacity:0.3;

}

img#logo1{
   
width:80px;
    
 height: 85px;
}





img.q1{
    margin-left: 1150px;
margin-top: -10px;
    width:150px;
    height:150px;
    
  }

 
  

nav {width:100px;
	margin-left:1200px;
       margin-top: -320px;
       
	text-align: center;
}

nav ul {
	margin-left: 0;
	padding-left: 0;
	width: 100px;
	list-style: none;
	position: relative;
	display: inline-table;
}

nav ul ul {
	display: none;
}

nav ul li:hover ul {
	display: block;
}

nav ul li {
	float: left;
	width: 130px;
	text-align: left;
	border-bottom:none;
  
}
	
nav ul li:hover {
	background: #f2f2f2;
}

nav ul li a {
	display: block; 
	padding: 15px 10px;
	color: #000066;
        font-size: 25px;
        font-weight: bold;
        margin-left: 13px;
	text-decoration: none;
}
					
nav ul ul {
	border-radius: 0px; 
	padding: 0;
	position: absolute; 
	top: 100%;
}

nav ul ul li {
	float: none;
	border-bottom: 2px solid #000066; 
	position: relative;
}

nav ul ul li a {
	padding: 15px 10px;
	color: #838383;
}	

nav ul ul li a:hover {
	background: #000066;
	color: #fff;
}	

#down-triangle {
	float: right;
	width: 0; 

 	height: 0;
 	margin-top: 10px;
 	border-top: 10px solid #00cccc;
  border-left: 10px solid transparent; 
  border-right: 10px solid transparent; 
}

.circle {
	float: right;
	display: inline;
	width: 10px;
 	height: 10px; 
 	margin-top: 5px;
  border:none;
 
}

input[type="submit"].post_1{
    background: #000066;
    color: silver;
}

div.post{
    background:transparent;
    border:3px solid silver;
    border-radius: 10px;
    box-shadow: 10px 10px 40px silver;
    width:900px;
    height:450px;
    margin-left: 300px;
    
    margin-top: -760px;
}


a.thought{
   
    width:1000px;
    height:200px;
    text-decoration: none;
    border:2px solid silver;
    background: #000066;
    
    color:silver;
    font-size: 15px;
}


div.big_image{
    margin-top: 30px;
    width:700px;
    height:600px;
        background:silver;
}

a.ss1:before { 
    font-family: FontAwesome;
    content: "\f007";
    font-size: 30px;
    color:hotpink;
}

a.ss2:before { 
    font-family: FontAwesome;
    content: "\f095";
    font-size: 30px;
    color:hotpink;
}
a.ss3:before { 
    font-family: FontAwesome;
    content: "\f007";
    font-size: 30px;
    color:hotpink;
}a.ss4:before { 
    font-family: FontAwesome;
    content: "\f118";
    font-size: 30px;
    color:hotpink;
}
a.ss5:before { 
    font-family: FontAwesome;
    content: "\f263";
    font-size: 30px;
    color:hotpink;
}
a.ss6:before { 
    font-family: FontAwesome;
    content: "\f27e";
    font-size: 30px;
    color:hotpink;
}
a.ss7:before { 
    font-family: FontAwesome;
    content: "\f201";
    font-size: 30px;
    color:hotpink;
}
a.ss8:before { 
    font-family: FontAwesome;
    content: "\f19d";
    font-size: 30px;
    color:hotpink;
}
a.ss9:before { 
    font-family: FontAwesome;
    content: "\f0cb";
    font-size: 30px;
    color:hotpink;
}
a.ss10:before { 
    font-family: FontAwesome;
    content: "\f1fd";
    font-size: 30px;
    color:hotpink;
}
a.ss11:before { 
    font-family: FontAwesome;
    content: "\f25b";
    font-size: 30px;
    color:hotpink;
}


</style>
<body>
    
   <a href="cc.jsp" style="text-decoration:none;">  <header class="headermenu">
<span class="k1">M</span>
<span class="k2" style="margin-left:-7px;">y</span>
<span class="k3" style="margin-left:-7px;">S</span>
<span class="k4" style="margin-left:-7px;">l</span>
<span class="k5" style="margin-left:-7px;">a</span>
<span class="k6" style="margin-left:-7px;">m</span>
</header>
   </a>
<img id="logo1"  style="margin-left: 197px; margin-top: -88px;" src="z_1.png"/>
  
    <div class="line"></div><hr/><hr/><hr/><hr/>
<hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/>
<br/><br/>
<img class="q1" src="c33.png"/>



<div style="margin-left: 1100px;margin-top: -3px;">
<table>
    <tr>
            <td>
            <div style="font-size:30px; color: #000066; margin-left: 25px;">
                <%=session.getAttribute("na") %> <%=session.getAttribute("sur") %></div>
        </td></tr><tr><td>
 <div style="font-size:25px; color: #000066; margin-left: 25px;">
                <%=session.getAttribute("em123") %></div>
        </td></tr>
</table>
</div>


<nav>
	<ul>
		<li><a href="#">More<div id="down-triangle"></div></a>
			<ul>
				<li><a href="profile_my.jsp">Profile&nbsp<div class="circle"></div></a></li>
				<li><a href="modify.html">Settings&nbsp<div class="circle"></div></a></li>
				<li><a href="Logout_servlet">LogOut<div class="circle"></div></a></li>
			
	
	</ul>
</nav>


<div class="big_image">
    
    
    <br/><br/><p style="font-size:40px"> Image can't be upload.</p>
    <br/><br/><p style="font-size:20px"> (Work under processing...)</p>
    
    
    
</div>





  <div id="wrapper">
	<article id="front">
            <h1><br/>Hi I'm  <%=session.getAttribute("na") %></h1>
	</article>
	<article id="p1">
            <h1>&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;About Me!<br/><br/></h1>
            <p>
                
                 <%

try
        {
            response.setContentType("text/html");
          
            
             
            Class.forName("com.mysql.jdbc.Driver");
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
          
            PreparedStatement pst=con.prepareStatement("select * from about_me where id=?");
           pst.setString(1,(String)session.getAttribute("em123"));
   
          
 ResultSet rs = pst.executeQuery();
 if(rs.next())
 {
   %>
   
   <% out.print( rs.getString(2));%>
    
   <%
 }
 else{
     out.print("nothing to show");
 }
 }
        
          catch(Exception ett)
                  {
                 try{
                     
                     out.print(ett);
                     out.print("something is wrong");
                 }
                 catch(Exception er)
                 {
        }
  }
 %>
                
            </p>
            <br/>
             <a  class="thought" href="change_about_me.jsp">Change</a>
	</article>
	<article id="p2">
            <h1> &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=session.getAttribute("na") %>'s </h1><h1> &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thought 
                <br/>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;of Life</h1>
	<p>
           <br/> 
           
               <%

try
        {
            response.setContentType("text/html");
          
            
             
            Class.forName("com.mysql.jdbc.Driver");
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
          
            PreparedStatement pst=con.prepareStatement("select * from profile where id=?");
           pst.setString(1,(String)session.getAttribute("em123"));
   
          
 ResultSet rs = pst.executeQuery();
 if(rs.next())
 {
   %>
   
   <% out.print( rs.getString(2));%>
    
   <%
 }
 else{
     out.print("nothing to show");
 }
 }
        
          catch(Exception ett)
                  {
                 try{
                     
                     out.print(ett);
                     out.print("something is wrong");
                 }
                 catch(Exception er)
                 {
        }
  }
 %>
  
  
 <br/><br/>
        </p>
        <a  class="thought" href="change_thought.jsp">Change Thought</a>
	</article>
	<article id="back">
	</article>
</div>

        
     
  
  
        
        
<center>
        <div>
            
            
            <h1 style="margin-top: 50px; font-size: 50px; opacity: 0.7"><i><b><%=session.getAttribute("na") %> 's Timeline</b></i></h1>
            <br/>
            <hr style="opacity:0.8; margin-left: 70px; margin-right: 70px;">
            </br><br/>
            
        </div> 
</center>          
<form action="timeline.jsp">
<div style="margin-left:350px;">
                <ul>
                    
                    <li ><a class="ss1"></a>&nbsp;&nbsp; Nick Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=session.getAttribute("nic") %></li>
                    <li><br/></li>
                    <li ><a class="ss2"></a>&nbsp;&nbsp;Contact No. :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=session.getAttribute("mob") %></li> 
                    <li><br/></li>
                    
                    <li ><a class="ss3"></a>&nbsp;&nbsp; Gender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=session.getAttribute("gen") %></li>
                    <li><br/></li>
                    <li ><a class="ss4"></a>&nbsp;&nbsp;Favourite color:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=session.getAttribute("col") %></li>
                    <li><br/></li>
                    <li ><a class="ss5"></a>&nbsp;&nbsp; Hobbies:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=session.getAttribute("hob") %></li>
                    <li><br/></li>
                    <li ><a class="ss6"></a>&nbsp;&nbsp;Person I admire the most:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=session.getAttribute("per") %></li>
                    <li><br/></li>
                    <li ><a class="ss7"></a>&nbsp;&nbsp; Dream of becoming:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=session.getAttribute("dre") %></li>
                    <li><br/></li>
                    <li ><a class="ss8"></a>&nbsp;&nbsp; Work as:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=session.getAttribute("wor") %></li>
                    <li><br/></li>
                    <li ><a class="ss9"></a>&nbsp;&nbsp; Favourite Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=session.getAttribute("num") %></li>
                    
                    <li><br/></li>
                    <li ><a class="ss10"></a>&nbsp;&nbsp; Birthday:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=session.getAttribute("bd") %></li>
                    <li><br/></li>
                    <li ><a class="ss11"></a>&nbsp;&nbsp;Favourite Month and Year till now..&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=session.getAttribute("me") %></li>
                    
                </ul>
                <br/><br/><br/><br/>
                <input 
                    style="width: 600px; height: 30px; border:none; color: #000066; opacity:0.9; background: #ccffff;"
                    type="submit" value="change timeline"/>

                <br/><br/><br/><br/>
                <br/><br/><br/><br/>

            </div>     
</form>
<a  href="question_mark.html" target="blank" color='blue' style="font-size: 50px;text-decoration:none; margin-left:30px;"><b>?</b></a><br/><br/>

        
</body>
</html>