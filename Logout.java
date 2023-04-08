import java.io.*;
import java.sql.*;
import javax.servlet.http.*;
import javax.servlet.*;

public class Logout extends HttpServlet{

public void doGet (HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
    {        
   
   PrintWriter out = response.getWriter();
   HttpSession sess=request.getSession(false);
   if(sess!=null && !sess.isNew())
   {
    sess.invalidate();
    response.sendRedirect("Login.jsp");
   }
   else if(sess==null)
   {
    response.sendRedirect("Login.jsp");
   }
}
}