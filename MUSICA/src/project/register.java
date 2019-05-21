package project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "register", urlPatterns = {"/register"})
public class register extends HttpServlet {

    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
            
               
            
            try {
                
                        EventDAO ed = new EventDAOImp(); 
                                
                        String successMessage ="";
                
                        String submitType = request.getParameter("submit");
                    
                       if(submitType.equalsIgnoreCase("submit")){
                        
                       Event e = new Event();
                       
                       e.setFirstName(request.getParameter("firstName"));
                       e.setLastName(request.getParameter("lastName"));
                       e.setGender(request.getParameter("gender"));
                       e.setCountry(request.getParameter("country"));
                       e.setUserName(request.getParameter("userName"));
                       e.setEmail(request.getParameter("email"));
                       e.setMobileNo(request.getParameter("mobileNo"));
                       e.setPassword(request.getParameter("password"));
                       
                                         
                       int insertevent=ed.insertevent(e);
                       if (insertevent > 0) {
                           request.setAttribute("successMessage","Registration is successfull");
                            request.getRequestDispatcher("index.jsp").forward(request, response);
                        }else{
                           
                           request.setAttribute("successMessage","Registration is unsuccessfull");
                           request.getRequestDispatcher("index.jsp").forward(request, response);
                       }
                        
                    }
                
            } catch (Exception ex) {
                Logger.getLogger(register.class.getName()).log(Level.SEVERE, null, ex);
            }
        

        
    }

    
}
