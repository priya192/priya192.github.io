import javax.servlet.http.*;
import java.io.*;
import javax.servlet.RequestDispatcher;
import java.sql.*;
import javax.servlet.ServletRequest;
public class Register extends HttpServlet
{
    public void doPost(HttpServletRequest req, HttpServletResponse res)
    {
        try
        {
            res.setContentType("text/html");
            
            
            String a=req.getParameter("names");
           String b=req.getParameter("s_1");
            String c=req.getParameter("e_1");
               String e=req.getParameter("p_1");
            String d=req.getParameter("c1");
         
           String f=req.getParameter("birthday_day")+req.getParameter("birthday_month")+req.getParameter("birthday_year");
        
            PrintWriter pw=res.getWriter();
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
           PreparedStatement pst=con.prepareStatement("insert into myslam values(?,?,?,?,?,?)");
           pst.setString(1,a);
           pst.setString(2,b);
            pst.setString(3,c);
             pst.setString(4,d);
              pst.setString(5,e);
               pst.setString(6,f);
              
               
           
           int u=pst.executeUpdate();
           if(u>0)
               
           {
          
     HttpSession ob=req.getSession();
     ob.setAttribute("na",a);
     ob.setAttribute("em123",c);
     res.sendRedirect("uploadimage.html");
 
               
       
           }
        }
          catch(Exception ett)
                  {
                 try{
                     PrintWriter pw=res.getWriter();
                     pw.print(ett);
                 }
                 catch(Exception ob)
                 {
                 
        }
  }
}
}