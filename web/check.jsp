<!doctype html>
<html>
    <head>
        <style>
            #a{
                color:red;
            }
            #b{
                color:green;
            }
            </style>
        
    </head>
<%@page import="java.sql.*" %>
<%
 
    String a =request.getParameter("n");
        response.setContentType("text/html");       
        Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
          
            PreparedStatement pst=con.prepareStatement("select * from myslam where EMail_ID=?");
           pst.setString(1,a);
      
          
 ResultSet rs = pst.executeQuery();
 if(rs.next())
 {
     %>
     <span id="a">
         <% out.print("Hey, Please enter valid email address");%></span>
     <%
 }
 else
 { %>
     <span id="b">
         <%out.print("Perfect");%></span>
         <%
     
 } %>
  
    </html>