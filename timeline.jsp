<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
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
margin-top:90px;

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


div.BVB{
    
    margin-left: 450px;
    margin-top: -450px;
    height: 350px;
    width: 500px;
    background: transparent;
    box-shadow: 3px 3px 20px silver;
    padding-left: 60px;
    padding-top: 70px;
    
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

        
        
        
        
        
        
<form action="timeline.jsp" method="post">
    
<div style="margin-left:350px; margin-top: -400px;">
                <ul>
                    
                    <li><a class="ss1"></a>&nbsp;&nbsp; Nick Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" style="border-top:none;width: 250px; height: 30px; border-color: #00cccc;" placeholder="enter your nick name" required name="aa"/></li>
                    <li><br/></li>
                    <li><a class="ss2"></a>&nbsp;&nbsp;Contact No. :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" style="border-top:none;width: 250px; height: 30px; border-color: #00cccc;" placeholder="enter your mobile no" required name="bb"/></li> 
                    <li><br/></li>
                    <li><a class="ss3"></a>&nbsp;&nbsp; Gender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" style="border-top:none;width: 250px; height: 30px; border-color: #00cccc;" placeholder="enter your gender" required name="cc"/></li>
                    <li><br/></li>
                    <li><a class="ss4"></a>&nbsp;&nbsp;Favourite color:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" style="border-top:none;width: 250px; height: 30px; border-color: #00cccc;" placeholder="enter your lucky color" required name="dd"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input  style="height:30px; width: 150px;" type="color" name="color" id="color"/></li>
                    <li><br/></li>
                    <li><a class="ss5"></a>&nbsp;&nbsp; Hobbies:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" style="border-top:none;width: 250px; height: 30px; border-color: #00cccc;" placeholder="enter what you like" required name="ee"/></li>
                    <li><br/></li>
                    <li><a class="ss6"></a>&nbsp;&nbsp;Person I admire the most:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" style="border-top:none;width: 250px; height: 30px; border-color: #00cccc;" placeholder="mention person" required name="ff"/></li>
                    <li><br/></li>
                    <li><a class="ss7"></a>&nbsp;&nbsp; Dream of becoming:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" style="border-top:none;width: 250px; height: 30px; border-color: #00cccc;" placeholder="enter what you want to...." required name="gg"/></li>
                    <li><br/></li>
                    <li><a class="ss8"></a>&nbsp;&nbsp; Work as:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" style="border-top:none;width: 250px; height: 30px; border-color: #00cccc;" placeholder="enter your work" required name="hh"/></li>
                    <li><br/></li>
                    <li><a class="ss9"></a>&nbsp;&nbsp; Favourite Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="number" style="border-top:none;width: 250px; height: 30px; border-color: #00cccc;" required name="ii"/></li>
                    <li><br/></li>
                    <li ><a class="ss10"></a>&nbsp;&nbsp; Birthday:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="datetime-local" style="border-top:none;width: 250px; height: 30px; border-color: #00cccc;"  required name="ii"/></li>
                    <li><br/></li>
                    <li><a class="ss11"></a>&nbsp;&nbsp;Favourite Month and Year till now..&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="month" style="border-top:none;width: 250px; height: 30px; border-color: #00cccc;" required name="jj"/></li>
                </ul>
                <br/><br/><br/><br/>
                  <input type="submit" name=qwq style="margin-left: 320px; background: #000066; width:120px; font-size: 20px; color:silver;" value="update"/>
        
                <br/><br/><br/><br/>
                <br/><br/><br/><br/>

            </div>     
</form>

<%
    if(request.getParameter("qwq")!=null)
    {
        try
        {
            response.setContentType("text/html");
            
            
            String a=request.getParameter("aa");
          String b=request.getParameter("bb");
          String c=request.getParameter("cc");
           String d=request.getParameter("dd");
           String e=request.getParameter("ee");
           String f=request.getParameter("ff");
           String g=request.getParameter("gg");
           String h=request.getParameter("hh");
           String i=request.getParameter("ii");
           String j=request.getParameter("jj");
           String k=request.getParameter("kk");
          
          
           
            
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
           PreparedStatement pst=con.prepareStatement("update extra_fields set nick_name=?, mobile=?, gender=?, color=?, hobbies=?, person=?, dream=?, aim=?, number_fav=?, birthday=?, month_year_fav=? where email_id=?");
          
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
  pst.setString(12,(String)session.getAttribute("em123"));
   
           
           
           int u=pst.executeUpdate();
           if(u>0)
               
           {
              out.print("data updated");
           }
           else
              
           {
            out.print("invalid user");   
           }
        
        }
          catch(Exception ett)
                  {
                 try{
                     out.print(ett);
                     out.print("something is wrong");
                 }
                 catch(Exception ob)
                 {
                 
        }
  }
    }
    
    
else
{
    
}


%>

    </body>
</html>