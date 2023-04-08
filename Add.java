import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;


public class Add extends HttpServlet {

  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
{
    PrintWriter out = response.getWriter();
    HttpSession sess = request.getSession(false);
   	String Identity= (String)sess.getAttribute("Identity");


	  if(Identity.equals("1"))
    {

	   String Medicine_Name =request.getParameter("Medicine_Name");
	   String Price =request.getParameter("Price");

     try{
     Class.forName("com.mysql.jdbc.Driver");
     String url = "jdbc:mysql://localhost:3307/pharmadb";
     Connection con =DriverManager.getConnection(url,"root","root");
     Statement st =con.createStatement();

     String query="Insert into medicine(Medicine_Name,Price) values('" +Medicine_Name+"','"+Price+"')";
   
     int rs = st.executeUpdate( query );

   
     if(rs>0){
	
    	 out.println("<h1>Medicine added</h1>");

	    }
     
     else{
    	 out.println("<h1>Medicine not Added</h1>");
          
      }

      st.close();
      con.close();
     }catch(Exception e){

      out.println(e);
     }
    }
   else
   {
   response.sendRedirect("Login.jsp");
   }

  }

}