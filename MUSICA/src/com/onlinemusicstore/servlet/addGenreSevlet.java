package com.onlinemusicstore.servlet;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.onlinemusicstore.model.Genre;
import com.onlinemusicstore.service.GenreServiceImpl;
import com.onlinemusicstore.service.GenreService;

/**
 * Servlet implementation class addGenreSevlet
 */
@WebServlet("/addGenreSevlet")
public class addGenreSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Genre Genre = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addGenreSevlet() {
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
		Genre g = new Genre();
		g.setSongName(request.getParameter("songName"));
		
		g.setSongBpm(request.getParameter("songBpm"));
		g.setSongArtist(request.getParameter("songArtist"));
		g.setSongGenre(request.getParameter("songGenre"));
		
		InputStream in = null;
		
		ServletRequest part;
		if(part != null ) {
			in = part.getInputStream();
		}
		GenreService iService = new GenreServiceImpl();
		String msg = iService.addGenre(Genre,in);
		
		if(msg.equals("success")) {
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		else {
			request.setAttribute("errorMessage", msg);
			request.getRequestDispatcher("addGenre.jsp").forward(request, response);
		}
	}

}
