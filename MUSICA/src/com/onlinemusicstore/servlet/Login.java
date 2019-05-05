package com.onlinemusicstore.servlet;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onlinemusicstore.model.User;
import com.onlinemusicstore.service.IUserService;
import com.onlinemusicstore.service.UserServiceImpl;

import java.io.IOException;

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		HttpSession session = request.getSession();   
		session.invalidate();
        
       
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		User user = new User();
		
		user.setFirstName(request.getParameter("userName"));
		user.setPassword(request.getParameter("password"));
		
		
		IUserService iUserService = new UserServiceImpl();
		user = iUserService.loginUser(user);
		
		String type = user.getType();
		
		 RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/adminpanel.jsp");
			dispatcher.forward(request, response);
		
		if(user.isValid()) {
			
			HttpSession session = request.getSession();   
	        session.setAttribute("currentSessionUser", user);
	        session.setAttribute("type", type);
	        
			
	        request.getRequestDispatcher("index.jsp").forward(request, response);
			
		}
		
		else {
			
			String errorString = "Invalid Username or Password";
			request.setAttribute("errorString", errorString);
			
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		
		
		
		
	}

}


