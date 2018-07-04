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




img#logo1{
   
width:80px;
    
 height: 85px;
}





form{
	background-color:transparent;
        box-shadow: 4px 8px 20px #000066;
	width: 680px;
	padding: 40px 10px 20px 10px;
	margin-top: 80px;
        margin-left: 350px;
	border-radius: 4px;
  text-align: center;
}
label{
  color: #808080;
}
legend{
  color: #808080;
}
#priya fieldset{
	border: none;
	padding: 0;
	margin: 0;
}
#priya legend{
	padding: 0;
}
#priya ul{
	margin: 0;
	padding: 0;
	list-style: none;
}
input[type="submit"]{
	display: block;
	border: none;
	margin: 20px auto;
	width: 280px;
	background-color: mediumseagreen;
	padding: 15px 0;
	text-align: center;
	font-size: 18px;
	border-radius: 4px;
}
input[type="reset"]{
	display: block;
	border: none;
	margin: 20px auto;
	width: 280px;
	background-color: steelblue;
	padding: 15px 0;
	text-align: center;
	font-size: 18px;
	border-radius: 4px;
}
input[type="file"]{
    display: block;
  	border: none;
	  margin: 20px auto;
    background-color:#ddd;
    padding:15px 0;
    font-family:Arial;
    font-size:16px;
    cursor: pointer;
}
input{
	display: block;
	border: none;
	margin: 20px auto;
	width: 280px;
	background-color: #eaeaea;
	padding: 15px 0;
	text-align: center;
	font-size: 18px;
	border-radius: 4px;
}
.custom-input-file {
    overflow: hidden;
    position: relative;
    cursor: pointer;
}
input[type="file"]{
  height: 0px; 
}
input[type="file"]:before {
  content: 'Buscar archivo';
  background: gold;
  width: 100%;
  height: 35px;
  display: block;
  text-align: center;
  position: relative;
  margin: 0;
  margin: 0 5px;
  left: -6px;
  border: 1px solid #E0E0E0;
  top: -1px;
  line-height: 35px;
  color: #B6B6B6;
  padding-left: 5px;
  display: block;
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



	<form action="extra_fields.jsp" method="POST">
            <h1 style="color:#000066; font-family: arial; font-size: 60px;">MySlam<br/><br/></h1>
			<section id="priya">
				<p>
					<label for="name">Nick name:</label>
					<input type="text" name="nick" id="name">
				</p>
				<p>
					<label for="call">Call me at:</label>
					<input type="text" name="mobile" id="call">
				</p>
				<fieldset>
					<legend>Gender:</legend>
					<ul>
						<li>
							<label>
								<input type="radio" name="gender" value="Male" checked>
								Male
							</label>
						</li>
						<li>
							<label>
								<input type="radio" name="gender" value="Female">
								Female
							</label>
                                                </li><li><br/></li>
					</ul>
				</fieldset>
				
				   
				<p>
					<label for="color">Color favourite:</label>
                                        <input  style="height:70px;" type="color" name="color" id="color"><input type="text" placeholder="color name" id="color">
				</p>
				<p>
					<label for="hobby">My Hobbies::</label>
                                        <input type="text" name="hobby" maxlength="50" id="hobby">
				</p>
                                
                              
                                <p>
					<label for="person">  Person I admire the most:</label>
                                        <input type="text" name="person" maxlength="20" id="person">
				</p>
                                     <p>
					<label for="dream">Dream of becoming:</label>
                                        <input type="text" name="dream" maxlength="50" id="dream">
				</p>
                              
                                <p>
					<label for="aim">Work as:</label>
					<input type="text" name="work" id="aim">
				</p>
                                
				<p>
					<label for="number">Number favourite::</label>
					<input type="number" name="numero" id="number" min="0" max="9" >
				</p>
				<p>
					<label for="mydatelocal">Birthday:</label>
					<input type="datetime-local" name="bday" id="mydatelocal">
				</p>
				<p>
					<label for="month">Favourite Month and Year till now..</label>
					<input type="month" name="mes" id="month">
				</p>
				
				
				
			</section>
			<section id="botones">
				<p>
					<input type="submit" name="move" value="Move">
				</p>
				<p>
					<input type="reset">
				</p>
                               
			</section>
	</form>

<br/><br/><br/><br/>


<%@page import="java.sql.*"  %>

<%
if(request.getParameter("move")!=null)
{
    
    try
        {
            response.setContentType("text/html");
            
          
            String a=request.getParameter("nick");
           String b=request.getParameter("mobile");
            String c=request.getParameter("gender");
               String d=request.getParameter("color");
            String e=request.getParameter("hobby");
           String f=request.getParameter("person");
             String g=request.getParameter("dream");
               String h=request.getParameter("work");
                 String i=request.getParameter("numero");
                   String j=request.getParameter("bday");
                 String k=request.getParameter("mes");
           String m=(String)session.getAttribute("em123");
        
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
           PreparedStatement pst=con.prepareStatement("insert into extra_fields values(?,?,?,?,?,?,?,?,?,?,?,?)");
           pst.setString(1,a);
           pst.setString(2,b);
            pst.setString(3,c);
             pst.setString(4,d);
              pst.setString(5,e);
               pst.setString(6,f);
               pst.setString(7,g);
                pst.setString(8,h);
                 pst.setString(9,i);
                  pst.setString(10,j);
                   pst.setString(11,k);
                 pst.setString(12,m);
 
           
           
           int u=pst.executeUpdate();
           if(u>0)
               
           {
          
     HttpSession obm=request.getSession();
     obm.setAttribute("nic",a);
     obm.setAttribute("mob",b);
      obm.setAttribute("gen",c);
       obm.setAttribute("col",d);
        obm.setAttribute("hob",e);
         obm.setAttribute("per",f);
          obm.setAttribute("dre",g);
           obm.setAttribute("wor",h);
            obm.setAttribute("num",i);
             obm.setAttribute("bd",j);
              obm.setAttribute("me",k);
               
            
     response.sendRedirect("cc.jsp");
 
               
              
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



</body></html>
























