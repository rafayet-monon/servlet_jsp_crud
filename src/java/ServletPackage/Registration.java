/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServletPackage;

import java.io.*;
import java.net.URLEncoder;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


/**
 *
 * @author ACE
 */
@WebServlet(name = "Registration", urlPatterns = {"/Registration"})
public class Registration extends HttpServlet {

  @Override
  public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
      
       try
    {
  

    Class.forName("oracle.jdbc.OracleDriver");
    }
    catch(ClassNotFoundException c)
    {
      System.out.println("Error:"+c.getMessage());
    }
       PrintWriter out=response.getWriter();
       
       String name=request.getParameter("usernamesignup");
       String pass=request.getParameter("passwordsignup");
       String city=request.getParameter("usercitysignup");
       String mobile=request.getParameter("userphnsignup");
       
           try
    {
    
      Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@ACE:49673:xe","system","ace");
        
      PreparedStatement ps = conn.prepareStatement("insert into tbl_employee values (?,?,?,?)");

        
        ps.setString(1,name);
        ps.setString(2,pass);
        ps.setString(3,city);
        ps.setString(4,mobile);
        
        int rows = ps.executeUpdate();
        
       String message = "Successfully Register. Please sign in to continue..";
        response.sendRedirect("Login.jsp?message=" + URLEncoder.encode(message, "UTF-8"));
        
        conn.close();

    }
    catch(SQLException s)
    {
      System.out.println("Error:"+s.getMessage());
    }

      
  }


}
