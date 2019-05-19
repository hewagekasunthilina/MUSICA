package com.onlinemusicstore.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlinemusicstore.model.User;
import com.onlinemusicstore.service.IMusicService;
import com.onlinemusicstore.service.IUserService;
import com.onlinemusicstore.service.MusicServiceImpl;
import com.onlinemusicstore.service.UserServiceImpl;

/**
 * Servlet implementation class upgateGane
 */
@WebServlet("/update-user")
public class UpdateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	
    public UpdateUser() {
        super();
       
    }

	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	
    	RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/updateUser.jsp");
		dispatcher.forward(request, response);
		
		
		
		
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		User user = new User();
		
		user.setUserID(request.getParameter("userID"));
		user.setFirstName(request.getParameter("firstName"));
		user.setLastName(request.getParameter("lastName"));
		user.setGender(request.getParameter("gender"));
		user.setCountry(request.getParameter("country"));
		user.setUserName(request.getParameter("userName"));
		user.setEmail(request.getParameter("email"));
		user.setMobileNumber(request.getParameter("mobileNo"));
		user.setPassword(request.getParameter("password"));
			
		IUserService iUserService = new UserServiceImpl();
		iUserService.updateUser(user);
		
		String confirmString = "User updated!";
		request.setAttribute("confirmString", confirmString);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/updateUser.jsp");
		dispatcher.forward(request, response);
	}

}
