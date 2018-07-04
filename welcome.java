
import java.io.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;

public class welcome extends HttpServlet
{
public void doGet(HttpServletRequest req,HttpServletResponse res)
{
try
{   
 

PrintWriter pw=res.getWriter();

pw.print("Welcome Priya...");
}
catch(Exception ett)
        {
            
        }
}
}
