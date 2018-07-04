import java.io.IOException;  
import java.io.PrintWriter;  
  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  
public class Logout_servlet extends HttpServlet {  
        protected void doGet(HttpServletRequest request, HttpServletResponse response)  
                                throws ServletException, IOException {  
           try{
            
               response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);//prevents caching at the proxy server 

               
               
            response.setContentType("text/html");  
            PrintWriter out=response.getWriter();  
              
            request.getRequestDispatcher("second.html").include(request, response);  
              
            HttpSession session=request.getSession();  
            
            session.invalidate();  
              
            
            
  if(session.getAttribute("some_token")==null)
      response.sendRedirect("login/login.html");

            
            out.print("You are successfully logged out!");  
              
            out.close();  
    }  
           catch(Exception ett)
           {
           }
}
}