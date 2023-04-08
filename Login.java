import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;
import java.sql.*;
import java.util.*;

public class Login extends HttpServlet {

public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
	{        
	
	  response.setContentType("text/html");
    PrintWriter out = response.getWriter();

    String Username = request.getParameter("Username");
    String Password = request.getParameter("Password");

    if(Username.equals(""))
    {
      response.sendRedirect("Login.jsp");
    }
    else if(Password.equals(""))
    {
      response.sendRedirect("Login.jsp");
    }
 
    


    try{
      Class.forName("com.mysql.jdbc.Driver");

     String url = "jdbc:mysql://localhost:3307/pharmadb";

     Connection con=DriverManager.getConnection(url,"root","root");

     Statement st=con.createStatement();
    
     String query="Select * from pharmacy where Username='"+Username+"' and Password='"+Password+"' ";
   
     ResultSet rs = st.executeQuery( query );
   
     if(rs.next())
     {

     String Identity=rs.getString("Identity");

    
     if(Identity.equals("1"))
     {
      HttpSession sess=request.getSession();
      sess.setAttribute("Identity",Identity);
      response.sendRedirect("Admin.jsp");
     }
     else if(Identity.equals("2"))
     {
      HttpSession sess=request.getSession();
      sess.setAttribute("Identity",Identity);
      response.sendRedirect("User.jsp");
     }
     else{
      response.sendRedirect("Login.jsp");
     }
    
     st.close();
     con.close();
    }
    else{
      out.println("Enter your credentials");
     }
    }catch(Exception e){

      out.println(e);
    }
  
  }
}
  


