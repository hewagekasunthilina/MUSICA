
package project;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class EventDAOImp implements EventDAO{

    
        static Connection con;
        static  PreparedStatement ps;
    
    @Override
    public int insertevent(Event e) {
        int status = 0;
        try{
            
                     con = MyConnectionProvider.getCon();
                    String sql = "insert into user(firstName,lastName,gender,country,userName,email,mobileNo,password) values(?,?,?,?,?,?,?,?)";
                    PreparedStatement ps = con.prepareStatement(sql);
                            
                     
                     
                    ps.setString(1, e.getFirstName());
         			ps.setString(2, e.getLastName());
         			ps.setString(3, e.getGender());
         			ps.setString(4, e.getCountry());
         			ps.setString(5, e.getUserName());
         			ps.setString(6, e.getEmail());
         			ps.setString(7, e.getMobileNo());
         			ps.setString(8, e.getPassword());
                   
                     
                     status=ps.executeUpdate();
                     con.close();
                      
            
        }
        catch(SQLException ex){
            
            System.out.print(ex);
        }
        
        
        return status;
        
        
        
       
    }

 
   
    


}

