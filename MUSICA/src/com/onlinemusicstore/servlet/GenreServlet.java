package com.onlinemusicstore.servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlinemusicstore.model.Genre;



/**
 * Servlet implementation class GenreServlet
 */
@WebServlet("/GenreServlet")
public class GenreServlet extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GenreServlet() {
        super();
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

		
		String button = request.getParameter("button");
		
		Genre gen = new Genre();
		
		String out="";
		
		if(button.equals("edm"))
		{
			out = gen.getAllGenre("edm");
			
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/viewGenre.jsp");
			
			request.setAttribute("value", out);
		
			dispatcher.forward(request, response);
			
		}
		else if(button.equals("hiphop")){
			out = gen.getAllGenre("hiphop");
			
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/viewGenre.jsp");
			
			request.setAttribute("value", out);
		
			dispatcher.forward(request, response);
		}
		else if(button.equals("rnb")){
			out = gen.getAllGenre("rnb");
			
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/viewGenre.jsp");
			
			request.setAttribute("value", out);
		
			dispatcher.forward(request, response);
		}
		else if(button.equals("rap")){
			out = gen.getAllGenre("rap");
			
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/viewGenre.jsp");
			
			request.setAttribute("value", out);
		
			dispatcher.forward(request, response);
		}
		else if(button.equals("cm")){
			out = gen.getAllGenre("cm");
			
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/viewGenre.jsp");
			
			request.setAttribute("value", out);
		
			dispatcher.forward(request, response);
		}
		
		else if(button.equals("jazz")){
			out = gen.getAllGenre("jazz");
			
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/viewGenre.jsp");
			
			request.setAttribute("value", out);
		
			dispatcher.forward(request, response);
		}
		
		else {
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Genre.jsp");
			request.setAttribute("value", out);
			
			dispatcher.forward(request, response);
		}
		}


}
