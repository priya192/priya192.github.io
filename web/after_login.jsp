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





		aside.cs
{
border: 2px solid #b3b3b3;
border-left:none;
border-top:none;
border-bottom:none;
margin-right:79%;
margin-top:230px;

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


img.q1{
    margin-left: 2px;
    margin-top:60px;
    width:150px;
    height:150px;
  }

  select.options{
      
  }
  
  
  

nav {width:100px;
	margin-left:1200px;
       margin-top: -250px;
       
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

input[type="submit"].post_1{
    background: #000066;
    color: silver;
}

div.post{
    background:#000066;
    border:3px solid silver;
    border-radius: 10px;
    box-shadow: 10px 10px 40px silver;
    width:900px;
    height:450px;
    margin-left: 300px;
    
    margin-top: -760px;
}



</style>
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



<table>
    <tr><td>
            <p style="font-size:40px; color:#00cccc;">user:</p></td><td>
            <div style="font-size:30px; color: #000066; margin-left: 25px;">
                <%=session.getAttribute("na") %></div>
        </td></tr><tr><td><br/></td></tr><tr><td>
 <p style="font-size:40px; color:#00cccc;">email:</p></td><td><div style="font-size:25px; color: #000066; margin-left: 25px;">
                <%=session.getAttribute("em12") %></div>
        </td></tr>
</table>
<img class="q1" src="c33.png"/>



<nav>
	<ul>
		<li><a href="#">More<div id="down-triangle"></div></a>
			<ul>
				<li><a href="profile_my.jsp">Profile&nbsp<div class="circle"></div></a></li>
				<li><a href="modify.html">Settings&nbsp<div class="circle"></div></a></li>
				<li><a href="Logout_servlet">Log Out&nbsp<div class="circle"></div></a></li>
			
	
	</ul>
</nav>



<aside class="cs">
    <div id="a">
<a  class="cx" 
style="text-decoration:none; font-family:arial; padding-left:2%;color:black; font-size: 17px;" href="profile_my.jsp">Profile</a>
</div><br/>
<div id="b">
<a class="cx" 
style="text-decoration:none; font-family:arial; padding-left:2%;color:black; font-size: 17px;" href="change-thought">Change Your Thought</a>
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
<br/><br/><br/><br/>
</aside>


<div class="post">
    <form action="after_login.jsp" method="post">

    <table>
        <tr><td><br/></td></tr>
        <tr><td>
                <select  name="cat" style="background: silver;font-size: 20px; color:#000066; width:800px;height: 30px; margin-left: 80px;" title="option"><option value="0" >select cateogries</option><option value="1">Mother</option><option value="2">Father</option>
                    <option value="4">Friends</option><option value="5">Best Friend</option><option value="6">Brother</option><option value="6">Sister</option><option value="7">Boyfriend</option>
               <option value="8">Girlfriend</option> </select>
            </td></tr>
        <tr><td><br/></td></tr>
        
        <tr><td>
               
                
                <input type="text" value="sender" name="send_name" placeholder="enter sender name"/>
               &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp; <input type="email" name="send-email" placeholder="enter sender email"/>   
                
         
                
            </td></tr>
        
        <tr><td><br/></td></tr>
        <tr><td>
                
                    <div   style="width:900px; height:250px; border-color: black;background: silver;border-width: 3px;">

                        <% String[] sports; %>
 
<% 
   sports = request.getParameterValues("nn");
   out.print("<br/>");
%>
   <p style="color:#000066; font-size: 30px; margin-left: 30px;"><b>Questions...</b><br/><br/></p>
  
   <%
   if (sports != null) 
   {
      for (int i = 0; i < sports.length; i++) 
      {
         
         %>
        
        <table><tr><td>
         
             <ul> <li>        
            <p style="color:#000066; font-size:17px;">
        
             <%
           out.println("<b>"+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+sports[i]+"<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+"<br/><br/>");
           %>
          
         </p>
             </li></ul>     </td><td><input type="text" name="ans" style="width:500px; height: 30px; border: 2px solid #000066; border-radius: 10px; border-top: none;border-left: none; border-right: none;
                                 color:#000066; font-size: 20px; background:transparent;" placeholder="answere"/></td></tr></table>
         
        <%
      }
   }
   else out.println ("<b>No Questions <b>");
%>

                    
  
                        
                    </div>
                <button style="width:100px; height:50px; background: #000066; cursor:pointer;"><a  style="text-decoration: none;color: silver;" 
                href="five.html">Select Questions</a></button>
             
        </td></tr>
        
        <tr><td><br/></td></tr>
        <tr><td><input  class="post_1" type="submit"  name="ps" value="post"/></td></tr>
      
    </table> </form>

<%
   
  if(request.getParameter("ps")!=null)
{
    
    try
        {
            response.setContentType("text/html");
            
          
            String a=request.getParameter("cat");
           String b=request.getParameter("send_name");
            String c=request.getParameter("send-email");
               String d=request.getParameter("nn");
            String e=request.getParameter("ans");
      
        
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
           PreparedStatement pst=con.prepareStatement("insert into post values(?,?,?,?,?)");
           pst.setString(1,a);
           pst.setString(2,b);
            pst.setString(3,c);
             pst.setString(4,d);
              pst.setString(5,e);
             ;
 
           
           
           int u=pst.executeUpdate();
           if(u>0)
               
           {
          
     HttpSession obm=request.getSession();
     obm.setAttribute("cat",a);
     obm.setAttribute("send_name",b);
      obm.setAttribute("send_email",c);
       obm.setAttribute("nn",d);
        obm.setAttribute("ans",e);
  
               
            
     response.sendRedirect("after_login.jsp");
 
               
              
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
<form action="after_login.jsp" method="post">
<input type=submit name="vv"/>CLICKKKKKKKKK
</form>

</div>
<center>


<%@page import="java.sql.*"  %>




<%
if(request.getParameter("vv")!=null)
{

 try
        {
            response.setContentType("text/html");
          
           String a=(String)session.getAttribute("em12");
            Class.forName("com.mysql.jdbc.Driver");
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
          
            
            PreparedStatement pst2=con.prepareStatement("select * from extra_fields where email_id=?");
          
          pst2.setString(1,a);
 ResultSet rs2 = pst2.executeQuery();

 if(rs2.next())
 {
   
     HttpSession obm=request.getSession();
     obm.setAttribute("nic",rs2.getString(1));
     obm.setAttribute("mob",rs2.getString(2));
      obm.setAttribute("gen",rs2.getString(3));
       obm.setAttribute("col",rs2.getString(4));
        obm.setAttribute("hob",rs2.getString(5));
         obm.setAttribute("per",rs2.getString(6));
          obm.setAttribute("dre",rs2.getString(7));
           obm.setAttribute("wor",rs2.getString(8));
            obm.setAttribute("num",rs2.getString(9));
             obm.setAttribute("bd",rs2.getString(10));
              obm.setAttribute("me",rs2.getString(11));
               
     response.sendRedirect("profile_my.jsp");
 
 }
           else
 {
     
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
}
else{
}

  %>







<%
if(request.getParameter("click2")!=null)
{
    
    try{
        response.setContentType("text/html");
        String a= request.getParameter("search1");
        
        Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
          
            PreparedStatement pst=con.prepareStatement("select Name ,EMail_ID from myslam where EMail_ID=?");
           pst.setString(1,a);
      
          
 ResultSet rs = pst.executeQuery();
 if(rs.next())
 {
         
 %>

 <% out.print("<b>Name:</b>"+rs.getString(1));%>
             <% out.print("<b>EMail=</b>"+rs.getString(2));%>

 
<%             
             
}
         
 else
 {
    
     out.print("No user Found");
    
 }
        }
        
        
          catch(Exception ett)
                  {
                try
                {
                    out.print(ett);
                
                     out.print("something is wrong");
                  }
                catch(Exception er){
                    
                }
 }
}
else
{
    
}


%>
</center>

</body>
</html>