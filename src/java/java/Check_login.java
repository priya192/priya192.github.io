import javax.servlet.http.*;
import java.io.*;
import javax.servlet.RequestDispatcher;
import java.sql.*;
import javax.servlet.ServletRequest;
public class Check_login extends HttpServlet
{
    public void doPost(HttpServletRequest req, HttpServletResponse res)
    {
        try
        {
            res.setContentType("text/html");
          
            String a= req.getParameter("name1");
            String b= req.getParameter("password1");

            
            PrintWriter pw=res.getWriter();
          
            Class.forName("com.mysql.jdbc.Driver");
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
          
            PreparedStatement pst=con.prepareStatement("select * from myslam where EMail_ID=? and Password=?");
           pst.setString(1,a);
           pst.setString(2,b);
          
 ResultSet rs = pst.executeQuery();
 if(rs.next())
 {
     HttpSession ob=req.getSession();
     ob.setAttribute("na",rs.getString(1));
         ob.setAttribute("sur",rs.getString(2));
     ob.setAttribute("em123",a);
     ob.setAttribute("dob",rs.getString(6));
     
     
     res.sendRedirect("comments.jsp");
 
 }
           else
 {
     pw.print("Invalid email or password");
     RequestDispatcher rd = req.getRequestDispatcher("second.html");
     rd.include(req, res);
 }
        }
        
        
          catch(Exception ett)
                  {
                 try{
                     PrintWriter pw=res.getWriter();
                     pw.print(ett);
                     pw.print("something is wrong");
                 }
                 catch(Exception er)
                 {
                 
        }
  }

    
    
    
    
     try
        {
            res.setContentType("text/html");
          
            String m= req.getParameter("name1");
        
           
            PrintWriter pw=res.getWriter();
          
            Class.forName("com.mysql.jdbc.Driver");
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
          
            PreparedStatement pst=con.prepareStatement("select * from extra_fields where email_id=?");
           pst.setString(1,m);
          
          
 ResultSet rs = pst.executeQuery();
 if(rs.next())
 {
    HttpSession obm=req.getSession();
     obm.setAttribute("nic",rs.getString(1));
     obm.setAttribute("mob",rs.getString(2));
      obm.setAttribute("gen",rs.getString(3));
       obm.setAttribute("col",rs.getString(4));
        obm.setAttribute("hob",rs.getString(5));
         obm.setAttribute("per",rs.getString(6));
          obm.setAttribute("dre",rs.getString(7));
           obm.setAttribute("wor",rs.getString(8));
            obm.setAttribute("num",rs.getString(9));
             obm.setAttribute("bd",rs.getString(10));
              obm.setAttribute("me",rs.getString(11));
               
            
 
 }
           else
 {
 }
        }
        
        
          catch(Exception ett)
                  {
                 try{
                     PrintWriter pw=res.getWriter();
                     pw.print(ett);
                     pw.print("something is wrong");
                 }
                 catch(Exception er)
                 {
                 
        }
  }
}
    
    
}