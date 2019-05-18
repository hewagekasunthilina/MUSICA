package com.onlinemusicstore.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlinemusicstore.model.User;
import com.onlinemusicstore.service.IUserService;
import com.onlinemusicstore.service.UserServiceImpl;



@WebServlet("/remove-user")
public class RemoveUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public RemoveUser() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/removeUser.jsp");
		dispatcher.forward(request, response);

	}

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		User user = new User();
		
		user.setFirstName(request.getParameter("firstName"));
		user.setUserID(request.getParameter("userID"));
		
		IUserService iUserService = new UserServiceImpl();
		iUserService.removeUser(user);
	
		
		String confirmString = "User removed!";
		request.setAttribute("confirmString", confirmString);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/removeUser.jsp");
		dispatcher.forward(request, response);
		
	}

}
