<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!doctype html>
<html>
<head>
<title>welcome on MySlam</title>


<style>
		
	
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




        	
		aside.cs
{
border: 2px solid #b3b3b3;
border-left:none;
border-top:none;
border-bottom:none;
margin-right:78%;
margin-top:-150px;

}



#a
{
font-size:20px;
width:200px;
height:27px;
background:transparent;

padding:5px;
border-radius:5%;
border-left:5px solid #000066;
transition: width 0.5s;
box-shadow: 3px 3px 5px #000066;

}
#b
{
font-size:20px;
padding:5px;
width:200px;
height:27px;
border-radius:5%;
border-left:5px solid #00cccc;
background: transparent;
transition: width 0.5s;

box-shadow: 3px 3px 5px #00cccc;

}
#c
{
font-size:20px;
padding:5px;
width:200px;
height:27px;
background:transparent;
border-radius:5%;
border-left:5px solid #000066;
transition: width 0.5s;
box-shadow: 3px 3px 5px #000066;

}
#d
{
font-size:20px;
padding:5px;
width:200px;
height:27px;
background:  transparent;
border-radius:5%;
border-left:5px solid #00cccc;
transition: width 0.5s;
box-shadow: 3px 3px 5px #00cccc;

}
#e
{
font-size:20px;
padding:5px;
width:200px;
height:27px;
background:transparent;
transition: width 0.5s;
border-radius:5%;
border-left:5px solid #000066;
box-shadow: 3px 3px 5px #000066;

}
#f
{
font-size:20px;
padding:5px;
width:200px;
height:27px;
background:transparent;
border-radius:5%;
border-left:5px solid #00cccc;
transition: width 0.5s;
box-shadow: 3px 3px 7px #00cccc;

}
#g
{
font-size:20px;
padding:5px;
width:200px;
height:27px;
background:transparent;
border-radius:5%;
border-left:5px solid #000066;
transition: width 0.5s;
box-shadow: 3px 3px 7px #000066;

}

div#a:hover,#b:hover,#c:hover,#d:hover,#e:hover,#f:hover, #g:hover,
#a:focus,#b:focus,#c:focus,#d:focus,#e:focus,#f:focus, #g:focus
{
width:270px;
cursor:pointer;
border-radius:5%;
font-size:21px;

}


div.line{
border-top:none;
border-left:none;
border-right:none;
border:1px solid silver;
opacity:0.3;

}


  

nav {width:100px;
	margin-left:1200px;margin-top: -110px;
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

nav ul li:hover > ul {
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


nav.ww{
        		width: 1000px;
        		height: 110x;
        		margin-left: 30%;
                        margin-top: -60px;
        		text-align: center;
        		padding: 10px;
        		overflow: hidden;
        		border-bottom: 2px solid #fff;
  		  }
         	nav.ww a{
        		text-decoration: none;
        		display: block;
        		width: 140px;
        		float: left;
        		color: #fff;
        		padding: 15px;
        		transform: rotate(-45deg);
        		margin-top:200px;
        		padding-left: 45px;
           box-shadow: 0 0 5px #000;
        		position: relative;
        		font-size: 15px;
        		text-shadow: 1px 1px 1px #000;
        	}
        	#q_1{
        		background-color: #000066;
			margin-left: -25px;
        	}
        	#q_2{
        		background-color: #00cccc;
        		margin-left: -72px;
        	}
        	#q_3{
        		background-color: #000066;
        		margin-left: -72px;
        	}
        	#q_4{
        		background-color: #00cccc;
        		margin-left: -72px;
        	}
        	#q_5{
        		background-color: #000066;
        		margin-left: -72px;
        	}

		#q_6{
        		background-color: #00cccc;
        		margin-left: -72px;
        	}

		#q_7{
        		background-color: #000066;
        		margin-left: -72px;
        	}
		#q_8{
        		background-color: #00cccc;
        		margin-left: -72px;
        	}
        	#q_1:hover,#q_2:hover,#q_3:hover,#q_4:hover,#q_5:hover,#q_6:hover,#q_7:hover,#q_8:hover,
        	#q_1:focus,#q_2:focus,#q_3:focus,#q_4:focus,#q_5:focus,#q_6:focus,#q_7:focus,#q_8:focus{
        		background-color: #fafafa;
        	     color: #000;
                     
        		text-shadow: none;
                   
                        font-size:15px;
        	}

div#roll
{margin-top:-8px;
margin-left:400px;
width:540px;
height:5px;


box-shadow: 8px 6px 20px black;
}


img#logo1{
   
width:80px;
    
 height: 85px;
}


h1 {
	text-align: center;
	margin-top: 75px;
}





  
#h{
    margin-left:600px;
}



div.mother
{
    margin-left: 300px;
    margin-right: 40px;
    margin-top: -200px;
  display:none;
  
}


div.father
{
    margin-left: 300px;
    margin-right: 40px;
    margin-top: -200px;
  display:none;
  
}



div.friends
{
    margin-left: 300px;
    margin-right: 40px;
    margin-top: -200px;
  display:none;
  
}


div.Best_friends
{
    margin-left: 300px;
    margin-right: 40px;
    margin-top: -200px;
  display:none;
  
}


div.Brother
{
    margin-left: 300px;
    margin-right: 40px;
    margin-top: -200px;
  display:none;
  
}


div.Sister
{
    margin-left: 300px;
    margin-right: 40px;
    margin-top: -200px;
  display:none;
  
}

div.Girlfriend
{
    margin-left: 300px;
    margin-right: 40px;
    margin-top: -200px;
  display:none;
  
}


div.Boyfriend
{
    margin-left: 300px;
    margin-right: 40px;
    margin-top: -200px;
  display:none;
  
}









.cn{
    background:#e6e6ff;
      border:2px solid #000066;
      border-left:none;
     border-right:none;
      
      border-radius: 10%;
      width:92%;
    padding-left: 2%;
  
}

p.h_01{

    font-size: 40px;
  color:#a6a6a6;
    font-family: monotype corsiva;
margin-left: 350px;
margin-top: 30px;
}


.popup_m{
  position:fixed;
  left:50vw;
  margin-left:3px;
  top:60vh;
  margin-top:55px;
  opacity:0;
}


.popup_m div
{ padding-top: 10px;
  width:130px;
  height: 70px;
  font-size:20px;
}

.popup_m div
{

  background-color:black;
  border-radius:40px;
  color:white;
  text-align:center;
}



#q_1:hover ~.popup_m
{
  margin-left:-200px;
  margin-top:-190px;
  opacity:0.7;
}
.popup_f_1{
  position:fixed;
  left:50vw;
  margin-left:3px;
  top:60vh;
  margin-top:55px;
  opacity:0;
}


.popup_f_1 div
{ padding-top: 10px;
  width:130px;
  height: 70px;
  font-size:20px;
}

.popup_f_1 div
{

  background-color:black;
  border-radius:40px;
  color:white;
  text-align:center;
}



#q_2:hover ~.popup_f_1
{
  margin-left:-130px;
  margin-top:-190px;
  opacity:0.7;
}
.popup_f_2{
  position:fixed;
  left:50vw;
  margin-left:3px;
  top:60vh;
  margin-top:55px;
  opacity:0;
}


.popup_f_2 div
{ padding-top: 10px;
  width:130px;
  height: 70px;
  font-size:20px;
}

.popup_f_2 div
{

  background-color:black;
  border-radius:40px;
  color:white;
  text-align:center;
}



#q_3:hover ~.popup_f_2
{
  margin-left:-60px;
  margin-top:-190px;
  opacity:0.7;
}
.popup_b_f{
  position:fixed;
  left:50vw;
  margin-left:3px;
  top:60vh;
  margin-top:55px;
  opacity:0;
}


.popup_b_f div
{ padding-top: 10px;
  width:130px;
  height: 70px;
  font-size:20px;
}

.popup_b_f div
{

  background-color:black;
  border-radius:40px;
  color:white;
  text-align:center;
}



#q_4:hover ~.popup_b
{
  margin-left:10px;
  margin-top:-190px;
  opacity:0.7;
}

.popup_b{
  position:fixed;
  left:50vw;
  margin-left:3px;
  top:60vh;
  margin-top:55px;
  opacity:0;
}


.popup_b div
{ padding-top: 10px;
  width:130px;
  height: 70px;
  font-size:20px;
}

.popup_b div
{

  background-color:black;
  border-radius:40px;
  color:white;
  text-align:center;
}



#q_5:hover ~.popup_b
{
  margin-left:70px;
  margin-top:-190px;
  opacity:0.7;
}

.popup_s{
  position:fixed;
  left:50vw;
  margin-left:3px;
  top:60vh;
  margin-top:55px;
  opacity:0;
}


.popup_s div
{ padding-top: 10px;
  width:130px;
  height: 70px;
  font-size:20px;
}

.popup_s div
{

  background-color:black;
  border-radius:40px;
  color:white;
  text-align:center;
}



#q_6:hover ~.popup_s
{
  margin-left:135px;
  margin-top:-190px;
  opacity:0.7;
}
.popup_bf{
  position:fixed;
  left:50vw;
  margin-left:3px;
  top:60vh;
  margin-top:55px;
  opacity:0;
}


.popup_bf div
{ padding-top: 10px;
  width:130px;
  height: 70px;
  font-size:20px;
}

.popup_bf div
{

  background-color:black;
  border-radius:40px;
  color:white;
  text-align:center;
}



#q_7:hover ~.popup_bf
{
  margin-left:210px;
  margin-top:-190px;
  opacity:0.7;
}
.popup_gf{
  position:fixed;
  left:50vw;
  margin-left:3px;
  top:60vh;
  margin-top:55px;
  opacity:0;
}


.popup_gf div
{ padding-top: 10px;
  width:130px;
  height: 70px;
  font-size:20px;
}

.popup_gf div
{

  background-color:black;
  border-radius:40px;
  color:white;
  text-align:center;
}



#q_8:hover ~.popup_gf
{
  margin-left:280px;
  margin-top:-190px;
  opacity:0.7;
}





#az{
   background:#e6e6ff;
      width: 300px;
      height: 50px;
  font-size: 20px;
 color: #000066;
    
}



</style>


</head>
<body> 
   
<header class="headermenu">
<span class="k1">M</span>
<span class="k2" style="margin-left:-7px;">y</span>
<span class="k3" style="margin-left:-7px;">S</span>
<span class="k4" style="margin-left:-7px;">l</span>
<span class="k5" style="margin-left:-7px;">a</span>
<span class="k6" style="margin-left:-7px;">m</span>
</header>
 
<img id="logo1"  style="margin-left: 197px; margin-top: -88px;" src="z_1.png"/>
  
    <div class="line"></div><hr/><hr/><hr/><hr/>
<hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/>
<br/><br/>


<nav>
	<ul>
		<li><a href="#">More<div id="down-triangle"></div></a>
			<ul>
				<li><a href="profile_my.jsp">Profile&nbsp<div class="circle"></div></a></li>
				<li><a href="modify.html">Settings&nbsp<div class="circle"></div></a></li>
				<li><a href="Logout_servlet">Log Out&nbsp<div class="circle"></div></a></li>
			
	
	</ul>
</nav>


<p class=h_01>Let's Make MySlam Post...</p>


<br/><br/>

		<nav class="ww">
			<a href="#" id="q_1">Government</a>
                        <div class="popup_m">
                            <div>Click On<br/>Government<br/></div>
  <svg height="50" width="100">
    <path d="M0 50 L40 0 L65 0 Z" />
   
  </svg>
</div>
			<a href="#" id="q_2">Institute</a>
                        
                        
                                             <div class="popup_f_1">
                            <div>Click On<br/>Institute<br/></div>
  <svg height="50" width="100">
    <path d="M0 50 L40 0 L65 0 Z" />
  
  </svg>
</div>
	
                        
                        <a href="#" id="q_3">Organizations</a>
                        
                                           <div class="popup_f_2">
                            <div>Click On<br/>Organizations<br/></div>
  <svg height="50" width="100">
    <path d="M0 50 L40 0 L65 0 Z" />
  
  </svg>
</div>
                        
                        
			<a href="#" id="q_4">Showroom</a>
                        
                        
                                           <div class="popup_b_f">
                            <div>Click On<br/>Showroom<br/></div>
  <svg height="50" width="100">
    <path d="M0 50 L40 0 L65 0 Z" />
  
  </svg>
</div>
                        
                        
			<a href="#" id="q_5">SM</a>
                        
                        
                        
                                           <div class="popup_b">
                            <div>Click On<br/>Super markets<br/></div>
  <svg height="50" width="100">
    <path d="M0 50 L40 0 L65 0 Z" />
  
  </svg>
</div>
                        
			<a href="#" id="q_6">City</a>	
                        
                        
                        
                                           <div class="popup_s">
                            <div>Click On<br/>City<br/></div>
  <svg height="50" width="100">
    <path d="M0 50 L40 0 L65 0 Z" />
  
  </svg>
</div>
                        
                        
			<a href="#" id="q_7">Big Shops</a>
                        
                                           <div class="popup_bf">
                            <div>Click On<br/>Big Shops<br/></div>
  <svg height="50" width="100">
    <path d="M0 50 L40 0 L65 0 Z" />
  
  </svg>
</div>
                        
                        
			<a href="#" id="q_8">Friends</a>
                        
                        
                        
                                           <div class="popup_gf">
                            <div>Click On<br/>Friends<br/></div>
  <svg height="50" width="100">
    <path d="M0 50 L40 0 L65 0 Z" />
  
  </svg>
</div>
			
		</nav>




<div id="roll"></div>




<aside class="cs">
    <div id="a">
<a  class="cx" 
style="text-decoration:none; font-family:arial; padding-left:2%;color:black; font-size: 17px;" href="profile_my.jsp">Profile</a>
</div><br/>
<div id="b">
<a class="cx" 
style="text-decoration:none; font-family:arial; padding-left:2%;color:black; font-size: 17px;" href="change_thought.jsp">Change Your Thought</a>
</div><br/>
<div id="c">
<a class="cx" 
style="text-decoration:none; font-family:arial; padding-left:2%;color:black; font-size: 17px;" href="modify.html">Setting</a>
</div><br/>
<div id="d">
<a class="cx" style="text-decoration:none; font-family:arial; padding-left:2%;color:black; font-size: 17px;"  href="upd.html">Modify Data</a>
</div><br/>
<div id="e">
<a class="cx"
style="text-decoration:none; padding-left:2%;color:black; font-family:arial; font-size: 17px;"  href="five.html">Questions for Slam</a>
</div><br/>
<div id="f">
<a class="cx" 
style="text-decoration:none;  font-family:arial; padding-left:2%;color:black; font-size: 17px;"  href="search_friends.jsp">Find Friends</a>
</div><br/>
<div id="g">
<a class="cx" 
style="text-decoration:none; font-family:arial;padding-left:2%;color:black; font-size: 17px;"  href="del.html">Delete Your Account</a>
</div><br/>
<br/><br/>
<a  href="question_mark.html" target="blank" color='blue' style="font-size: 35px;text-decoration:none; margin-left:30px;"><b>?</b></a><br/><br/>

</aside>




  <div class="mother">
<form action="cc.jsp" method="post">
  
<table>

  
    <tr id="az">
        <td> <input type="checkbox"  value="Your best experience with me?" name="aa1"/>Your best experience with me?</td>
  </tr>
<tr  id="az">
        <td class="bz" ><input type="checkbox" value="Do you like spicy food and why?" name="aa2"/>Do you like spicy food and why?</td>
    </tr>
 
<tr  id="az">
        <td> <input type="checkbox" value="If you had to choose between intelligence and common sense, which would you choose and why?" name="aa3"/>
           If you had to choose between intelligence and common sense, which would you choose and why?</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="What ggod thing you like in me?" name="aa4"/>What ggod thing you like in me?</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="What bad thing you don't like in me?" name="aa5"/>What bad thing you don't like in me?</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Your Who would you most like to sit next to on a 10 hour flight and why?" name="aa6"/>Your Who would you most like to sit next to on a 10 hour flight and why? </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="What do you think about me?" name="aa7"/>What do you think about me?</td>
    </tr>
    <tr id="az">
        <td> <input type="checkbox" value="what is the meaning of life in your view?" name="aa8"/>what is the meaning of life in your view?</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Have you ever broken the law?" name="aa9"/>Have you ever broken the law?</td>
    </tr>
    <tr id="az">
        <td> <input type="checkbox" value="What was one of the happiest moments of your childhood?" name="aa10"/>What was one of the happiest moments of your childhood?</td>
    </tr>
   
     <tr><td><br/></td></tr>
<tr>
          
    

        <tr><td><br/></td></tr>
        
        <tr><td> <input type="text" name="ans"/></td></tr>
        <tr><td><br/></td></tr>
        <tr><td><input type="submit" name="post" value="post"/></td></tr>
        
</table>
    
</form>

  </div>

<%
   
  if(request.getParameter("post")!=null)
{
    
    try
        {
            response.setContentType("text/html");
            
          
          
        String d=request.getParameter("aa1");
        String e=request.getParameter("aa2");
        String f =request.getParameter("aa3");
        String g =request.getParameter("aa4");
        String h =request.getParameter("aa5");
        String i =request.getParameter("aa6");
        String j =request.getParameter("aa7");
        String k =request.getParameter("aa8");
        String l =request.getParameter("aa9");
        String m =request.getParameter("aa10");
     
         String n=request.getParameter("ans");
        
        
        
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
           PreparedStatement pst=con.prepareStatement("insert into mother(ans1,ans2,ans3,ans4,ans5,ans6,ans7,ans8,ans9,ans10,id2) values(?,?,?,?,?,?,?,?,?,?,?)");
           
             pst.setString(1,d);
              pst.setString(2,e);
               pst.setString(3,f);
                 pst.setString(4,g);
                 pst.setString(5,h);
                  pst.setString(6,i);
                   pst.setString(7,j);
                    pst.setString(8,k);
                     pst.setString(9,l);
                      pst.setString(10,m);
                       pst.setString(11,n);
           
           
           int u=pst.executeUpdate();
           if(u>0)
               
           {
          
     
               
           }
        }
          catch(Exception ett)
                  {
                 try{
                     out.print(ett);
                 }
                 catch(Exception obaa)
                 {
                 }
         
                
 }
}

else
{
    
}

   %>

   
   
    <div class="father">
<form action="cc.jsp" method="post">
  
<table>

  
    <tr  id="az">
        <td> <input type="checkbox" value="Question 1" name="bb1"/>Question 1</td>
  </tr>
<tr  id="az">
        <td><input type="checkbox" value="Question 2" name="bb2"/>Question 2</td>
    </tr>
     <tr><td><br/></td></tr>
<tr  id="az">
        <td> <input type="checkbox" value="Question 3" name="bb3"/>Question 3</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 4" name="bb4"/>Question 4</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 5" name="bb5"/>Question 5</td>
    </tr>
    <tr id="az">
        <td> <input type="checkbox" value="Question 6" name="bb6"/>Question 6</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 7" name="bb7"/>Question 7</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 8" name="bb8"/>Question 8</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 9" name="bb9"/>Question 9</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 10" name="bb10"/>Question 10</td>
    </tr>
   
     <tr><td><br/></td></tr>
<tr>
          
    

        <tr><td><br/></td></tr>
        
        <tr><td> <input type="text" name="ansb"/></td></tr>
        <tr><td><br/></td></tr>
        <tr><td><input type="submit" name="postb" value="post"/></td></tr>
        
</table>
    
</form>

  </div>

<%
   
  if(request.getParameter("postb")!=null)
{
    
    try
        {
            response.setContentType("text/html");
            
          
          
        String d=request.getParameter("bb1");
        String e=request.getParameter("bb2");
        String f =request.getParameter("bb3");
        String g =request.getParameter("bb4");
        String h =request.getParameter("bb5");
        String i =request.getParameter("bb6");
        String j =request.getParameter("bb7");
        String k =request.getParameter("bb8");
        String l =request.getParameter("bb9");
        String m =request.getParameter("bb10");
     
         String n=request.getParameter("ansb");
        
        
        
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
           PreparedStatement pst=con.prepareStatement("insert into father(ans1,ans2,ans3,ans4,ans5,ans6,ans7,ans8,ans9,ans10,id2) values(?,?,?,?,?,?,?,?,?,?,?)");
           
             pst.setString(1,d);
              pst.setString(2,e);
               pst.setString(3,f);
                 pst.setString(4,g);
                 pst.setString(5,h);
                  pst.setString(6,i);
                   pst.setString(7,j);
                    pst.setString(8,k);
                     pst.setString(9,l);
                      pst.setString(10,m);
                       pst.setString(11,n);
           
           
           int u=pst.executeUpdate();
           if(u>0)
               
           {
          
     
               
           }
        }
          catch(Exception ett)
                  {
                 try{
                     out.print(ett);
                 }
                 catch(Exception obaa)
                 {
                 }
         
                
 }
}

else
{
    
}

   %>
   
   
   
   <div class="friends">
<form action="cc.jsp" method="post">
  
<table>

  
    
    <tr  id="az">
        <td> <input type="checkbox" value="Question 1" name="cc1"/>Question 1</td>
  </tr>
<tr  id="az">
        <td><input type="checkbox" value="Question 2" name="cc2"/>Question 2</td>
    </tr>
     <tr><td><br/></td></tr>
<tr  id="az">
        <td> <input type="checkbox" value="Question 3" name="cc3"/>Question 3</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 4" name="cc4"/>Question 4</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 5" name="cc5"/>Question 5</td>
    </tr>
    <tr id="az">
        <td> <input type="checkbox" value="Question 6" name="cc6"/>Question 6</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 7" name="cc7"/>Question 7</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 8" name="cc8"/>Question 8</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 9" name="cc9"/>Question 9</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 10" name="cc10"/>Question 10</td>
    </tr>
   
     <tr><td><br/></td></tr>
<tr>
          
    

        <tr><td><br/></td></tr>
        
        <tr><td> <input type="text" name="ansc"/></td></tr>
        <tr><td><br/></td></tr>
        <tr><td><input type="submit" name="postc" value="post"/></td></tr>
        
</table>
    
</form>

  </div>

<%
   
  if(request.getParameter("postb")!=null)
{
    
    try
        {
            response.setContentType("text/html");
            
          
          
        String d=request.getParameter("cc1");
        String e=request.getParameter("cc2");
        String f =request.getParameter("cc3");
        String g =request.getParameter("cc4");
        String h =request.getParameter("cc5");
        String i =request.getParameter("cc6");
        String j =request.getParameter("cc7");
        String k =request.getParameter("cc8");
        String l =request.getParameter("cc9");
        String m =request.getParameter("cc10");
     
         String n=request.getParameter("ansc");
        
        
        
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
           PreparedStatement pst=con.prepareStatement("insert into friends(ans1,ans2,ans3,ans4,ans5,ans6,ans7,ans8,ans9,ans10,id2) values(?,?,?,?,?,?,?,?,?,?,?)");
           
             pst.setString(1,d);
              pst.setString(2,e);
               pst.setString(3,f);
                 pst.setString(4,g);
                 pst.setString(5,h);
                  pst.setString(6,i);
                   pst.setString(7,j);
                    pst.setString(8,k);
                     pst.setString(9,l);
                      pst.setString(10,m);
                       pst.setString(11,n);
           
           
           int u=pst.executeUpdate();
           if(u>0)
               
           {
          
     
               
           }
        }
          catch(Exception ett)
                  {
                 try{
                     out.print(ett);
                 }
                 catch(Exception obaa)
                 {
                 }
         
                
 }
}

else
{
    
}

   %>


   
   
   <div class="Best_friends">
<form action="cc.jsp" method="post">
  
<table>

  
  
    <tr  id="az">
        <td> <input type="checkbox" value="Question 1" name="dd1"/>Question 1</td>
  </tr>
<tr  id="az">
        <td><input type="checkbox" value="Question 2" name="dd2"/>Question 2</td>
    </tr>
     <tr><td><br/></td></tr>
<tr  id="az">
        <td> <input type="checkbox" value="Question 3" name="dd3"/>Question 3</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 4" name="dd4"/>Question 4</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 5" name="dd5"/>Question 5</td>
    </tr>
    <tr id="az">
        <td> <input type="checkbox" value="Question 6" name="dd6"/>Question 6</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 7" name="dd7"/>Question 7</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 8" name="dd8"/>Question 8</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 9" name="dd9"/>Question 9</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 10" name="dd10"/>Question 10</td>
    </tr>
   
     <tr><td><br/></td></tr>
<tr>
          
    

        <tr><td><br/></td></tr>
        
        <tr><td> <input type="text" name="ansd"/></td></tr>
        <tr><td><br/></td></tr>
        <tr><td><input type="submit" name="postd" value="post"/></td></tr>
        
</table>
    
</form>

  </div>

<%
   
  if(request.getParameter("postd")!=null)
{
    
    try
        {
            response.setContentType("text/html");
            
          
          
        String d=request.getParameter("dd1");
        String e=request.getParameter("dd2");
        String f =request.getParameter("dd3");
        String g =request.getParameter("dd4");
        String h =request.getParameter("dd5");
        String i =request.getParameter("dd6");
        String j =request.getParameter("dd7");
        String k =request.getParameter("dd8");
        String l =request.getParameter("dd9");
        String m =request.getParameter("dd10");
     
         String n=request.getParameter("ansd");
        
        
        
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
           PreparedStatement pst=con.prepareStatement("insert into Best_friends(ans1,ans2,ans3,ans4,ans5,ans6,ans7,ans8,ans9,ans10,id2) values(?,?,?,?,?,?,?,?,?,?,?)");
           
             pst.setString(1,d);
              pst.setString(2,e);
               pst.setString(3,f);
                 pst.setString(4,g);
                 pst.setString(5,h);
                  pst.setString(6,i);
                   pst.setString(7,j);
                    pst.setString(8,k);
                     pst.setString(9,l);
                      pst.setString(10,m);
                       pst.setString(11,n);
           
           
           int u=pst.executeUpdate();
           if(u>0)
               
           {
          
     
               
           }
        }
          catch(Exception ett)
                  {
                 try{
                     out.print(ett);
                 }
                 catch(Exception obaa)
                 {
                 }
         
                
 }
}

else
{
    
}

   %>
   
   
   
   
   <div class="Brother">
<form action="cc.jsp" method="post">
  
<table>

  

    <tr  id="az">
        <td> <input type="checkbox" value="Question 1" name="ee1"/>Question 1</td>
  </tr>
<tr  id="az">
        <td><input type="checkbox" value="Question 2" name="ee2"/>Question 2</td>
    </tr>
     <tr><td><br/></td></tr>
<tr  id="az">
        <td> <input type="checkbox" value="Question 3" name="ee3"/>Question 3</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 4" name="ee4"/>Question 4</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 5" name="ee5"/>Question 5</td>
    </tr>
    <tr id="az">
        <td> <input type="checkbox" value="Question 6" name="ee6"/>Question 6</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 7" name="ee7"/>Question 7</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 8" name="ee8"/>Question 8</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 9" name="ee9"/>Question 9</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 10" name="ee10"/>Question 10</td>
    </tr>
   
   
     <tr><td><br/></td></tr>
<tr>
          
    

        <tr><td><br/></td></tr>
        
        <tr><td> <input type="text" name="anse"/></td></tr>
        <tr><td><br/></td></tr>
        <tr><td><input type="submit" name="poste" value="post"/></td></tr>
        
</table>
    
</form>

  </div>

<%
   
  if(request.getParameter("poste")!=null)
{
    
    try
        {
            response.setContentType("text/html");
            
          
          
        String d=request.getParameter("ee1");
        String e=request.getParameter("ee2");
        String f =request.getParameter("ee3");
        String g =request.getParameter("ee4");
        String h =request.getParameter("ee5");
        String i =request.getParameter("ee6");
        String j =request.getParameter("ee7");
        String k =request.getParameter("ee8");
        String l =request.getParameter("ee9");
        String m =request.getParameter("ee10");
     
         String n=request.getParameter("anse");
        
        
        
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
           PreparedStatement pst=con.prepareStatement("insert into Brother(ans1,ans2,ans3,ans4,ans5,ans6,ans7,ans8,ans9,ans10,id2) values(?,?,?,?,?,?,?,?,?,?,?)");
           
             pst.setString(1,d);
              pst.setString(2,e);
               pst.setString(3,f);
                 pst.setString(4,g);
                 pst.setString(5,h);
                  pst.setString(6,i);
                   pst.setString(7,j);
                    pst.setString(8,k);
                     pst.setString(9,l);
                      pst.setString(10,m);
                       pst.setString(11,n);
           
           
           int u=pst.executeUpdate();
           if(u>0)
               
           {
          
     
               
           }
        }
          catch(Exception ett)
                  {
                 try{
                     out.print(ett);
                 }
                 catch(Exception obaa)
                 {
                 }
         
                
 }
}

else
{
    
}

   %>
   
   
   
   
   <div class="Sister">
<form action="cc.jsp" method="post">
  
<table>

  
    
    <tr  id="az">
        <td> <input type="checkbox" value="Question 1" name="ff1"/>Question 1</td>
  </tr>
<tr  id="az">
        <td><input type="checkbox" value="Question 2" name="ff2"/>Question 2</td>
    </tr>
     <tr><td><br/></td></tr>
<tr  id="az">
        <td> <input type="checkbox" value="Question 3" name="ff3"/>Question 3</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 4" name="ff4"/>Question 4</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 5" name="ff5"/>Question 5</td>
    </tr>
    <tr id="az">
        <td> <input type="checkbox" value="Question 6" name="ff6"/>Question 6</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 7" name="ff7"/>Question 7</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 8" name="ff8"/>Question 8</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 9" name="ff9"/>Question 9</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 10" name="ff10"/>Question 10</td>
    </tr>
   
     <tr><td><br/></td></tr>
<tr>
          
    

        <tr><td><br/></td></tr>
        
        <tr><td> <input type="text" name="ansf"/></td></tr>
        <tr><td><br/></td></tr>
        <tr><td><input type="submit" name="postf" value="post"/></td></tr>
        
</table>
    
</form>

  </div>

<%
   
  if(request.getParameter("postf")!=null)
{
    
    try
        {
            response.setContentType("text/html");
            
          
          
        String d=request.getParameter("ff1");
        String e=request.getParameter("ff2");
        String f =request.getParameter("ff3");
        String g =request.getParameter("ff4");
        String h =request.getParameter("ff5");
        String i =request.getParameter("ff6");
        String j =request.getParameter("ff7");
        String k =request.getParameter("ff8");
        String l =request.getParameter("ff9");
        String m =request.getParameter("ff10");
     
         String n=request.getParameter("ansb");
        
        
        
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
           PreparedStatement pst=con.prepareStatement("insert into Sister(ans1,ans2,ans3,ans4,ans5,ans6,ans7,ans8,ans9,ans10,id2) values(?,?,?,?,?,?,?,?,?,?,?)");
           
             pst.setString(1,d);
              pst.setString(2,e);
               pst.setString(3,f);
                 pst.setString(4,g);
                 pst.setString(5,h);
                  pst.setString(6,i);
                   pst.setString(7,j);
                    pst.setString(8,k);
                     pst.setString(9,l);
                      pst.setString(10,m);
                       pst.setString(11,n);
           
           
           int u=pst.executeUpdate();
           if(u>0)
               
           {
          
     
               
           }
        }
          catch(Exception ett)
                  {
                 try{
                     out.print(ett);
                 }
                 catch(Exception obaa)
                 {
                 }
         
                
 }
}

else
{
    
}

   %>
   
   

   
   <div class="Boyfriend">
<form action="cc.jsp" method="post">
  
<table>

  
    <tr  id="az">
        <td> <input type="checkbox" value="Question 1" name="gg1"/>Question 1</td>
  </tr>
<tr  id="az">
        <td><input type="checkbox" value="Question 2" name="gg2"/>Question 2</td>
    </tr>
     <tr><td><br/></td></tr>
<tr  id="az">
        <td> <input type="checkbox" value="Question 3" name="gg3"/>Question 3</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 4" name="gg4"/>Question 4</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 5" name="gg5"/>Question 5</td>
    </tr>
    <tr id="az">
        <td> <input type="checkbox" value="Question 6" name="gg6"/>Question 6</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 7" name="gg7"/>Question 7</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 8" name="gg8"/>Question 8</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 9" name="gg9"/>Question 9</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 10" name="gg10"/>Question 10</td>
    </tr>
   
   
     <tr><td><br/></td></tr>
<tr>
          
    

        <tr><td><br/></td></tr>
        
        <tr><td> <input type="text" name="ansg"/></td></tr>
        <tr><td><br/></td></tr>
        <tr><td><input type="submit" name="postg" value="post"/></td></tr>
        
</table>
    
</form>

  </div>

<%
   
  if(request.getParameter("postg")!=null)
{
    
    try
        {
            response.setContentType("text/html");
            
          
          
        String d=request.getParameter("gg1");
        String e=request.getParameter("gg2");
        String f =request.getParameter("gg3");
        String g =request.getParameter("gg4");
        String h =request.getParameter("gg5");
        String i =request.getParameter("gg6");
        String j =request.getParameter("gg7");
        String k =request.getParameter("gg8");
        String l =request.getParameter("gg9");
        String m =request.getParameter("gg10");
     
         String n=request.getParameter("ansg");
        
        
        
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
           PreparedStatement pst=con.prepareStatement("insert into Boyfriend(ans1,ans2,ans3,ans4,ans5,ans6,ans7,ans8,ans9,ans10,id2) values(?,?,?,?,?,?,?,?,?,?,?)");
           
             pst.setString(1,d);
              pst.setString(2,e);
               pst.setString(3,f);
                 pst.setString(4,g);
                 pst.setString(5,h);
                  pst.setString(6,i);
                   pst.setString(7,j);
                    pst.setString(8,k);
                     pst.setString(9,l);
                      pst.setString(10,m);
                       pst.setString(11,n);
           
           
           int u=pst.executeUpdate();
           if(u>0)
               
           {
          
     
               
           }
        }
          catch(Exception ett)
                  {
                 try{
                     out.print(ett);
                 }
                 catch(Exception obaa)
                 {
                 }
         
                
 }
}

else
{
    
}

   %>
   
   
   
   <div class="Girlfriend">
<form action="cc.jsp" method="post">
  
<table>

  
   
    <tr  id="az">
        <td> <input type="checkbox" value="Question 1" name="hh1"/>Question 1</td>
  </tr>
<tr  id="az">
        <td><input type="checkbox" value="Question 2" name="hh2"/>Question 2</td>
    </tr>
     <tr><td><br/></td></tr>
<tr  id="az">
        <td> <input type="checkbox" value="Question 3" name="hh3"/>Question 3</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 4" name="hh4"/>Question 4</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 5" name="hh5"/>Question 5</td>
    </tr>
    <tr id="az">
        <td> <input type="checkbox" value="Question 6" name="hh6"/>Question 6</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 7" name="hh7"/>Question 7</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 8" name="hh8"/>Question 8</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 9" name="hh9"/>Question 9</td>
    </tr>
    <tr  id="az">
        <td> <input type="checkbox" value="Question 10" name="hh10"/>Question 10</td>
    </tr>
   
   
     <tr><td><br/></td></tr>
<tr>
          
    

        <tr><td><br/></td></tr>
        
        <tr><td> <input type="text" name="ansh"/></td></tr>
        <tr><td><br/></td></tr>
        <tr><td><input type="submit" name="posth" value="post"/></td></tr>
        
</table>
    
</form>

  </div>

<%
   
  if(request.getParameter("posth")!=null)
{
    
    try
        {
            response.setContentType("text/html");
            
          
          
        String d=request.getParameter("hh1");
        String e=request.getParameter("hh2");
        String f =request.getParameter("hh3");
        String g =request.getParameter("hh4");
        String h =request.getParameter("hh5");
        String i =request.getParameter("hh6");
        String j =request.getParameter("hh7");
        String k =request.getParameter("hh8");
        String l =request.getParameter("hh9");
        String m =request.getParameter("hh10");
     
         String n=request.getParameter("ansh");
        
        
        
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
           PreparedStatement pst=con.prepareStatement("insert into Girlfriend(ans1,ans2,ans3,ans4,ans5,ans6,ans7,ans8,ans9,ans10,id2) values(?,?,?,?,?,?,?,?,?,?,?)");
           
             pst.setString(1,d);
              pst.setString(2,e);
               pst.setString(3,f);
                 pst.setString(4,g);
                 pst.setString(5,h);
                  pst.setString(6,i);
                   pst.setString(7,j);
                    pst.setString(8,k);
                     pst.setString(9,l);
                      pst.setString(10,m);
                       pst.setString(11,n);
           
           
           int u=pst.executeUpdate();
           if(u>0)
               
           {
          
     
               
           }
        }
          catch(Exception ett)
                  {
                 try{
                     out.print(ett);
                 }
                 catch(Exception obaa)
                 {
                 }
         
                
 }
}

else
{
    
}

   %>
   
   
<script src="jq.js"></script>
<script>
    
    $(document).ready(function()
    {
        $("#q_1").click(function()
        {
            $("div.mother").slideToggle(1000);
          
          
            $("div.father").hide(20);
            $("div.friends").hide(20);
            $("div.Best_friends").hide(20);
            $("div.Brother").hide(20);
            $("div.Sister").hide(20);
            $("div.Boyfriend").hide(20);
            $("div.Girlfriend").hide(20);
            
         });
         
      $("#q_2").click(function()
        {
           
            $("div.mother").hide(20);
            $("div.father").slideToggle(1000);
          
          
            $("div.friends").hide(20);
            $("div.Best_friends").hide(20);
            $("div.Brother").hide(20);
            $("div.Sister").hide(20);
            $("div.Boyfriend").hide(20);
            $("div.Girlfriend").hide(20);
          
         });
       
       
         $("#q_3").click(function()
        {
            $("div.father").hide(20);
            $("div.mother").hide(20);
            $("div.friends").slideToggle(1000);
             $("div.Best_friends").hide(20);
            $("div.Brother").hide(20);
            $("div.Sister").hide(20);
            $("div.Boyfriend").hide(20);
            $("div.Girlfriend").hide(20);
         });
       
         $("#q_4").click(function()
        {
            $("div.father").hide(20);
            $("div.mother").hide(20);
            $("div.friends").hide(20);
             $("div.Best_friends").slideToggle(1000);
            $("div.Brother").hide(20);
            $("div.Sister").hide(20);
            $("div.Boyfriend").hide(20);
            $("div.Girlfriend").hide(20);
         });
       
         $("#q_5").click(function()
        {
            $("div.father").hide(20);
            $("div.mother").hide(20);
            $("div.friends").hide(20);
             $("div.Best_friends").hide(20);
            $("div.Brother").slideToggle(1000);
            $("div.Sister").hide(20);
            $("div.Boyfriend").hide(20);
            $("div.Girlfriend").hide(20);
         });
         $("#q_6").click(function()
        {
            $("div.father").hide(20);
            $("div.mother").hide(20);
            $("div.friends").hide(20);
             $("div.Best_friends").hide(20);
            $("div.Brother").hide(20);
            $("div.Sister").slideToggle(1000);
            $("div.Boyfriend").hide(20);
            $("div.Girlfriend").hide(20);
         });
         $("#q_7").click(function()
        {
            $("div.father").hide(20);
            $("div.mother").hide(20);
            $("div.friends").hide(20);
             $("div.Best_friends").hide(20);
            $("div.Brother").hide(20);
            $("div.Sister").hide(20);
            $("div.Boyfriend").slideToggle(1000);
            $("div.Girlfriend").hide(20);
         });
       
         $("#q_8").click(function()
        {
            $("div.father").hide(20);
            $("div.mother").hide(20);
            $("div.friends").hide(20);
             $("div.Best_friends").hide(20);
            $("div.Brother").hide(20);
            $("div.Sister").hide(20);
            $("div.Boyfriend").hide(20);
            $("div.Girlfriend").slideToggle(1000);
         });
       
       
       
       
    });
    
    
</script>






</body>
</html>



