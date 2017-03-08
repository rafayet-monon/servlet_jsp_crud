/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServletPackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ACE
 */
public class Login extends HttpServlet {

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
       String name=request.getParameter("username");
       String pass=request.getParameter("userpassword");

       
           try
    {
    
      Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@ACE:49673:xe","system","ace");
        
      PreparedStatement ps = conn.prepareStatement("select * from tbl_employee where ename=? and password=?");

        if (name.equals("") || pass.equals("")) {
            out.println("Cannot leave username or password blank");
            
        } 
        else {
           ps.setString(1,name);
            ps.setString(2,pass); 
            ResultSet rs=ps.executeQuery();
            
            if(rs.next()){
                
               
                HttpSession session=request.getSession();  
                session.setAttribute("name",name);  
             
                String message = "Successfully Register. Please sign in to continue..";
                response.sendRedirect("EditProfile.jsp?message=" + URLEncoder.encode(message, "UTF-8"));
            }
            else{
                   String message = "Please Regiser..";
        response.sendRedirect("EditProfile.jsp?message=" + URLEncoder.encode(message, "UTF-8"));
            }
        }
        
        conn.close();

    }
    catch(SQLException s)
    {
      System.out.println("Error:"+s.getMessage());
    }

}
}
