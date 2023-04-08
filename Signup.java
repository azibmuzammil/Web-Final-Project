import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;
import java.sql.*;
import java.util.*;

public class Signup extends HttpServlet {

public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
{        
	
	response.setContentType("text/html");
  PrintWriter out = response.getWriter();

    String Username = request.getParameter("Username");
    String Password = request.getParameter("Password");
    String ConfirmPassword = request.getParameter("ConfirmPassword");
    String PhoneNumber = request.getParameter("PhoneNo");
    String Identity=request.getParameter("Identity");

    if(Username.equals(""))
    {
      response.sendRedirect("Login.jsp");
    }
    else if(Password.equals(""))
    {
      response.sendRedirect("Login.jsp");
    }
    else if(ConfirmPassword.equals(""))
    {
      response.sendRedirect("Login.jsp");
    }
    else if(!Password.equals(ConfirmPassword))
    {
      response.sendRedirect("Login.jsp");
    }
    else if(PhoneNumber.equals(""))
    {
      response.sendRedirect("Login.jsp");
    }
    else if(Identity.equals(""))
    {
      response.sendRedirect("Login.jsp");
    }


    try{
    Class.forName("com.mysql.jdbc.Driver");
    String url = "jdbc:mysql://localhost:3307/pharmadb";
    Connection con=DriverManager.getConnection(url,"root","root");
    Statement st=con.createStatement();


     String query="insert into pharmacy(Username,Password,PhoneNo,Identity) values('"+Username+"', '"+Password+"', '"+PhoneNumber+"', '"+Identity+"')";

 
     int rs = st.executeUpdate( query );

   
     if(rs > 0){
	    out.println("You are Signed up Successfully.");
	  }
     
     else{
    	out.println("Sign up not Successfull.");
         }
        }
        catch(Exception e){
        out.println(e);
    }



}


}	

