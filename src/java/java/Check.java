/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;

public class Check extends HttpServlet
{

public void doGet(HttpServletRequest req,HttpServletResponse res)
{
try
{   
 res.setContentType("text/html");
String a= req.getParameter("n1");
String b= req.getParameter("p1");

PrintWriter pw=res.getWriter();

if(a.equals("ab@gmail.com") && b.equals("admin"))
{
    
    RequestDispatcher rd=req.getRequestDispatcher("wel");
    rd.forward(req, res);
}
else
{
    pw.print("Hey, Email or Password is incorrect");
    RequestDispatcher rd=req.getRequestDispatcher("second.html");
    rd.include(req, res);
}
}
catch(Exception ett)
        {
            
        }
}
}
