package com.onlinemusicstore.servlet;

import java.io.IOException;
import java.sql.SQLException;

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

/**
 * Servlet implementation class Login
 */

@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		User user = new User();
		
		user.setUserName(request.getParameter("userName"));
		user.setPassword(request.getParameter("password"));
		
		
		IUserService iUserService = new UserServiceImpl();
		user = iUserService.loginUser(user);
		
		
		
		if(user.isValid()) {
			
			HttpSession session = request.getSession();   
			
	        System.out.println(user.getType());
	        String type = user.getType();
	        if(type.equals("admin")) {
	        	request.getSession(true).setAttribute("currentSessionUser", user);
	        	request.getRequestDispatcher("adminpanel.jsp").forward(request, response);
	        }
	        if(type.equals("user")) {
	        	request.getSession(true).setAttribute("currentSessionUser", user);
	        	request.getRequestDispatcher("index.jsp").forward(request, response);
	        }
	        
			
		
			
		}
		
		else {
			
			String errorString = "Invalid Username or Password";
			request.setAttribute("errorString", errorString);
			
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		
		
		
		
	}

}
