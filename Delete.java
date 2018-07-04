import javax.servlet.http.*;
import java.io.*;
import javax.servlet.RequestDispatcher;
import java.sql.*;
import javax.servlet.ServletRequest;
public class Delete extends HttpServlet
{
    public void doPost(HttpServletRequest req, HttpServletResponse res)
    {
        try
        {
            res.setContentType("text/html");
            
            
            String a=req.getParameter("t1");
          String b=req.getParameter("t2");
          
            PrintWriter pw=res.getWriter();
            
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","");
           PreparedStatement pst=con.prepareStatement("delete from myslam where EMail_ID=? and Password=?");
           pst.setString(1,a);
        pst.setString(2,b);
                 
 
           
           
           int u=pst.executeUpdate();
           if(u>0)
               
           {
               res.sendRedirect("delete.html");
           }
           else
               pw.print("please enter valid MySlam EMail address and Password.");
           RequestDispatcher rd=req.getRequestDispatcher("del.html");
           rd.include(req, res);
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