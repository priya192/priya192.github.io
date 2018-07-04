<%@page import="java.sql.*" %>
<div style="background: #e6f5ff">
   
   <h1 style="font-family: monotype corsiva; font-size: 40px; color: #006666">Questions asked by others.......</h1>

<%

try
        {
            response.setContentType("text/html");
          
            
             
            Class.forName("com.mysql.jdbc.Driver");
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
          
            PreparedStatement pst=con.prepareStatement("select * from mother where id2=?");
           pst.setString(1,(String)session.getAttribute("em123"));
   
          
 ResultSet rs = pst.executeQuery();
 if(rs.next())
 {
   %>
   
   <div>
       <form action='comments.jsp' method="post">
   <table>
       <tr><td>
    <%out.print(rs.getString(2));%>
           </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" name="a1"/>
           </td></tr>
       <tr><td>
   <% out.print(rs.getString(3));%>
   </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="a2"/>
     </td></tr>
       <tr><td>
   <% out.print(rs.getString(4));%>
   </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="a3"/>
    </td></tr>
       <tr><td>
   <% out.print(rs.getString(5));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="a4"/>
    </td></tr>
       <tr><td>
   <% out.print( rs.getString(6));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="a5"/>
    </td></tr>
       <tr><td>
   <% out.print(rs.getString(7));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="a6"/>
    </td></tr>
       <tr><td>
   <% out.print( rs.getString(8));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="a7"/>
    </td></tr>
       <tr><td>
   <% out.print(rs.getString(9));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="a8"/>
    </td>  </tr>
       <tr><td>
   <% out.print(rs.getString(10));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="a9"/>
    </td></tr>
       <tr><td>
   <% out.print( rs.getString(11));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="a10"/>  <tr><td><br/></td></tr>
   <tr><td> <input type="text" name="ansmother"/></td></tr>
  
       
       <tr><td><br/><br/><br/></td></tr>
       <tr><td><input type='submit' value='SEND' name='s1'/></td></tr>
           
   </table>
       </form>
   </div>
   
   
    
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
  
 
 
   
    <%
   
  if(request.getParameter("s1")!=null)
{
    
    try
        {
            response.setContentType("text/html");
            
          
          
        String d=request.getParameter("a1");
        String e=request.getParameter("a2");
        String f =request.getParameter("a3");
        String g =request.getParameter("a4");
        String h =request.getParameter("a5");
        String i =request.getParameter("a6");
        String j =request.getParameter("a7");
        String k =request.getParameter("a8");
        String l =request.getParameter("a9");
        String m =request.getParameter("a10");
     
         String n=request.getParameter("ansmother");
        
        
        
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
           PreparedStatement pst=con.prepareStatement("insert into mother_answere(ans1,ans2,ans3,ans4,ans5,ans6,ans7,ans8,ans9,ans10,id) values(?,?,?,?,?,?,?,?,?,?,?)");
           
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
    
    
    
    <br/><br/><br/><br/>
    
   <%

try
        {
            response.setContentType("text/html");
          
            
             
            Class.forName("com.mysql.jdbc.Driver");
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
          
            PreparedStatement pst=con.prepareStatement("select * from father where id2=?");
           pst.setString(1,(String)session.getAttribute("em123"));
   
          
 ResultSet rs = pst.executeQuery();
 if(rs.next())
 {
   %>
   <div>
       <form action='comments.jsp' method="post"/>
   
   <table>
       <tr><td>
    <%out.print(rs.getString(2));%>
           </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" name="b1"/>
           </td></tr>
       <tr><td>
   <% out.print(rs.getString(3));%>
   </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="b2"/>
     </td></tr>
       <tr><td>
   <% out.print(rs.getString(4));%>
   </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="b3"/>
    </td></tr>
       <tr><td>
   <% out.print(rs.getString(5));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="b4"/>
    </td></tr>
       <tr><td>
   <% out.print( rs.getString(6));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="b5"/>
    </td></tr>
       <tr><td>
   <% out.print(rs.getString(7));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="b6"/>
    </td></tr>
       <tr><td>
   <% out.print( rs.getString(8));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="b7"/>
    </td></tr>
       <tr><td>
   <% out.print(rs.getString(9));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="b8"/>
    </td>  </tr>
       <tr><td>
   <% out.print(rs.getString(10));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="b9"/>
    </td></tr>
       <tr><td>
   <tr><td>
   <% out.print( rs.getString(11));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="b10"/>  <tr><td><br/></td></tr>
   <tr><td> <input type="text" name="ansfather"/></td></tr>
  
       
       <tr><td><br/><br/><br/></td></tr>
       <tr><td><input type='submit' value='SEND' name='s2'/></td></tr>
           
   </table>
       </form>
   </div>
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
    
   
    <%
   
  if(request.getParameter("s2")!=null)
{
    
    try
        {
            response.setContentType("text/html");
            
          
          
        String d=request.getParameter("b1");
        String e=request.getParameter("b2");
        String f =request.getParameter("b3");
        String g =request.getParameter("b4");
        String h =request.getParameter("b5");
        String i =request.getParameter("b6");
        String j =request.getParameter("b7");
        String k =request.getParameter("b8");
        String l =request.getParameter("b9");
        String m =request.getParameter("b10");
     
         String n=request.getParameter("ansfather");
        
        
        
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
           PreparedStatement pst=con.prepareStatement("insert into father_answere(ans1,ans2,ans3,ans4,ans5,ans6,ans7,ans8,ans9,ans10,id) values(?,?,?,?,?,?,?,?,?,?,?)");
           
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
    
    
    
    
    
    
    
    
    
      <br/><br/><br/><br/>
    
   <%

try
        {
            response.setContentType("text/html");
          
            
             
            Class.forName("com.mysql.jdbc.Driver");
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
          
            PreparedStatement pst=con.prepareStatement("select * from friends where id2=?");
           pst.setString(1,(String)session.getAttribute("em123"));
   
          
 ResultSet rs = pst.executeQuery();
 if(rs.next())
 {
   %>
    <div>
       <form action='comments.jsp' method="post"/>
   
   <table>
       <tr><td>
    <%out.print(rs.getString(2));%>
           </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" name="c1"/>
           </td></tr>
       <tr><td>
   <% out.print(rs.getString(3));%>
   </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="c2"/>
     </td></tr>
       <tr><td>
   <% out.print(rs.getString(4));%>
   </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="c3"/>
    </td></tr>
       <tr><td>
   <% out.print(rs.getString(5));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="c4"/>
    </td></tr>
       <tr><td>
   <% out.print( rs.getString(6));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="c5"/>
    </td></tr>
       <tr><td>
   <% out.print(rs.getString(7));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="c6"/>
    </td></tr>
       <tr><td>
   <% out.print( rs.getString(8));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="c7"/>
    </td></tr>
       <tr><td>
   <% out.print(rs.getString(9));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="c8"/>
    </td>  </tr>
       <tr><td>
   <% out.print(rs.getString(10));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="c9"/>
    </td></tr>
       <tr><td>
    <% out.print( rs.getString(11));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="c10"/>  <tr><td><br/></td></tr>
   <tr><td> <input type="text" name="ansfriend"/></td></tr>
  
       
       <tr><td><br/><br/><br/></td></tr>
       <tr><td><input type='submit' value='SEND' name='s3'/></td></tr>
           
   </table>
       </form>
   </div>
   <%
 }
 else{
     out.print("nothing to show");
     %>
     
     <p style="margin-left: 600; font-size :50px"> <a href="cc.jsp">MOVE</a></p>
     <%
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
    
    
    
    
    <%
   
  if(request.getParameter("s3")!=null)
{
    
    try
        {
            response.setContentType("text/html");
            
          
          
        String d=request.getParameter("c1");
        String e=request.getParameter("c2");
        String f =request.getParameter("c3");
        String g =request.getParameter("c4");
        String h =request.getParameter("c5");
        String i =request.getParameter("c6");
        String j =request.getParameter("c7");
        String k =request.getParameter("c8");
        String l =request.getParameter("c9");
        String m =request.getParameter("c10");
     
         String n=request.getParameter("ansfriend");
        
        
        
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
           PreparedStatement pst=con.prepareStatement("insert into friend_answere(ans1,ans2,ans3,ans4,ans5,ans6,ans7,ans8,ans9,ans10,id) values(?,?,?,?,?,?,?,?,?,?,?)");
           
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
    
    
      <br/><br/><br/><br/>
    
   <%

try
        {
            response.setContentType("text/html");
          
            
             
            Class.forName("com.mysql.jdbc.Driver");
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
          
            PreparedStatement pst=con.prepareStatement("select * from Best_friends where id2=?");
           pst.setString(1,(String)session.getAttribute("em123"));
   
          
 ResultSet rs = pst.executeQuery();
 if(rs.next())
 {
   %>
    <div>
       <form action='comments.jsp' method="post"/>
   
   <table>
       <tr><td>
    <%out.print(rs.getString(2));%>
           </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" name="d1"/>
           </td></tr>
       <tr><td>
   <% out.print(rs.getString(3));%>
   </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="d2"/>
     </td></tr>
       <tr><td>
   <% out.print(rs.getString(4));%>
   </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="d3"/>
    </td></tr>
       <tr><td>
   <% out.print(rs.getString(5));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="d4"/>
    </td></tr>
       <tr><td>
   <% out.print( rs.getString(6));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="d5"/>
    </td></tr>
       <tr><td>
   <% out.print(rs.getString(7));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="d6"/>
    </td></tr>
       <tr><td>
   <% out.print( rs.getString(8));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="d7"/>
    </td></tr>
       <tr><td>
   <% out.print(rs.getString(9));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="d8"/>
    </td>  </tr>
       <tr><td>
   <% out.print(rs.getString(10));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="d9"/>
    </td></tr>
       <tr><td>
    <% out.print( rs.getString(11));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="d10"/>  <tr><td><br/></td></tr>
   <tr><td> <input type="text" name="ansbestfriend"/></td></tr>
  
       
       <tr><td><br/><br/><br/></td></tr>
       <tr><td><input type='submit' value='SEND' name='s4'/></td></tr>
           
   </table>
       </form>
   </div>
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
    
    
     <%
   
  if(request.getParameter("s4")!=null)
{
    
    try
        {
            response.setContentType("text/html");
            
          
          
        String d=request.getParameter("d1");
        String e=request.getParameter("d2");
        String f =request.getParameter("d3");
        String g =request.getParameter("d4");
        String h =request.getParameter("d5");
        String i =request.getParameter("d6");
        String j =request.getParameter("d7");
        String k =request.getParameter("d8");
        String l =request.getParameter("d9");
        String m =request.getParameter("d10");
     
         String n=request.getParameter("ansbestfriend");
        
        
        
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
           PreparedStatement pst=con.prepareStatement("insert into best_friend_answere(ans1,ans2,ans3,ans4,ans5,ans6,ans7,ans8,ans9,ans10,id) values(?,?,?,?,?,?,?,?,?,?,?)");
           
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
    
    
    
      <br/><br/><br/><br/>
    
   <%

try
        {
            response.setContentType("text/html");
          
            
             
            Class.forName("com.mysql.jdbc.Driver");
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
          
            PreparedStatement pst=con.prepareStatement("select * from brother where id2=?");
           pst.setString(1,(String)session.getAttribute("em123"));
   
          
 ResultSet rs = pst.executeQuery();
 if(rs.next())
 {
   %>
   
    <div>
       <form action='comments.jsp' method="post"/>
   
   <table>
       <tr><td>
    <%out.print(rs.getString(2));%>
           </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" name="e1"/>
           </td></tr>
       <tr><td>
   <% out.print(rs.getString(3));%>
   </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="e2"/>
     </td></tr>
       <tr><td>
   <% out.print(rs.getString(4));%>
   </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="e3"/>
    </td></tr>
       <tr><td>
   <% out.print(rs.getString(5));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="e4"/>
    </td></tr>
       <tr><td>
   <% out.print( rs.getString(6));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="e5"/>
    </td></tr>
       <tr><td>
   <% out.print(rs.getString(7));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="e6"/>
    </td></tr>
       <tr><td>
   <% out.print( rs.getString(8));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="e7"/>
    </td></tr>
       <tr><td>
   <% out.print(rs.getString(9));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="e8"/>
    </td>  </tr>
       <tr><td>
   <% out.print(rs.getString(10));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="e9"/>
    </td></tr>
       <tr><td>
   <% out.print( rs.getString(11));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="e10"/>  <tr><td><br/></td></tr>
   <tr><td> <input type="text" name="ansbrother"/></td></tr>
  
       
       <tr><td><br/><br/><br/></td></tr>
       <tr><td><input type='submit' value='SEND' name='s5'/></td></tr>
           
   </table>
       </form>
   </div>
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
    
    
     
     <%
   
  if(request.getParameter("s5")!=null)
{
    
    try
        {
            response.setContentType("text/html");
            
          
          
        String d=request.getParameter("e1");
        String e=request.getParameter("e2");
        String f =request.getParameter("e3");
        String g =request.getParameter("e4");
        String h =request.getParameter("e5");
        String i =request.getParameter("e6");
        String j =request.getParameter("e7");
        String k =request.getParameter("e8");
        String l =request.getParameter("e9");
        String m =request.getParameter("e10");
     
         String n=request.getParameter("ansbrother");
        
        
        
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
           PreparedStatement pst=con.prepareStatement("insert into brother_answere(ans1,ans2,ans3,ans4,ans5,ans6,ans7,ans8,ans9,ans10,id) values(?,?,?,?,?,?,?,?,?,?,?)");
           
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
    
    
    
      <br/><br/><br/><br/>
    
   <%

try
        {
            response.setContentType("text/html");
          
            
             
            Class.forName("com.mysql.jdbc.Driver");
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
          
            PreparedStatement pst=con.prepareStatement("select * from sister where id2=?");
           pst.setString(1,(String)session.getAttribute("em123"));
   
          
 ResultSet rs = pst.executeQuery();
 if(rs.next())
 {
   %>
    <div>
       <form action='comments.jsp' method="post"/>
   
   <table>
       <tr><td>
    <%out.print(rs.getString(2));%>
           </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" name="f1"/>
           </td></tr>
       <tr><td>
   <% out.print(rs.getString(3));%>
   </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="f2"/>
     </td></tr>
       <tr><td>
   <% out.print(rs.getString(4));%>
   </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="f3"/>
    </td></tr>
       <tr><td>
   <% out.print(rs.getString(5));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="f4"/>
    </td></tr>
       <tr><td>
   <% out.print( rs.getString(6));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="f5"/>
    </td></tr>
       <tr><td>
   <% out.print(rs.getString(7));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="f6"/>
    </td></tr>
       <tr><td>
   <% out.print( rs.getString(8));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="f7"/>
    </td></tr>
       <tr><td>
   <% out.print(rs.getString(9));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="f8"/>
    </td>  </tr>
       <tr><td>
   <% out.print(rs.getString(10));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="f9"/>
    </td></tr>
       <tr><td>
   <% out.print( rs.getString(11));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="f10"/>  <tr><td><br/></td></tr>
   <tr><td> <input type="text" name="anssister"/></td></tr>
  
       
       <tr><td><br/><br/><br/></td></tr>
       <tr><td><input type='submit' value='SEND' name='s6'/></td></tr>
           
   </table>
       </form>
   </div>
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
    
    
      <%
   
  if(request.getParameter("s6")!=null)
{
    
    try
        {
            response.setContentType("text/html");
            
          
          
        String d=request.getParameter("f1");
        String e=request.getParameter("f2");
        String f =request.getParameter("f3");
        String g =request.getParameter("f4");
        String h =request.getParameter("f5");
        String i =request.getParameter("f6");
        String j =request.getParameter("f7");
        String k =request.getParameter("f8");
        String l =request.getParameter("f9");
        String m =request.getParameter("f10");
     
         String n=request.getParameter("anssister");
        
        
        
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
           PreparedStatement pst=con.prepareStatement("insert into sister_answere(ans1,ans2,ans3,ans4,ans5,ans6,ans7,ans8,ans9,ans10,id) values(?,?,?,?,?,?,?,?,?,?,?)");
           
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
    
      <br/><br/><br/><br/>
    
   <%

try
        {
            response.setContentType("text/html");
          
            
             
            Class.forName("com.mysql.jdbc.Driver");
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
          
            PreparedStatement pst=con.prepareStatement("select * from girlfriend where id2=?");
           pst.setString(1,(String)session.getAttribute("em123"));
   
          
 ResultSet rs = pst.executeQuery();
 if(rs.next())
 {
   %>
    <div>
       <form action='comments.jsp' method="post"/>
   
   <table>
       <tr><td>
    <%out.print(rs.getString(2));%>
           </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" name="g1"/>
           </td></tr>
       <tr><td>
   <% out.print(rs.getString(3));%>
   </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="g2"/>
     </td></tr>
       <tr><td>
   <% out.print(rs.getString(4));%>
   </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="g3"/>
    </td></tr>
       <tr><td>
   <% out.print(rs.getString(5));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="g4"/>
    </td></tr>
       <tr><td>
   <% out.print( rs.getString(6));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="g5"/>
    </td></tr>
       <tr><td>
   <% out.print(rs.getString(7));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="g6"/>
    </td></tr>
       <tr><td>
   <% out.print( rs.getString(8));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="g7"/>
    </td></tr>
       <tr><td>
   <% out.print(rs.getString(9));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="g8"/>
    </td>  </tr>
       <tr><td>
   <% out.print(rs.getString(10));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="g9"/>
    </td></tr>
       <tr><td>
   <% out.print( rs.getString(11));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="g10"/>  <tr><td><br/></td></tr>
   <tr><td> <input type="text" name="ansbgirlfriend"/></td></tr>
  
       
       <tr><td><br/><br/><br/></td></tr>
       <tr><td><input type='submit' value='SEND' name='s7'/></td></tr>
           
   </table>
       </form>
   </div>
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
    
    
      <%
   
  if(request.getParameter("s7")!=null)
{
    
    try
        {
            response.setContentType("text/html");
            
          
          
        String d=request.getParameter("g1");
        String e=request.getParameter("g2");
        String f =request.getParameter("g3");
        String g =request.getParameter("g4");
        String h =request.getParameter("g5");
        String i =request.getParameter("g6");
        String j =request.getParameter("g7");
        String k =request.getParameter("g8");
        String l =request.getParameter("g9");
        String m =request.getParameter("g10");
     
         String n=request.getParameter("ansgirlfriend");
        
        
        
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
           PreparedStatement pst=con.prepareStatement("insert into girlfriend_answere(ans1,ans2,ans3,ans4,ans5,ans6,ans7,ans8,ans9,ans10,id) values(?,?,?,?,?,?,?,?,?,?,?)");
           
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
    
   <br/><br/><br/><br/>
    
   <%

try
        {
            response.setContentType("text/html");
          
            
             
            Class.forName("com.mysql.jdbc.Driver");
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
          
            PreparedStatement pst=con.prepareStatement("select * from boyfriend where id2=?");
           pst.setString(1,(String)session.getAttribute("em123"));
   
          
 ResultSet rs = pst.executeQuery();
 if(rs.next())
 {
   %>
    <div>
       <form action='comments.jsp' method="post"/>
   
   <table>
       <tr><td>
    <%out.print(rs.getString(2));%>
           </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" name="h1"/>
           </td></tr>
       <tr><td>
   <% out.print(rs.getString(3));%>
   </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="h2"/>
     </td></tr>
       <tr><td>
   <% out.print(rs.getString(4));%>
   </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="h3"/>
    </td></tr>
       <tr><td>
   <% out.print(rs.getString(5));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="h4"/>
    </td></tr>
       <tr><td>
   <% out.print( rs.getString(6));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="h5"/>
    </td></tr>
       <tr><td>
   <% out.print(rs.getString(7));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="h6"/>
    </td></tr>
       <tr><td>
   <% out.print( rs.getString(8));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="h7"/>
    </td></tr>
       <tr><td>
   <% out.print(rs.getString(9));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="h8"/>
    </td>  </tr>
       <tr><td>
   <% out.print(rs.getString(10));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="h9"/>
    </td></tr>
       <tr><td>
    <% out.print( rs.getString(11));%>
    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="text" name="h10"/>  <tr><td><br/></td></tr>
   <tr><td> <input type="text" name="ansboyfriend"/></td></tr>
  
       
       <tr><td><br/><br/><br/></td></tr>
       <tr><td><input type='submit' value='SEND' name='s8'/></td></tr>
           
   </table>
       </form>
   </div>
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
  <%
   
  if(request.getParameter("s8")!=null)
{
    
    try
        {
            response.setContentType("text/html");
            
          
          
        String d=request.getParameter("h");
        String e=request.getParameter("h2");
        String f =request.getParameter("h3");
        String g =request.getParameter("h4");
        String h =request.getParameter("h5");
        String i =request.getParameter("h6");
        String j =request.getParameter("h7");
        String k =request.getParameter("h8");
        String l =request.getParameter("h9");
        String m =request.getParameter("h10");
     
         String n=request.getParameter("ansboyfriend");
        
        
        
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
           PreparedStatement pst=con.prepareStatement("insert into boyfriend_answere(ans1,ans2,ans3,ans4,ans5,ans6,ans7,ans8,ans9,ans10,id) values(?,?,?,?,?,?,?,?,?,?,?)");
           
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
   <br/><br/><br/><br/><br/><br/>
</div>
   
   <hr/><hr/><hr/>
   <div style="background: #b3b3ff">
   
   <h1 style="font-family: monotype corsiva; font-size: 40px; color: #000066">Answere of MySlam post.......</h1>
<br/><br/><br/><br/><br/><br/>
   <%

try
        {
            response.setContentType("text/html");
          
            
             
            Class.forName("com.mysql.jdbc.Driver");
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
          
            PreparedStatement pst=con.prepareStatement("select * from mother_answere where id=?");
           pst.setString(1,(String)session.getAttribute("em123"));
   
          
 ResultSet rs = pst.executeQuery();
 if(rs.next())
 {
   %>
   
   <div>
      
       <table>
           <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
    <%out.print(rs.getString(2));%>
           </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(3));%>
           </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(4));%>
  
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(5));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print( rs.getString(6));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(7));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print( rs.getString(8));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(9));%>
   
    </td>  </tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(10));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print( rs.getString(11));%>
    
   </td></tr>
  
       
       <tr><td><br/><br/><br/></td></tr>
       
   </table>
 
   </div>
   
   
    
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
  
  <br/><br/><br/><br/>
  
  <%

try
        {
            response.setContentType("text/html");
          
            
             
            Class.forName("com.mysql.jdbc.Driver");
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
          
            PreparedStatement pst=con.prepareStatement("select * from father_answere where id=?");
           pst.setString(1,(String)session.getAttribute("em123"));
   
          
 ResultSet rs = pst.executeQuery();
 if(rs.next())
 {
   %>
   
   <div>
      
       <table>
           <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
    <%out.print(rs.getString(2));%>
           </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(3));%>
           </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(4));%>
  
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(5));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print( rs.getString(6));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(7));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print( rs.getString(8));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(9));%>
   
    </td>  </tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(10));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print( rs.getString(11));%>
    
   </td></tr>
  
       
       <tr><td><br/><br/><br/></td></tr>
       
   </table>
 
   </div>
   
   
    
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
  
  <br/><br/><br/><br/>
  
  <%

try
        {
            response.setContentType("text/html");
          
            
             
            Class.forName("com.mysql.jdbc.Driver");
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
          
            PreparedStatement pst=con.prepareStatement("select * from friend_answere where id=?");
           pst.setString(1,(String)session.getAttribute("em123"));
   
          
 ResultSet rs = pst.executeQuery();
 if(rs.next())
 {
   %>
   
   <div>
      
       <table>
           <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
    <%out.print(rs.getString(2));%>
           </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(3));%>
           </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(4));%>
  
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(5));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print( rs.getString(6));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(7));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print( rs.getString(8));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(9));%>
   
    </td>  </tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(10));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print( rs.getString(11));%>
    
   </td></tr>
  
       
       <tr><td><br/><br/><br/></td></tr>
       
   </table>
 
   </div>
   
   
    
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
 
 <br/><br/><br/><br/>
 
 <%

try
        {
            response.setContentType("text/html");
          
            
             
            Class.forName("com.mysql.jdbc.Driver");
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
          
            PreparedStatement pst=con.prepareStatement("select * from best_friend_answere where id=?");
           pst.setString(1,(String)session.getAttribute("em123"));
   
          
 ResultSet rs = pst.executeQuery();
 if(rs.next())
 {
   %>
   
   <div>
      
       <table>
           <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
    <%out.print(rs.getString(2));%>
           </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(3));%>
           </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(4));%>
  
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(5));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print( rs.getString(6));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(7));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print( rs.getString(8));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(9));%>
   
    </td>  </tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(10));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print( rs.getString(11));%>
    
   </td></tr>
  
       
       <tr><td><br/><br/><br/></td></tr>
       
   </table>
 
   </div>
   
   
    
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
  
 
 <br/><br/><br/><br/>
  
 
 <%

try
        {
            response.setContentType("text/html");
          
            
             
            Class.forName("com.mysql.jdbc.Driver");
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
          
            PreparedStatement pst=con.prepareStatement("select * from brother_answere where id=?");
           pst.setString(1,(String)session.getAttribute("em123"));
   
          
 ResultSet rs = pst.executeQuery();
 if(rs.next())
 {
   %>
   
   <div>
      
       <table>
           <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
    <%out.print(rs.getString(2));%>
           </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(3));%>
           </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(4));%>
  
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(5));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print( rs.getString(6));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(7));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print( rs.getString(8));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(9));%>
   
    </td>  </tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(10));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print( rs.getString(11));%>
    
   </td></tr>
  
       
       <tr><td><br/><br/><br/></td></tr>
       
   </table>
 
   </div>
   
   
    
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
  
  <br/><br/><br/><br/>
  
  <%

try
        {
            response.setContentType("text/html");
          
            
             
            Class.forName("com.mysql.jdbc.Driver");
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
          
            PreparedStatement pst=con.prepareStatement("select * from sister_answere where id=?");
           pst.setString(1,(String)session.getAttribute("em123"));
   
          
 ResultSet rs = pst.executeQuery();
 if(rs.next())
 {
   %>
   
   <div>
      
       <table>
           <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
    <%out.print(rs.getString(2));%>
           </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(3));%>
           </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(4));%>
  
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(5));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print( rs.getString(6));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(7));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print( rs.getString(8));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(9));%>
   
    </td>  </tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(10));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print( rs.getString(11));%>
    
   </td></tr>
  
       
       <tr><td><br/><br/><br/></td></tr>
       
   </table>
 
   </div>
   
   
    
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
 
 <br/><br/><br/><br/>
 
 <%

try
        {
            response.setContentType("text/html");
          
            
             
            Class.forName("com.mysql.jdbc.Driver");
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
          
            PreparedStatement pst=con.prepareStatement("select * from boyfriend_answere where id=?");
           pst.setString(1,(String)session.getAttribute("em123"));
   
          
 ResultSet rs = pst.executeQuery();
 if(rs.next())
 {
   %>
   
   <div>
      
       <table>
           <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
    <%out.print(rs.getString(2));%>
           </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(3));%>
           </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(4));%>
  
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(5));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print( rs.getString(6));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(7));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print( rs.getString(8));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(9));%>
   
    </td>  </tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(10));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print( rs.getString(11));%>
    
   </td></tr>
  
       
       <tr><td><br/><br/><br/></td></tr>
       
   </table>
 
   </div>
   
   
    
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
  
  <br/><br/><br/><br/>
  <%

try
        {
            response.setContentType("text/html");
          
            
             
            Class.forName("com.mysql.jdbc.Driver");
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
          
            PreparedStatement pst=con.prepareStatement("select * from girlfriend_answere where id=?");
           pst.setString(1,(String)session.getAttribute("em123"));
   
          
 ResultSet rs = pst.executeQuery();
 if(rs.next())
 {
   %>
   
   <div>
      
       <table>
           <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
    <%out.print(rs.getString(2));%>
           </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(3));%>
           </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(4));%>
  
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(5));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print( rs.getString(6));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(7));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print( rs.getString(8));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(9));%>
   
    </td>  </tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print(rs.getString(10));%>
    
    </td></tr>
       <tr> <tr><td>whats your nameee?</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
   <% out.print( rs.getString(11));%>
    
   </td></tr>
  
       
       <tr><td><br/><br/><br/></td></tr>
       
   </table>
 
   </div>
   
   
    
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
   </div>

  
  
  
  
  