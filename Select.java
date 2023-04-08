import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;


public class Select extends HttpServlet {

  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
{
    PrintWriter out = response.getWriter();

	HttpSession sess = request.getSession(false);
	String Identity= (String)sess.getAttribute("Identity");
	if(!Identity.equals("1"))
{

	String Medicine_Name =request.getParameter("Medicine_Name");
	


    try{
    Class.forName("com.mysql.jdbc.Driver");
    String url = "jdbc:mysql://localhost:3307/pharmadb";
    Connection con =DriverManager.getConnection(url,"root","root");
    Statement st =con.createStatement();
    
     String query="Select * from medicine where Medicine_Name= '" + Medicine_Name+"'";

   
     ResultSet rs = st.executeQuery( query );


   
     if(rs.next()){
	
    	
        String Price =rs.getString("Price");
         String query1="Insert into medicart(Medicine_Name,Price) values('" +Medicine_Name+"','"+Price+"')";
         int rs1 = st.executeUpdate( query1 );
         response.sendRedirect("User.jsp");
	  }
     
     else{
    	 out.println("<h1>Medicine not Selected</h1>");
          }


          st.close();
          con.close();

    }catch(Exception e){

      out.println(e);
    }
}
else
{
response.sendRedirect("Login.html");
}
}

}