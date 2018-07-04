import javax.servlet.http.*;
import java.io.*;
import javax.servlet.RequestDispatcher;
import java.sql.*;
import javax.servlet.ServletRequest;


public class Update_1 extends HttpServlet
{
    public void doPost(HttpServletRequest req, HttpServletResponse res)
    {
        try
        {
            res.setContentType("text/html");
            
            
            String a=req.getParameter("aa");
          String b=req.getParameter("bb");
          String c=req.getParameter("cc");
          
          
            PrintWriter pw=res.getWriter();
            
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
           PreparedStatement pst=con.prepareStatement("update myslam set Password=? where EMail_ID=? and Password=?");
          
           pst.setString(1,c);
        pst.setString(2,a);
        pst.setString(3,b);          
 
           
           
           int u=pst.executeUpdate();
           if(u>0)
               
           {
               pw.print("data updated");
           }
           else
              
           {
            pw.print("invalid user");   
           }
        
        }
          catch(Exception ett)
                  {
                 try{
                     PrintWriter pw=res.getWriter();
                     pw.print(ett);
                     pw.print("something is wrong");
                 }
                 catch(Exception ob)
                 {
                 
        }
  }
}
}