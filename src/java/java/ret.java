import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class ret extends  HttpServlet{
  public void doGet(HttpServletRequest request, HttpServletResponse 
  response) throws ServletException, IOException{
  //PrintWriter pw = response.getWriter();
      
  String connectionURL = "jdbc:mysql://localhost:3306/ms";
  java.sql.Connection con=null;
  try{  
  Class.forName("com.mysql.jdbc.Driver").newInstance();
  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ms","root","root");  
  Statement st1=con.createStatement();
  ResultSet rs1 = st1.executeQuery("select image from"+
   " pictures where id='5'");
  String imgLen="";
  if(rs1.next()){
  imgLen = rs1.getString(1);
  System.out.println(imgLen.length());
  }  
  rs1 = st1.executeQuery
  ("select image from pictures where id='5'");
  if(rs1.next()){
  int len = imgLen.length();
  byte [] rb = new byte[len];
  InputStream readImg = rs1.getBinaryStream(1);
  int index=readImg.read(rb, 0, len);  
  System.out.println("index"+index);
  st1.close();
  response.reset();
  response.setContentType("image/jpg");
  response.getOutputStream().write(rb,0,len);
  response.getOutputStream().flush();  
  }
  }
  catch (Exception e){
  e.printStackTrace();
  }
  }
}