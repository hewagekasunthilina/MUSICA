package com.onlinemusicstore.servlet;
package com.onlinemusicstore.conn;
import java.io.IOException; 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class Signup
 */
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Signup() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String firstName = request.getParameter("firstname");
			String lastName = request.getParameter("lastname");
			String gender = request.getParameter("gender");
			String country = request.getParameter("country");
			String userName = request.getParameter("userName");
			String email = request.getParameter("email");
			String mobileNo = request.getParameter("mobilenumber");
			String password = request.getParameter("password");
			String sql ="insert into user(firstName,lastName,gender,country,userName,email,mobileNo,password) values(?,?,?,?,?,?,?,?)";
			
			
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, firstName);
			ps.setString(2, lastName);
			ps.setString(3, gender);
			ps.setString(4, country);
			ps.setString(5, userName);
			ps.setString(6, email);
			ps.setString(7, mobileNo);
			ps.setString(8, password);
			ps.executeUpdate();
			PrintWriter out = response.getWriter();
			out.println("You have succesfully registered");		
		} 
		
		catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
