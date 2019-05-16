package com.onlinemusicstore.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onlinemusicstore.model.User;
import com.onlinemusicstore.service.IUserService;
import com.onlinemusicstore.service.UserServiceImpl;
import com.onlinemusicstore.util.commonUtil;



@WebServlet("/add-user")
public class addUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public addUser() {
        super();
        // TODO Auto-generated constructor stub
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
    	RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/addUser");
		dispatcher.forward(request, response);
		
	}
    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	User user = new User();
		IUserService iUserService = new UserServiceImpl();
		String userID = commonUtil.generateUserIDs(iUserService.getUserIDs());
		
		user.setUserID(userID);
		user.setFirstName(request.getParameter("firstName"));
		user.setLastName(request.getParameter("lastName"));
		user.setGender(request.getParameter("gender"));
		user.setCountry(request.getParameter("country"));
		user.setUserName(request.getParameter("userName"));
		user.setEmail(request.getParameter("email"));
		user.setMobileNumber(request.getParameter("mobileNo"));
		user.setPassword(request.getParameter("password"));
		user.setType(request.getParameter("type"));
		
		iUserService.addUser(user);
		
		String confirmString = "User added successfully!";
		request.setAttribute("confirmString", confirmString);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/addUser.jsp");
		dispatcher.forward(request, response);
    	
    }

}
